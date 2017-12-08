package com.yly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yly.dao.SmbmsBillDao;
import com.yly.entity.SmbmsBill;
import com.yly.service.SmbmsBillService;
@Service
public class SmbmsBillServiceImpl implements SmbmsBillService {
	@Autowired
	private SmbmsBillDao dao;
	
	public List<SmbmsBill> getAllSmbmsBill(String productName,
			Integer providerId, Integer queryIsPayment) {
		// TODO Auto-generated method stub
		return dao.getAllSmbmsBill(productName, providerId, queryIsPayment);
	}

}
