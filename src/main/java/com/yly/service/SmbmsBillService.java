package com.yly.service;

import java.util.List;


import com.yly.entity.SmbmsBill;

public interface SmbmsBillService {
	/**
	 * ≤È—Ø
	 * 
	 * @param productName
	 * @param providerId
	 * @param queryIsPayment
	 * @return
	 */
	List<SmbmsBill> getAllSmbmsBill(String productName, Integer providerId,
			Integer queryIsPayment);

}
