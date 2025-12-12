package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {
	@Autowired
	StudentRepo sr;
	
	public void registration(Student s) {
		sr.save(s); // insert into
		
	}
	
	public List<Student> getallstudent(){
		return sr.findAll(); //select * from student
	}
	
	public void deletestudent (Long id) {
		sr.deleteById(id);
	}
	
	public Student profileedit(Long id) {
		return sr.findById(id).orElse(null);
	}
	
	public Student logincheck(String email, String password) {
		Student s = sr.findByEmail(email).orElseThrow(()->new RuntimeException("Email not found")); 
		
		if(!s.getPassword().equals(password)) {
			throw new RuntimeException("Password not found");
		}
		
		return s ;
	}
}
