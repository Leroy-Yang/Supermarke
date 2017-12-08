package com.yly.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yly.entity.SmbmsBill;
import com.yly.entity.SmbmsProvider;
import com.yly.service.SmbmsBillService;
import com.yly.service.SmbmsProviderService;

@Controller
@RequestMapping("jsp")
public class BillController {
	@Autowired
	private SmbmsBillService billService;
	@Autowired
	private SmbmsProviderService providerService;
	
	@RequestMapping("bill.do")
	public String getBillList(String queryProductName, Integer queryProviderId,
			Integer queryIsPayment, Map<String, Object> model) {
		List<SmbmsBill> bill = billService.getAllSmbmsBill(queryProductName, queryProviderId, queryIsPayment);
		List<SmbmsProvider> provider = providerService.getAllSmbmsProviders("", "",1,5);
		model.put("billList", bill);
		model.put("providerList", provider);
		model.put("queryProviderId", queryProviderId);
		model.put("queryProductName", queryProductName);
		model.put("queryIsPayment", queryIsPayment);
		return "jsp/billlist";
	}
}
