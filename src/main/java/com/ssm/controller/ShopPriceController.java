package com.ssm.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.ShopPrice;
import com.ssm.service.ShopPriceService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/shopPrice/")
/**
 * 
 * @ClassName: ShopPriceController  
 * @Description: 订单
 * @author yang hai ji
 * @date 2018年5月11日
 */
public class ShopPriceController {
	@Autowired
	private ShopPriceService shopPriceService;
	
	@RequestMapping("shopPricePage")
	public String shopPricePage(){
		return "shopPricePage";
	}
	
	/**
	 * @Title: saveMyOrder  
	 * @Description: 	商品价格计算
	 * @param @param req
	 * @param @param res
	 * @param @param shop
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping("saveMyOrder")
	@ResponseBody
	public void saveMyOrder(HttpServletRequest req,HttpServletResponse res,ShopPrice shopPrice)throws Exception{
		//生成订单号
		int first = new Random(10).nextInt(8) + 1;
        System.out.println(first);
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if (hashCodeV < 0) {//有可能是负数
            hashCodeV = -hashCodeV;
        }
        // 0 代表前面补充0
        // 4 代表长度为4
        // d 代表参数为正数型
        String uid =  first + String.format("%015d", hashCodeV);
        System.out.println(uid);
        Map map = new HashMap();
        map.put("uid", uid);
        map.put("amont", req.getParameter("amont"));
		shopPriceService.saveMyOrder(map);
		JSONArray jsonArr = JSONArray.fromObject(shopPrice);
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	
	/**
	 * 
	 * @Title: selectOrder  
	 * @Description: 	查询我的订单
	 * @param @param req
	 * @param @param res
	 * @param @param shopPrice
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@RequestMapping("selectshopPrice")
	@ResponseBody
	public void selectOrder(HttpServletRequest req,HttpServletResponse res,ShopPrice shopPrice)throws Exception{
		List<ShopPrice> user = 
				shopPriceService.selectshopPrice(shopPrice);
		JSONArray jsonArr = JSONArray.fromObject(user);
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	
	/**
	 * 
	 * @Title: deleteShopById  
	 * @Description: 	删除我的订单
	 * @param @param req
	 * @param @param res
	 * @param @param shopPrice
	 * @param @throws Exception    参数  
	 * @return void    返回类型  
	 * @throws
	 */
	@RequestMapping("deleteShopById")
	@ResponseBody
	public void deleteShopById(HttpServletRequest req,HttpServletResponse res,ShopPrice shopPrice)throws Exception{
		shopPriceService.deleteShopById(shopPrice.getId());
		JSONArray jsonArr = JSONArray.fromObject(shopPrice.getId());
		res.setCharacterEncoding("utf-8");
		PrintWriter writer = res.getWriter();
		writer.write(jsonArr.toString());
		writer.close();
	}
	
}
