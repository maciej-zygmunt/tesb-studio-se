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
package org.talend.camel.designer.migration;

import java.util.List;

import org.talend.designer.core.model.utils.emf.talendfile.ElementParameterType;
import org.talend.designer.core.model.utils.emf.talendfile.NodeType;
import org.talend.designer.core.model.utils.emf.talendfile.TalendFileFactory;

/**
 * UtilTool to handle NodeType.
 */
public class UtilTool {

    public static ElementParameterType findParameterType(NodeType node, String paramName) {
        for (Object param : node.getElementParameter()) {
            ElementParameterType paramType = (ElementParameterType) param;
            if(paramType.getName().equals(paramName)) {
                return paramType;
            }
        }
        return null;
    }

    public static String getParameterValue(NodeType currentNode, String paramName) {
        ElementParameterType param = findParameterType(currentNode,paramName);
        if(param == null) {
            return null;
        }
        return param.getValue();
    }

    /**
     * Replace param sub sequence.
     *
     * @return true, if rename value sub string
     */
    public static boolean replaceValueSubSequence(ElementParameterType param, CharSequence oldSeq, CharSequence newSeq) {
        String oldValue = param.getValue();
        if(!oldValue.contains(oldSeq)) {
            return false;
        }
        String newValue = oldValue.replace(oldSeq, newSeq);
        param.setValue(newValue);
        return true;
    }

    @SuppressWarnings("unchecked")
    public static boolean addParameterType(NodeType node, ElementParameterType param) {
        return node.getElementParameter().add(param);
    }

    public static boolean removeParameterType(NodeType node, ElementParameterType param) {
        return node.getElementParameter().remove(param);
    }

    public static ElementParameterType createParameterType(String field, String name, String value) {
        return createParameterType(field, name, value, null);
    }

    @SuppressWarnings("unchecked")
    public static ElementParameterType createParameterType(String field, String name, String value, List<?> elementParameterTypes) {
        ElementParameterType paramType = TalendFileFactory.eINSTANCE.createElementParameterType();
        paramType.setField(field);
        paramType.setName(name);
        paramType.setValue(value);
        if (elementParameterTypes != null) {
            paramType.getElementValue().addAll(elementParameterTypes);
        }
        return paramType;
    }

    public static void addParameterType(NodeType node, String field, String name, String value, List<?> elementParameterTypes) {
        ElementParameterType paramType = createParameterType(field, name, value, elementParameterTypes);
        addParameterType(node, paramType);
    }

    public static void addParameterType(NodeType node, String field, String name, String value) {
        addParameterType(node, field, name, value, null);
    }
}
