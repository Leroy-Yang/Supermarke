package com.yly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yly.dao.SmbmsRoleDao;
import com.yly.entity.SmbmsRole;
import com.yly.service.SmbmsRoleService;
@Service
public class SmbmsRoleServiceImpl implements SmbmsRoleService {
	@Autowired
	private SmbmsRoleDao dao;
	
	public List<SmbmsRole> getAllSmbmsRole() {
		// TODO Auto-generated method stub
		return dao.getAllSmbmsRole();
	}

}
