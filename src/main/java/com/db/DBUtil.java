package com.db;

import com.bean.Emp;

import java.util.HashMap;
import java.util.Map;

public class DBUtil {
    public static Map<String, Emp> map=new HashMap<String, Emp>();
    static {
        map.put("101",new Emp("101","AA","1234","AA@immoc.com"));
        map.put("102",new Emp("102","BB","1234","BB@immoc.com"));
        map.put("103",new Emp("103","CC","1234","CC@immoc.com"));
        map.put("104",new Emp("104","DD","1234","DD@immoc.com"));
    }
public  static boolean selectEmpAccountAndPassword(Emp emp)
{
    boolean flag=false;
    for (String key:map.keySet()){
        Emp e =map.get(key);
        if (emp.getAccount().equals(e.getAccount())&&emp.getPassword().equals(e.getPassword()))
        {
            flag=true;
        }
        break;
    }
    return flag;
}

}
