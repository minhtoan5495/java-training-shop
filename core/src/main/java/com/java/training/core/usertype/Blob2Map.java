package com.java.training.core.usertype;

import org.hibernate.HibernateException;

import java.util.HashMap;
import java.util.Map;

public class Blob2Map extends Blob2Java<Map> {

 
    public Blob2Map() {
        super(Map.class);
    }

    /* (non-Javadoc)
     * @see com.github.duychuongvn.core.dao.usertype.Blob2Java#deepCopy(java.lang.Object)
     */
    @Override
    public Object deepCopy(Object value) throws HibernateException {
        if (value == null)
            return null;

        Map originalValue = (Map) value;
        Map deepCopiedValue = new HashMap<>();
        deepCopiedValue.putAll(originalValue);

        return deepCopiedValue;
    }

}
