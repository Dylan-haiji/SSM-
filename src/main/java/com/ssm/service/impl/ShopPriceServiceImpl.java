package com.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ShopPriceMapper;
import com.ssm.pojo.ShopPrice;
import com.ssm.service.ShopPriceService;

@Service
public class ShopPriceServiceImpl implements ShopPriceService{

	@Autowired
	private ShopPriceMapper shopPriceMapper;
	
	@SuppressWarnings("rawtypes")
	@Override
	public void saveMyOrder(Map map) {
		shopPriceMapper.saveMyOrder(map);
	}

	@Override
	public List<ShopPrice> selectshopPrice(ShopPrice shopPrice) {
		return shopPriceMapper.selectshopPrice(shopPrice);
	}

	@Override
	public void deleteShopById(int id) {
		shopPriceMapper.deleteShopById(id);
	}

}
