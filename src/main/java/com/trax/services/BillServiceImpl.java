package com.trax.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trax.entities.Bill;
import com.trax.repositories.BillRepository;

@Service
public class BillServiceImpl implements BillService {

	@Autowired
	private BillRepository billRepo;
	
	@Override
	public void saveBill(Bill bill) {
	billRepo.save(bill);	
		
	}

	@Override
	public List<Bill> getAllBills() {
		List<Bill> bills = billRepo.findAll();
		return bills;
	}

	@Override
	public Bill findBillById(long id) {
		Optional<Bill> findById = billRepo.findById(id);
		Bill bill = findById.get();
		return bill;
	}

}
