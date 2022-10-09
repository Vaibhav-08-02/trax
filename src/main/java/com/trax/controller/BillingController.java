package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Bill;
import com.trax.entities.Contact;
import com.trax.services.BillService;
import com.trax.services.ContactService;

@Controller
public class BillingController {
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private BillService billService;
	
	@RequestMapping("/billing")
	public String billing(@RequestParam ("id") long id, ModelMap model) {
		Contact contact = contactService.findContactById(id);
		model.addAttribute("contact", contact);
		return "create_bill";
	}
	
	@RequestMapping("/saveBill")
	public String saveBill(@ModelAttribute Bill bill, ModelMap model) {
		billService.saveBill(bill);
		model.addAttribute("bill_msg", "Bill is Saved!");
		return "create_bill";
	}
	
	@RequestMapping("/listAllBills")
	public String listAllBills(ModelMap model) {
		List<Bill> bills = billService.getAllBills();
		model.addAttribute("bills", bills);
		return "search_bills";
	}
	
	@RequestMapping("/showBill")
	public String findBillById(@RequestParam ("id") long id, ModelMap model) {
		Bill bill = billService.findBillById(id);
		model.addAttribute("bill", bill);
		return "bill_info";
	}
}
