package com.ssm.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.ssm.pojo.ShopPrice;


@Component
public interface ShopPriceMapper {


	@SuppressWarnings("rawtypes")
	public void saveMyOrder(Map map);

	public List<ShopPrice> selectshopPrice(ShopPrice shopPrice);

	public void deleteShopById(int id);

}
