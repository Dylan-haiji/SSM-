package com.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ShopMapper;
import com.ssm.pojo.Shop;
import com.ssm.service.ShopService;
@Service
public class ShopServiceImpl implements ShopService{
	
	@Autowired
	private ShopMapper shopMappper;
	@Override
	public List<Shop> findShop(Shop shop) {
		return shopMappper.findShop(shop);
	}
	
}
