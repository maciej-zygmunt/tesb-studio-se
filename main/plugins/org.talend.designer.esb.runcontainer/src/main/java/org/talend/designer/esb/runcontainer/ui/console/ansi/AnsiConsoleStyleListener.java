// ============================================================================
//
// Copyright (C) 2006-2017 Talend Inc. - www.talend.com
//
// This source code is available under agreement available at
// %InstallDIR%\features\org.talend.rcp.branding.%PRODUCTNAME%\%PRODUCTNAME%license.txt
//
// You should have received a copy of the agreement
// along with this program; if not, write to Talend SA
// 9 rue Pages 92150 Suresnes, France
//
// ============================================================================
package org.talend.designer.esb.runcontainer.ui.console.ansi;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.LineStyleEvent;
import org.eclipse.swt.custom.LineStyleListener;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.talend.designer.esb.runcontainer.util.AnsiConsoleUtils;

public class AnsiConsoleStyleListener implements LineStyleListener {

    private AnsiConsoleAttributes lastAttributes = new AnsiConsoleAttributes();

    private AnsiConsoleAttributes currentAttributes = new AnsiConsoleAttributes();

    private final static Pattern pattern = Pattern.compile("\u001b\\[[\\d;]*[A-HJKSTfimnsu]");

    private final static char ESCAPE_SGR = 'm';

    int lastRangeEnd = 0;

    private boolean interpretCommand(List<Integer> nCommands) {
        boolean result = false;

        Iterator<Integer> iter = nCommands.iterator();
        while (iter.hasNext()) {
            int nCmd = iter.next();
            switch (nCmd) {
            case AnsiCommands.COMMAND_ATTR_RESET:
                currentAttributes.reset();
                break;

            case AnsiCommands.COMMAND_ATTR_INTENSITY_BRIGHT:
                currentAttributes.bold = true;
                break;
            case AnsiCommands.COMMAND_ATTR_INTENSITY_FAINT:
                currentAttributes.bold = false;
                break;
            case AnsiCommands.COMMAND_ATTR_INTENSITY_NORMAL:
                currentAttributes.bold = false;
                break;

            case AnsiCommands.COMMAND_ATTR_ITALIC:
                currentAttributes.italic = true;
                break;
            case AnsiCommands.COMMAND_ATTR_ITALIC_OFF:
                currentAttributes.italic = false;
                break;

            case AnsiCommands.COMMAND_ATTR_UNDERLINE:
                currentAttributes.underline = SWT.UNDERLINE_SINGLE;
                break;
            case AnsiCommands.COMMAND_ATTR_UNDERLINE_DOUBLE:
                currentAttributes.underline = SWT.UNDERLINE_DOUBLE;
                break;
            case AnsiCommands.COMMAND_ATTR_UNDERLINE_OFF:
                currentAttributes.underline = AnsiConsoleAttributes.UNDERLINE_NONE;
                break;

            case AnsiCommands.COMMAND_ATTR_CROSSOUT_ON:
                currentAttributes.strike = true;
                break;
            case AnsiCommands.COMMAND_ATTR_CROSSOUT_OFF:
                currentAttributes.strike = false;
                break;

            case AnsiCommands.COMMAND_ATTR_NEGATIVE_ON:
                currentAttributes.invert = true;
                break;
            case AnsiCommands.COMMAND_ATTR_NEGATIVE_OFF:
                currentAttributes.invert = false;
                break;

            case AnsiCommands.COMMAND_ATTR_CONCEAL_ON:
                currentAttributes.conceal = true;
                break;
            case AnsiCommands.COMMAND_ATTR_CONCEAL_OFF:
                currentAttributes.conceal = false;
                break;

            case AnsiCommands.COMMAND_ATTR_FRAMED_ON:
                currentAttributes.framed = true;
                break;
            case AnsiCommands.COMMAND_ATTR_FRAMED_OFF:
                currentAttributes.framed = false;
                break;

            case AnsiCommands.COMMAND_COLOR_FOREGROUND_RESET:
                currentAttributes.currentFgColor = null;
                break;
            case AnsiCommands.COMMAND_COLOR_BACKGROUND_RESET:
                currentAttributes.currentBgColor = null;
                break;

            case AnsiCommands.COMMAND_HICOLOR_FOREGROUND:
            case AnsiCommands.COMMAND_HICOLOR_BACKGROUND: // {esc}[48;5;{color}m
                int color = -1;
                int nMustBe2or5 = iter.hasNext() ? iter.next() : -1;
                if (nMustBe2or5 == 5) { // 256 colors
                    color = iter.hasNext() ? iter.next() : -1;
                    if (!AnsiConsoleColorPalette.isValidIndex(color))
                        color = -1;
                } else if (nMustBe2or5 == 2) { // rgb colors
                    int r = iter.hasNext() ? iter.next() : -1;
                    int g = iter.hasNext() ? iter.next() : -1;
                    int b = iter.hasNext() ? iter.next() : -1;
                    color = AnsiConsoleColorPalette.hackRgb(r, g, b);
                }
                if (color != -1) {
                    if (nCmd == AnsiCommands.COMMAND_HICOLOR_FOREGROUND)
                        currentAttributes.currentFgColor = color;
                    else
                        currentAttributes.currentBgColor = color;
                }
                break;

            case -1:
                break; // do nothing

            default:
                if (nCmd >= AnsiCommands.COMMAND_COLOR_FOREGROUND_FIRST && nCmd <= AnsiCommands.COMMAND_COLOR_FOREGROUND_LAST) // text
                                                                                                                               // color
                    currentAttributes.currentFgColor = nCmd - AnsiCommands.COMMAND_COLOR_FOREGROUND_FIRST;
                else if (nCmd >= AnsiCommands.COMMAND_COLOR_BACKGROUND_FIRST
                        && nCmd <= AnsiCommands.COMMAND_COLOR_BACKGROUND_LAST) // background
                    // color
                    currentAttributes.currentBgColor = nCmd - AnsiCommands.COMMAND_COLOR_BACKGROUND_FIRST;
                else if (nCmd >= AnsiCommands.COMMAND_HICOLOR_FOREGROUND_FIRST
                        && nCmd <= AnsiCommands.COMMAND_HICOLOR_FOREGROUND_LAST) // text
                    // color
                    currentAttributes.currentFgColor = nCmd - AnsiCommands.COMMAND_HICOLOR_FOREGROUND_FIRST
                            + AnsiCommands.COMMAND_COLOR_INTENSITY_DELTA;
                else if (nCmd >= AnsiCommands.COMMAND_HICOLOR_BACKGROUND_FIRST
                        && nCmd <= AnsiCommands.COMMAND_HICOLOR_BACKGROUND_LAST) // background
                    // color
                    currentAttributes.currentBgColor = nCmd - AnsiCommands.COMMAND_HICOLOR_BACKGROUND_FIRST
                            + AnsiCommands.COMMAND_COLOR_INTENSITY_DELTA;
            }
        }

        return result;
    }

