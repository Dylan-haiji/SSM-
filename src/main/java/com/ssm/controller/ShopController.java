package com.ssm.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.Shop;
import com.ssm.service.ShopService;

import net.sf.json.JSONArray;

/**
 * 
 * @ClassName: ShopController  
 * @Description: 购买商品 
 * @author yang hai ji
 * @date 2018年5月10日
 */
@Controller
@RequestMapping("/shop/")
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	/**
	 * 
	 * @Title: shopPage  
	 * @Description: 所以商品页面 
	 * @param @return    参数  
	 * @return String    返回类型  
	 * @throws
	 */
	@RequestMapping("shopPage")
	public String shopPage(){
		return "shopPage";
	}
	
	/**
	 * 
	 * @Title: fansPage  
	 * @Description: 单一商品详情页
	 * @param @return    参数  
	 * @return String    返回类型  
	 * @throws
	 */
	@RequestMapping("fansPage")
	public String fansPage(){
		return "fansPage";
	}
	/**
	 * @Title: findShop  
	 * @Description: 	查询商品价格
	 * @param @param req
	 * @param @param res
	 * @param @param shop
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@RequestMapping("findShop")
	@ResponseBody
	public void findShop(HttpServletRequest req,HttpServletResponse res,Shop shop)throws Exception{
		List<Shop> shopList = shopService.findShop(shop);
		JSONArray jsonArr = JSONArray.fromObject(shopList);
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	
	
	
	
}
