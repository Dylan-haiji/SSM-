package com.ssm.service;

import java.util.List;
import java.util.Map;

import com.ssm.pojo.ShopPrice;


public interface ShopPriceService {

	@SuppressWarnings("rawtypes")
	void saveMyOrder(Map map);

	List<ShopPrice> selectshopPrice(ShopPrice shopPrice);

	void deleteShopById(int id);
	
}