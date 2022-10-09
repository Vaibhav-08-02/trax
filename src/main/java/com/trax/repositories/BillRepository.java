package com.trax.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.trax.entities.Bill;

public interface BillRepository extends JpaRepository<Bill, Long> {

}
