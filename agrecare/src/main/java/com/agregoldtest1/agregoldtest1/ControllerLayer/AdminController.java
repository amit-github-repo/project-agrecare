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
public class AdminController {
	
	//Admin Controller

	@Autowired
	JdbcTemplate jdbc;
	@GetMapping("/adminDashboard")
	public String adminDashboard(){
		return "AdminJsp/adminDashboard";
	}

	@GetMapping("/Manage-User")
	public String manageUser(Model model){
		//System.out.println("userPage call..");
		String sql = "select * from user_master where role != 'admin'";
		List<Map<String,Object>> usermaster = jdbc.queryForList(sql);
		model.addAttribute("usermaster",usermaster);
		return "AdminJsp/manageUser";
	}
	
	@PostMapping("/update_user")
	public String update_user(  @RequestParam("email") String email,
								@RequestParam("name") String name,
								@RequestParam("role") String role,
								@RequestParam("status") String status,
								Model model){
		String sql = "update user_master set name=? , role=? , status=? where email=?";
		jdbc.update(sql,name,role,status,email);
		return manageUser(model);
	}

	@PostMapping("/delete_user")
	public String delete_user(  @RequestParam("email") String email, Model model){
		String sql = "delete from user_master where email=?";
		jdbc.update(sql,email);
		String sql1 = "delete from user_details where user_id=?";
		jdbc.update(sql1,email);
		return manageUser(model);
	}

	@GetMapping("/allowFarmingEquipment")
	public String allowFarmingEquipment(Model model){
		String sql = "select * from equipment_master where allow='NO'";
		List<Map<String,Object>> equipment_master = jdbc.queryForList(sql);
		model.addAttribute("equipment_master",equipment_master);
		return "AdminJsp/allowFarmingEquipment";
	}

	@PostMapping("/verify_shop_equipments")
	public String verify_shop_equipments( 	@RequestParam("sl_no") String sl_no,
											Model model){
		String sql = "update equipment_master set allow='YES' where sl_no=?";
		jdbc.update(sql,sl_no);
		return allowFarmingEquipment(model);
	}


	@GetMapping("/Allow-Farmer-Request")
	public String allowFarmerRequest(Model model){
		String sql = "select * from equipment_request_master where allow='NO'";
		List<Map<String,Object>> equipment_request_master = jdbc.queryForList(sql);
		model.addAttribute("equipment_request_master",equipment_request_master);
		return "AdminJsp/allowFarmerRequest";
	}

	@PostMapping("/verify_farmer_request")
	public String verify_farmer_request(@RequestParam("sl_no") String sl_no,
										Model model){
		String sql = "update equipment_request_master set allow='YES' where sl_no=?";
		jdbc.update(sql,sl_no);
		return allowFarmerRequest(model);
	}

	//Admin Controller

}
