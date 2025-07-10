package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Student;
import com.example.demo.model.StudentDetail;

public interface Repo1 extends JpaRepository <StudentDetail,Long> {
	StudentDetail findByStudent(Student student);
	void deleteByStudent(Student student);
}
