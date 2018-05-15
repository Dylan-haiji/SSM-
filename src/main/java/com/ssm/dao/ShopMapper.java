package com.ssm.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ssm.pojo.Shop;

@Component
public interface ShopMapper {

	public List<Shop> findShop(Shop shop);

}
