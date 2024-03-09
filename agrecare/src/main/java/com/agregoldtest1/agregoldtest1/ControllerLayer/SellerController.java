package com.agregoldtest1.agregoldtest1.ControllerLayer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.stereotype.Controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;
import org.springframework.ui.Model;

import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;

import java.io.InputStream;

import org.springframework.web.bind.annotation.ModelAttribute;


import model.User;

import java.util.*;

@SpringBootApplication
@Controller
public class SellerController {

	//Seller Controller
	
	@Autowired
	JdbcTemplate jdbc;
	@GetMapping("/sellerDashboard")
	public String sellerDashboard(){
		return "SellerJsp/sellerDashboard";
	}

	@GetMapping("/addEquipment")
	public String addEquipment(){
		return "SellerJsp/addEquipment";
	}

	@PostMapping("/addFarmingEquipment")
	public String addFarmingEquipment( 	@RequestParam("user_id") String user_id,
										@RequestParam("store_address") String store_address,
										@RequestParam("phone_no") String phone_no,
										@RequestParam("caring_equipment") String caring_equipment,
										@RequestParam("ce_price") String ce_price,
										@RequestParam("planting_harvesting_equipment") String planting_harvesting_equipment,
										@RequestParam("phe_price") String phe_price,
										@RequestParam("irrigation_equipment") String irrigation_equipment,
										@RequestParam("ie_price") String ie_price,
										Model model ){
		String sql = "INSERT INTO `equipment_master` ( `user_id`, `store_address`, `phone_no`, `caring_equipment`, `ce_price`, `planting_harvesting_equipment`, `phe_price`, `irrigation_equipment`, `ie_price`) VALUES ( ?,?,?,?,?,?,?,?,?);";
		jdbc.update(sql,user_id,store_address,phone_no,caring_equipment,ce_price,planting_harvesting_equipment,phe_price,irrigation_equipment,ie_price);
		
		model.addAttribute("sms","Successfully Added.");
		//System.out.println("done");
		return "SellerJsp/addEquipment";
	}

	@GetMapping("/Farmer-Request-Notification")
	public String farmerRequestNotification(HttpSession session,
											Model model){
		String seller_email = (String)session.getAttribute("email");
		String sql = "select * from equipment_request_master where allow='YES' and requested_seller_id=?";
		List<Map<String,Object>> seller_notification = jdbc.queryForList(sql,seller_email);
		model.addAttribute("seller_notification",seller_notification);
		return "SellerJsp/farmerRequestNotification";
	}

	//Seller Controller

}
