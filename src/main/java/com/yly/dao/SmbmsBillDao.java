package com.yly.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yly.entity.SmbmsBill;

public interface SmbmsBillDao {
	/**
	 * ��ѯ
	 * 
	 * @param productName
	 * @param providerId
	 * @param queryIsPayment
	 * @return
	 */
	List<SmbmsBill> getAllSmbmsBill(@Param("productName") String productName,
			@Param("providerId") Integer providerId,
			@Param("queryIsPayment") Integer queryIsPayment);

}
