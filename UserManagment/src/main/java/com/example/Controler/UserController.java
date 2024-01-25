package com.example.Controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Model.User;
import com.example.Service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String getall(Model model) {
		model.addAttribute("list",userService.getList());
		return "INDEX";
		
	}
	
	@GetMapping("reg")
	public String home2() {
		return "register";
	}
	
	@RequestMapping("registration")
	public String home() {
		return "register";
	}
	
	@PostMapping("saveData")
	public String SaveUser(User user ,Model model) {
		userService.SaveUser(user);
		
		model.addAttribute("list",userService.getList());
		 return "redirect:/";
		
	}
	
	@GetMapping("/showFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable int id, Model model) {
		User usere=userService.getUser(id);
		System.out.println(usere);
		model.addAttribute("user", usere);
		return "update_user";

	}
	
	
	@PostMapping("/update/{id}")
	public String update(@PathVariable ("id") int id,@ModelAttribute User user,Model model) {
		userService.SaveUser(user);
		model.addAttribute("list",userService.getList());
		return "redirect:/";
	}

	@GetMapping("/DeleteEmployee/{id}")
	public String deleteUser(@PathVariable ("id")int id,Model model,User user) {
	User user2=userService.getUser(id);
		userService.deleteUser(user2);
		model.addAttribute("list",userService.getList());
		return "redirect:/";
		
	}
	
}
