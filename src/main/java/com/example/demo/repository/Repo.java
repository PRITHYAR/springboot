package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Student;

public interface Repo extends JpaRepository<Student,Integer>{
	
	    Student findByUsernameAndPwd(String username, String pwd);
	    Student findByUsername (String username);
}
