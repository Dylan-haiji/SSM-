package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.Order;

public interface OrderMapper {

	List<Order> selectOrder(Order order);

	void addGetOrder(Order order);

	int deleteOrderById(int id);

	Order selectUpOrderById(String id);

	int updateGetOrder(Order order);

}
