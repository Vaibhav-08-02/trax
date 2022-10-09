package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Lead;
import com.trax.services.ContactService;
import com.trax.services.LeadService;

@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadService;
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/viewLSaveLeadPage")
	public String viewSaveLeadPage() {
		return "create_lead";
	}
	
	@RequestMapping(value = "/saveLead", method = RequestMethod.POST)
	public String saveLead(@ModelAttribute Lead lead, ModelMap model) {
		try {
			leadService.saveLead(lead);
			model.addAttribute("lead", lead);
		} catch (Exception e) {
			model.addAttribute("emailError", "E-mail Id already exists!");
			return "create_lead";
		}
		return "lead_info";
	}
	
	@RequestMapping("/listAllLeads")
	public String listAllLeads(ModelMap model) {
		List<Lead> leads = leadService.getAllLeads();
		model.addAttribute("leads", leads);
		return "search_leads";
	}
	
	@RequestMapping("/showLead")
	public String showLead(@RequestParam ("id") long id, ModelMap model) {
		Lead lead = leadService.findLeadById(id);
		if (lead != null) {
			model.addAttribute("lead", lead);
			return "lead_info";
		} else {
			model.addAttribute("error", "No Record Found!");
			return "error_page";
		}
		
	}
}

