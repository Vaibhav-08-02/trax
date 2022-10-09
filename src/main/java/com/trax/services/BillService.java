package com.trax.services;

import java.util.List;

import com.trax.entities.Bill;

public interface BillService {

	public void saveBill(Bill bill);

	public List<Bill> getAllBills();

	public Bill findBillById(long id);

}
