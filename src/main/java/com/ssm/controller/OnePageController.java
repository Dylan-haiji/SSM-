package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/onePage/")
/**
 * 
 * @ClassName: OnePageController  
 * @Description:  首页
 * @author yang hai ji
 * @date 2018年5月11日
 */
public class OnePageController {
	
	@RequestMapping("logoPage")
	public String logoPage(){
		return "logoPage";
	}
}
