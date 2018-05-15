package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Order;

public interface OrderService {

	List<Order> selectOrder(Order order);

	void addGetOrder(Order order);

	int deleteOrderById(int id);


	int updateGetOrder(Order order);

	Order selectUpOrderById(String id);

}
