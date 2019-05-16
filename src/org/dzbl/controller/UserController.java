package org.dzbl.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.dzbl.entity.Admin;
import org.dzbl.entity.User;
import org.dzbl.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String login(String username,String password, String type, HttpSession session,Model model){
		String forward= "/loginh";
		if ("1".equals(type)) {
			List<Admin> users=userService.getAdmin(username);
			Admin user = null;
			if (users.size() == 1) {
				user = users.get(0);
			}
			if(user==null || !user.getPassword().equals(password)){
				model.addAttribute("loginError","用户名或密码错误");
			}else{
				session.setAttribute("loginUser", user);
				session.setAttribute("type", "1");
				forward="redirect:/page/cms/main";
			}
		} else if ("2".equals(type)) {
			List<User> users=userService.getUser(username);
			User user = null;
			if (users.size() == 1) {
				user = users.get(0);
			}
			if(user==null || !user.getPassword().equals(password)){
				model.addAttribute("loginError","用户名或密码错误");
			}else{
				session.setAttribute("loginUser", user);
				session.setAttribute("type", "2");
				forward="redirect:/page/cms/main";
			}
		} else {
			return forward ;
		}
		return forward ;
	}
}
