package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;



@Controller
public class Mycontroller {

    private final SpringBootSampleProject2Application springBootSampleProject2Application;

    Mycontroller(SpringBootSampleProject2Application springBootSampleProject2Application) {
        this.springBootSampleProject2Application = springBootSampleProject2Application;
    }

	@Autowired
    StudentService ss;
    
    @GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
//	@GetMapping("/viewdata")
//	public String viewdata() {
//		return "viewdata";
//	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/saveform")
	public String saveform(@ModelAttribute Student s) {
		
		ss.registration(s);
		
		return "redirect:/viewdata";
	}
	
	@GetMapping("/viewdata")
	public String view(Model m) {
		List<Student> d = ss.getallstudent();
		m.addAttribute("Student",d);
		return "viewdata";
	}
	
	@GetMapping("deletestudent/{id}")
	public String delete(@PathVariable Long id) {
		ss.deletestudent(id);
		return "redirect:/viewdata";
		
	}
	

	
	@GetMapping("/profileedit/{id}")
	public String profileedit(@PathVariable Long id,Model m) {
		Student s  = ss.profileedit(id);
		m.addAttribute("Student",s);
		
		return"profiledit";
	}
	
	@PostMapping("/profileedit")
	public String profiledit(@ModelAttribute Student s) {
		
		ss.registration(s);
		
		return "redirect:/viewdata";
	}
	
	
	
	@PostMapping("/logincheck")
	public String logincheck(@RequestParam String email,@RequestParam String password,HttpSession session) {
		try {
			Student s = ss.logincheck(email,password);
			session.setAttribute("user", s);
			return "redirect:/dashboard";
		}catch(Exception e) {
			System.out.println(e);
			return "redirect:/login";
		}
	}
	
	@GetMapping("/dashboard")
	public String Dashboard(HttpSession session,Model m) {
		Student s = (Student) session.getAttribute("user");
		m.addAttribute("user",s);
		
		if(s == null) {
			return "redirect:/login";
		}
		return "dashboard";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/login";
	}
}
