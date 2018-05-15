package com.ssm.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.Order;
import com.ssm.service.OrderService;

import net.sf.json.JSONArray;
/**
 * 
 * @ClassName: OrderController  
 * @Description: 用户详情信息
 * @author yang hai ji
 * @date 2018年5月4日
 */
@RequestMapping("/order/")
@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	/**
	 * /spring-redis/order/onePage.action
	 * @Title: toWelcomePage  
	 * @Description: 显示用户
	 * @param @return    参数  
	 * @return String    返回类型  
	 * @throws
	 */
	@RequestMapping("orderPage")
	public String toWelcomePage(){
		return "orderPage";
	}
	
	/**
	 * 
	 * @Title: orderAddPage  
	 * @Description: 添加页面
	 * @param @return    参数  
	 * @return String    返回类型  
	 * @throws
	 */
	@RequestMapping("orderAddPage")
	public String orderAddPage(){
		return "orderAddPage";
	}
	
	@RequestMapping("orderUpdatePage")
	public String orderUpdatePage(){
		return "orderUpdatePage";
	}
	
	/**
	 * 
	 * @Title: selectOrder  
	 * @Description: 查询操作  
	 * @param @param req
	 * @param @param res
	 * @param @param order
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@RequestMapping("selectOrder")
	@ResponseBody
	public void selectOrder(HttpServletRequest req,HttpServletResponse res,Order order)throws Exception{
		List<Order> user = orderService.selectOrder(order);
		JSONArray jsonArr = JSONArray.fromObject(user);
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	/**
	 * 
	 * @Title: addGetOrder  
	 * @Description: 添加人员
	 * @param @param req
	 * @param @param res
	 * @param @param order
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@RequestMapping("addGetOrder")
	@ResponseBody
	public void addGetOrder(HttpServletRequest req,HttpServletResponse res,Order order)throws Exception{
		orderService.addGetOrder(order);
		JSONArray jsonArr = JSONArray.fromObject(order);
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	
	/**
	 * 
	 * @Title: deleteOrderById  
	 * @Description: 删除人员  
	 * @param @param req
	 * @param @param res
	 * @param @param order
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@RequestMapping("deleteOrderById")
	@ResponseBody
	public void deleteOrderById(HttpServletRequest req,HttpServletResponse res,Order order)throws Exception{
		orderService.deleteOrderById(order.getId());
		JSONArray jsonArr = JSONArray.fromObject(order.getId());
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	
	/**
	 * @Title: selectUpOrderById  
	 * @Description: 	查询
	 * @param @param req
	 * @param @param res
	 * @param @param order
	 * @param @param model
	 * @param @return
	 * @param @throws Exception    参数  
	 * @return String    返回类型  
	 * @throws
	 */
	String id=null;
	
	@RequestMapping("selectUpOrderById")
	public String selectUpOrderById(HttpServletRequest req,HttpServletResponse res)throws Exception{
		id=req.getParameter("id");
		Order order = orderService.selectUpOrderById(id);
		String name = order.getName();
		String phone =order.getPhone();
		String adder =order.getAdder();
		req.setAttribute("name", name);
		req.setAttribute("phone", phone);
		req.setAttribute("adder", adder);
		
		return "orderUpdatePage";
	}
	
	/**
	 * @Title: updateGetOrder  
	 * @Description: 修改
	 * @param @param req
	 * @param @param res
	 * @param @param order
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@RequestMapping("updateGetOrder")
	@ResponseBody
	public void updateGetOrder(HttpServletRequest req,HttpServletResponse res,Order order)throws Exception{
		order.setId(Integer.valueOf(id));
		int count=orderService.updateGetOrder(order);
		JSONArray jsonArr = JSONArray.fromObject(order);
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	
	
}
