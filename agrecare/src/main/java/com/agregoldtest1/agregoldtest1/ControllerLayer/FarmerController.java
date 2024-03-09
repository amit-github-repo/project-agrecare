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
public class FarmerController {
	
	//Farmer Controller

	public String upload_dir="C:\\Users\\Arjun\\Desktop\\myproject\\agregoldtest1\\src\\main\\resources\\static\\images";

	@Autowired
	JdbcTemplate jdbc;
	@GetMapping("/farmerDashboard")
	public String farmerDashboard(){
		return "FarmerJsp/farmerDashboard";
	}

	@GetMapping("/Request-for-advice")
	public String problemRequest(){
		return "FarmerJsp/problemRequest";
	}

	@PostMapping("/requestForAdvice")
	public String requestForAdvice(	@RequestParam("user_name") String user_name,
									@RequestParam("user_id") String user_id,
									@RequestParam("user_address") String user_address,
									@RequestParam("user_pics_type") String user_pics_type,
									@RequestParam("user_pics") MultipartFile user_pics,
									@RequestParam("farmer_problem") String farmer_problem,
									Model model ) throws IOException{

		Files.copy(user_pics.getInputStream(),Paths.get(upload_dir+File.separator+user_pics.getOriginalFilename()),StandardCopyOption.REPLACE_EXISTING);

		String sql = "INSERT INTO `problem_master` ( `user_name`, `user_id`, `user_address`, `user_pic_name`,`replay`, `farmer_problem`) VALUES (?,?,?,?,no,?);";
		jdbc.update(sql,user_name,user_id,user_address,user_pics.getOriginalFilename(),farmer_problem);
		model.addAttribute("sms","Problem reported successfully");
		return "FarmerJsp/problemRequest";
		
		// System.out.println(user_pics.getInputStream());
		// System.out.println(user_pics.getOriginalFilename());
	}

	@GetMapping("/equipmentRequest")
	public String equipmentRequest(Model model){
		String sql = "select * from equipment_master where allow='YES'";
		List<Map<String,Object>> equipment_master = jdbc.queryForList(sql);
		model.addAttribute("equipment_master",equipment_master);
		return "FarmerJsp/equipmentRequest";
	}

	@PostMapping("/equipment_request_to_seller")
	public String equipment_request_to_seller( 	@RequestParam("farmer_id") String farmer_id,
												@RequestParam("farmer_mob_no") String farmer_mob_no,
												@RequestParam("requested_seller_id") String requested_seller_id,
												@RequestParam("need_caring_equipment") String need_caring_equipment,
												@RequestParam("ce_equip_days") String ce_equip_days,
												@RequestParam("need_planting_harvesting_equipment") String need_planting_harvesting_equipment,
												@RequestParam("phe_equip_days") String phe_equip_days,
												@RequestParam("need_irrigation_equipment") String need_irrigation_equipment,
												@RequestParam("ie_equip_days") String ie_equip_days,
												Model model ){
		String sql = "INSERT INTO `equipment_request_master` ( `farmer_id`, `farmer_mob_no`, `requested_seller_id`, `need_caring_equipment`, `ce_equip_days`, `need_planting_harvesting_equipment`, `phe_equip_days`, `need_irrigation_equipment`, `ie_equip_days`) VALUES ( ?,?,?,?,?,?,?,?,?);";
		jdbc.update(sql,farmer_id,farmer_mob_no,requested_seller_id,need_caring_equipment,ce_equip_days,need_planting_harvesting_equipment,phe_equip_days,need_irrigation_equipment,ie_equip_days);
		model.addAttribute("sms","Successfully Added.");
		return "FarmerJsp/equipmentRequest";
	}

	//Farmer Controller


}
