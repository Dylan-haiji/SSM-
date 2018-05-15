package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.OrderMapper;
import com.ssm.pojo.Order;
import com.ssm.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public List<Order> selectOrder(Order order) {
		return orderMapper.selectOrder(order);
	}

	@Override
	public void addGetOrder(Order order) {
		orderMapper.addGetOrder(order);
	}

	@Override
	public int deleteOrderById(int id) {
		return orderMapper.deleteOrderById(id);
	}

	@Override
	public Order selectUpOrderById(String id) {
		return orderMapper.selectUpOrderById(id);
	}

	@Override
	public int updateGetOrder(Order order) {
		return orderMapper.updateGetOrder(order);
	}

}