    private void addRange(List<StyleRange> ranges, int start, int length, Color foreground, boolean isCode) {
        StyleRange range = new StyleRange(start, length, foreground, null);
        AnsiConsoleAttributes.updateRangeStyle(range, lastAttributes);
        if (isCode) {
            range.metrics = new GlyphMetrics(0, 0, 0);
        }
        ranges.add(range);
        lastRangeEnd = lastRangeEnd + range.length;
    }

    @Override
    public void lineGetStyle(LineStyleEvent event) {
        if (event == null || event.lineText == null || event.lineText.length() == 0)
            return;

        StyleRange defStyle;

        if (event.styles != null && event.styles.length > 0) {
            defStyle = (StyleRange) event.styles[0].clone();
            if (defStyle.background == null)
                defStyle.background = AnsiConsoleUtils.getDebugConsoleBgColor();
        } else {
            defStyle = new StyleRange(1, lastRangeEnd, new Color(null, AnsiConsoleColorPalette.getColor(0)), new Color(null,
                    AnsiConsoleColorPalette.getColor(15)), SWT.NORMAL);
        }

        lastRangeEnd = 0;
        List<StyleRange> ranges = new ArrayList<StyleRange>();
        String currentText = event.lineText;
        Matcher matcher = pattern.matcher(currentText);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();

            String theEscape = currentText.substring(matcher.start() + 2, matcher.end() - 1);
            char code = currentText.charAt(matcher.end() - 1);
            if (code == ESCAPE_SGR) {
                // Select Graphic Rendition (SGR) escape sequence
                List<Integer> nCommands = new ArrayList<Integer>();
                for (String cmd : theEscape.split(";")) {
                    int nCmd = AnsiConsoleUtils.tryParseInteger(cmd);
                    if (nCmd != -1)
                        nCommands.add(nCmd);
                }
                if (nCommands.isEmpty())
                    nCommands.add(0);
                interpretCommand(nCommands);
            }

            if (lastRangeEnd != start)
                addRange(ranges, event.lineOffset + lastRangeEnd, start - lastRangeEnd, defStyle.foreground, false);
            lastAttributes = currentAttributes.clone();

            addRange(ranges, event.lineOffset + start, end - start, defStyle.foreground, true);
        }
        if (lastRangeEnd != currentText.length())
            addRange(ranges, event.lineOffset + lastRangeEnd, currentText.length() - lastRangeEnd, defStyle.foreground, false);
        lastAttributes = currentAttributes.clone();

        if (!ranges.isEmpty())
            event.styles = ranges.toArray(new StyleRange[ranges.size()]);
    }
}
