package com.spring.test.dao;
 
import java.util.List;
import java.util.Map;

import com.spring.test.model.Data;
import com.spring.test.model.Login;
 
public interface LoginDao {
     
    List<Login> getLoginList();
    
    public List getList(Map<String, Object> paramMap);
 
    public int writeProc(Map<String, Object> paramMap);
}