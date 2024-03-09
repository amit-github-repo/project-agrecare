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
import java.time.LocalDateTime;

import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;

import java.io.InputStream;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.web.bind.annotation.ModelAttribute;


import model.User;

import java.util.*;

@SpringBootApplication
@Controller
public class AnonymousController {


	@GetMapping("/index")
	public String index(){
		return "AnonymousJsp/index";
	}
	@GetMapping("/login")
	public String login(){
		return "AnonymousJsp/login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "AnonymousJsp/index";
	}

	@GetMapping("/Register-User")
	public String registerUser(){
		return "AnonymousJsp/registerUser";
	}

	@GetMapping("/Crop-Details")
	public String cropDetails(){
		return "AnonymousJsp/cropDetails";
	}

	@GetMapping("/Tomato-plant-details")
	public String tomatoPlantDetails(){
		return "AnonymousJsp/tomatoPlantDetails";
	}

	@GetMapping("/Potato-plant-details")
	public String potatoPlantDetails(){
		return "AnonymousJsp/potatoPlantDetails";
	}

	@GetMapping("/Onion-plant-details")
	public String onionPlantDetails(){
		return "AnonymousJsp/onionPlantDetails";
	}

	@GetMapping("/Cabbage-plant-details")
	public String cabbagePlantDetails(){
		return "AnonymousJsp/cabbagePlantDetails";
	}
	@GetMapping("/Marrigolds-plant-details")
	public String marrigoldPlantDetails(){
		return "AnonymousJsp/marrigoldPlantDetails";
	}

	@GetMapping("/practice")
	public String practice(){
		return "practice";
	}

	@Autowired
	JdbcTemplate jdbc;
	@PostMapping("/login_user")
	public String login_user( @RequestParam("login_user_id") String login_user_id,
							@RequestParam("login_user_password") String login_user_password,
							@RequestParam("org_captcha") String org_captcha,
							@RequestParam("user_captcha") String user_captcha,
							Model model,
							HttpSession session ){
		String sql = "select * from user_master where email='"+login_user_id+"' and password='"+login_user_password+"'";
		List<Map<String,Object>> usermaster = jdbc.queryForList(sql);

		//System.out.println(org_captcha+" "+user_captcha);

		if (org_captcha.equals(user_captcha)) {
			if (usermaster.isEmpty()) {
				model.addAttribute("sms","Invalid User.");
				return "AnonymousJsp/login";
			}else{
				String status = String.valueOf(usermaster.get(0).get("status"));
				String role = String.valueOf(usermaster.get(0).get("role"));
				session.setAttribute("email",login_user_id);

				if("farmer".equals(role)){
					return "redirect:/farmerDashboard";
				}else if("doctor".equals(role)){
					return "redirect:/doctorDashboard";
				}else if("seller".equals(role)){
					return "redirect:/sellerDashboard";
				}else if("admin".equals(role)){
					return "redirect:/adminDashboard";
				}
			}
		}else{
			model.addAttribute("sms","Invalid Captcha.");
			return "AnonymousJsp/login";
		}
		return "AnonymousJsp/login";
	}

	@PostMapping("/registerUserData")
	public String registerUserData( @RequestParam("user_name") String user_name,
									@RequestParam("user_id") String user_id,
									@RequestParam("user_password") String user_password,
									@RequestParam("user_phone_no") String user_phone_no,
									@RequestParam("user_dob") String user_dob,
									@RequestParam("gender") String gender,
									@RequestParam("role") String role,
									@RequestParam("user_address") String user_address,
									@RequestParam("user_country") String user_country,
									@RequestParam("user_pin_code") String user_pin_code,
									Model model ){
		String sql = "INSERT INTO `user_details` ( `user_name`, `user_id`, `user_password`, `user_phone_no`, `user_dob`, `gender`, `role`, `user_address`, `user_country`, `user_pin_code`) VALUES ( ?,?,?,?,?,?,?,?,?,?);";
		jdbc.update(sql,user_name,user_id,user_password,user_phone_no,user_dob,gender,role,user_address,user_country,user_pin_code);
		
		String sql1 = "INSERT INTO `user_master` ( `name`, `email`, `password`, `role`) VALUES (?,?,?,?);";
		jdbc.update(sql1,user_name,user_id,user_password,role);

		String sql2 = "INSERT INTO `coin_master` (`email`, `credit_coin`, `debit_coin`) VALUES (?,0,0);";
		jdbc.update(sql2,user_id);

		model.addAttribute("sms","Register Success.");
		//System.out.println("done");
		return "AnonymousJsp/registerUser";
	}

	@GetMapping("/Change-Pass")
	public String changePassByOTP(){
		return "AnonymousJsp/changePassByOTP";
	}

	@PostMapping("/change_password")
	public String change_password(@RequestParam("email") String email,
								@RequestParam("new_pass") String new_pass,
								Model model){
		String sql = "update user_master set password=? where email=?";
		jdbc.update(sql,new_pass,email);
		return "Success";
	}

}
