package com.trax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.utilities.EmailService;

@Controller
public class EmailController {

	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/composeEmail")
	public String composeEmail(@RequestParam("email") String email, ModelMap model) {
		model.addAttribute("email", email);
		return "compose_email";
	}
	
	@RequestMapping("/sendEmail")
	public String sendEmail(@RequestParam ("to") String to, @RequestParam ("subject") String subject, @RequestParam ("body") String body, ModelMap model) {
		emailService.sendSimpleMessage(to, subject, body);
		model.addAttribute("em_msg", "E-mail is Sended!");
		return "compose_email";
	}
}
