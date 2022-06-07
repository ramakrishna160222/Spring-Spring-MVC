package com.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.student.*;

@Controller
public class LoginController {
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	
	
	@RequestMapping(value="/loginprocess",method=RequestMethod.POST)
	public String submit(HttpServletRequest request,HttpServletResponse res,Model model) {
			String name=request.getParameter("name");
			String pass=request.getParameter("pass");
			if(name.equals("krishna") && pass.equals("admin")) {
				model.addAttribute("msg",name);
				return "home";
			} else {
				model.addAttribute("msg","Invalid Details");
				
				return "redirect:/";
			}
	}
}
