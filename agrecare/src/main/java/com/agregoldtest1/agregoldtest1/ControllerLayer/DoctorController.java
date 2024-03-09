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


import java.util.*;

@SpringBootApplication
@Controller
public class DoctorController {

	//doctor Controller

	@Autowired
	JdbcTemplate jdbc;
	@GetMapping("/doctorDashboard")
	public String doctorDashboard(){
		return "DoctorJsp/doctorDashboard";
	}

	@GetMapping("/Doctor-Solution")
	public String doctorSolution(Model model){
		String sql = "select * from problem_master where replay='no'";
		List<Map<String,Object>> problem_master = jdbc.queryForList(sql);
		model.addAttribute("problem_master",problem_master);
		return "DoctorJsp/doctorSolution";
	}

	@PostMapping("/add-doctor-solution")
	public String adddoctorsolution(@RequestParam("doctor_solution") String doctor_solution,
					@RequestParam("doctor_id") String doctor_id,
					@RequestParam("sl_no") String sl_no,
					Model model){
		//System.out.println(doctor_solution+" "+doctor_id+" "+sl_no);
		String sql = "update problem_master set doctor_solution=?, replay='yes' where sl_no=?";
		jdbc.update(sql,doctor_solution,sl_no);

		String sql1 = "update coin_master set credit_coin = 20 where user_id = ?";
		jdbc.update(sql1,doctor_id);

		return doctorSolution(model);
	}

	//doctor Controller

	
}