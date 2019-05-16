package org.dzbl.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.log4j.lf5.util.DateFormatManager;
import org.dzbl.entity.LeaveMessage;
import org.dzbl.entity.MedicalRecord;
import org.dzbl.entity.News;
import org.dzbl.entity.User;
import org.dzbl.service.LeaveMessageService;
import org.dzbl.service.MedicalRecordService;
import org.dzbl.service.NewsService;
import org.dzbl.service.UserService;
import org.dzbl.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/view")
public class LogicController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private MedicalRecordService medicalRecordService;
	
	@Autowired
	private LeaveMessageService leaveMessageService;
	
	@RequestMapping("/doctorManage")
	public String doctorManage(HttpSession session,Model model,pageModel pagemodel){
		pageModel<HashMap> _pagemodel = userService.findUserList(pagemodel);
		model.addAttribute("pagemodel", _pagemodel);
		return "/cms/doctorList";
	}
	
	@RequestMapping("/newsManage")
	public String newsManage(HttpSession session,Model model,pageModel pagemodel){
		pageModel<HashMap> _pagemodel = newsService.findNewsList(pagemodel);
		model.addAttribute("pagemodel", _pagemodel);
		return "/cms/newsList";
	}
	
	@RequestMapping("/addDoctor")
	public String addDoctor(HttpSession session,Model model, User user){
		user.setCrerateTime(new Date());
		user.setIsDelete((short) 0);
		user.setType((short)2);
		userService.addUser(user);
		return "redirect:/view/doctorManage";
	}
	
	@RequestMapping("/addPatient")
	public String addPatient(HttpSession session,Model model, User user){
		user.setCrerateTime(new Date());
		user.setIsDelete((short) 0);
		user.setType((short)1);
		userService.addUser(user);
		return "redirect:/view/patientsManage";
	}
	
	@RequestMapping("/addMedicalRecord")
	public String addMedicalRecord(HttpSession session,Model model, MedicalRecord medicalRecord){
		medicalRecord.setCreateTime(new Date());
		userService.addMedicalRecord(medicalRecord);
		return "redirect:/view/medicalRecordManage";
	}
	
	@RequestMapping("/addMedicalRecordData")
	public String addMedicalRecordData(HttpSession session,Model model){
		List<User> ls = userService.findUser();
		model.addAttribute("patients", ls);
		return "cms/addMedicalRecord";
	}
	
	@RequestMapping("/addNews")
	public String addNews(HttpSession session,Model model, News news){
		news.setCreateTime(new Date());
		news.setIsDelete((short) 0);
		newsService.addNews(news);
		return "redirect:/view/newsManage";
	}
	
	@RequestMapping("/deleteDoctor")
	public String deleteDoctor(HttpSession session,Model model, Integer id){
		User user = new User();
		user.setId(id);
		user.setIsDelete((short)1);
		userService.updateUser(user);
		return "redirect:/view/doctorManage";
	}
	
	@RequestMapping("/deletePatient")
	public String deletePatient(HttpSession session,Model model, Integer id){
		User user = new User();
		user.setId(id);
		user.setIsDelete((short)1);
		userService.updateUser(user);
		return "redirect:/view/patientsManage";
	}
	
	@RequestMapping("/updateDoctor")
	public String updateDoctor(HttpSession session,Model model, User user){
		userService.updateUser(user);
		return "redirect:/view/doctorManage";
	}
	
	@RequestMapping("/updatePatient")
	public String updatePatient(HttpSession session,Model model, User user){
		userService.updateUser(user);
		return "redirect:/view/patientsManage";
	}
	
	@RequestMapping("/updateNews")
	public String updateNews(HttpSession session,Model model, News news){
		newsService.updateNews(news);
		return "redirect:/view/newsManage";
	}
	
	@RequestMapping("/getDoctor")
	public String getDoctor(HttpSession session,Model model, Integer id){
		User user = userService.getUser(id);
		model.addAttribute("doctor", user);
		return "cms/showDoctorDetail";
	}
	
	@RequestMapping("/updateDoctorData")
	public String updateDoctorData(HttpSession session,Model model, Integer id){
		User user = userService.getUser(id);
		model.addAttribute("doctor", user);
		return "cms/updateDoctor";
	}
	
	
	@RequestMapping("/updateMedicalRecordData")
	public String updateMedicalRecordData(HttpSession session,Model model, Integer id){
		MedicalRecord medicalRecord = userService.getMedicalRecord(id);
		List<User> ls = userService.findUser();
		model.addAttribute("patients", ls);
		model.addAttribute("medicalRecord", medicalRecord);
		return "cms/updateMedicalRecord";
	}
	
	@RequestMapping("/updateMedicalRecord")
	public String updateMedicalRecord(HttpSession session,Model model, MedicalRecord medicalRecord){
		userService.updateMedicalRecord(medicalRecord);
		return "redirect:/view/medicalRecordManage";
	}
	
	@RequestMapping("/updatePatientData")
	public String updatePatientData(HttpSession session,Model model, Integer id){
		User user = userService.getUser(id);
		model.addAttribute("patient", user);
		return "cms/updatePatient";
	}
	
	@RequestMapping("/updateNewsData")
	public String updateNewsData(HttpSession session,Model model, Integer id){
		News news = newsService.getNews(id);
		model.addAttribute("news", news);
		return "cms/updateNews";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session,Model model){
		session.setAttribute("loginUser", null);
		session.setAttribute("type", null);
		return "loginh";
	}
	
	@RequestMapping("/userCenter")
	public String userCenter(HttpSession session,Model model, Integer id){
		User user = userService.getUser(id);
		model.addAttribute("user", user);
		return "cms/userCenter";
	}
	
	@RequestMapping("/hisMedicalRecord")
	public String hisMedicalRecord(HttpSession session,Model model,pageModel pagemodel, Integer id){
		pageModel<HashMap> _pagemodel = medicalRecordService.findMedicalRecordList(pagemodel, id);
		model.addAttribute("pagemodel", _pagemodel);
		return "/cms/medicalRecordList";
	}
	
	@RequestMapping("/getPatientMedicalRecord")
	public String getPatientMedicalRecord(HttpSession session,Model model,pageModel pagemodel, Integer id){
		pageModel<HashMap> _pagemodel = medicalRecordService.findMedicalRecordList(pagemodel, id);
		model.addAttribute("pagemodel", _pagemodel);
		model.addAttribute("id", id);
		return "/cms/patientMedicalRecordList";
	}
	
	@RequestMapping("/getMedicalRecord")
	public String getMedicalRecord(HttpSession session,Model model,pageModel pagemodel, Integer id, String patient, String doctor){
		MedicalRecord medicalRecord = medicalRecordService.getMedicalRecord(id);
		model.addAttribute("medicalRecord", medicalRecord);
		model.addAttribute("patient", patient);
		model.addAttribute("doctor", doctor);
		model.addAttribute("createtime", new DateFormatManager("yyyy-MM-dd HH:mm:ss").format(medicalRecord.getCreateTime()));
		return "cms/showMedicalRecord";
	}
	
	@RequestMapping("/getMedicalRecordDetail")
	public String getMedicalRecordDetail(HttpSession session,Model model,pageModel pagemodel, Integer id, String patient, String doctor, String patientId){
		MedicalRecord medicalRecord = medicalRecordService.getMedicalRecord(id);
		model.addAttribute("medicalRecord", medicalRecord);
		model.addAttribute("patient", patient);
		model.addAttribute("doctor", doctor);
		model.addAttribute("patientId", patientId);
		model.addAttribute("createtime", new DateFormatManager("yyyy-MM-dd HH:mm:ss").format(medicalRecord.getCreateTime()));
		return "cms/showMedicalRecordDetail";
	}
	
	@RequestMapping("/updatePasswordData")
	public String updatePasswordData(HttpSession session,Model model,pageModel pagemodel, Integer id){
		model.addAttribute("id", id);
		return "/cms/updatePassword";
	}
	
	@RequestMapping("/updatePassword")
	public String updatePassword(HttpSession session,Model model, Integer id, String password){
		User user = new User();
		user.setId(id);
		user.setPassword(password);
		userService.updateUser(user);
		return "redirect:/page/cms/main";
	}
	
	@RequestMapping("/patientsManage")
	public String patientsManage(HttpSession session,Model model,pageModel pagemodel){
		pageModel<HashMap> _pagemodel = userService.findPatientList(pagemodel);
		model.addAttribute("pagemodel", _pagemodel);
		return "/cms/patientList";
	}
	
	
	@RequestMapping("/medicalRecordManage")
	public String medicalRecordManage(HttpSession session,Model model,pageModel pagemodel, Integer docId, String type, String patient, String date){
		pageModel<HashMap> _pagemodel = medicalRecordService.findMedicalRecordCondition(pagemodel, type, patient, date, docId);
		model.addAttribute("pagemodel", _pagemodel);
		model.addAttribute("docId", docId);
		model.addAttribute("type", type);
		model.addAttribute("patient", patient);
		model.addAttribute("date", date);
		return "/cms/medicalRecordManageList";
	}
	
	
	@RequestMapping("/news")
	public String news(HttpSession session,Model model){
		List<News> news = newsService.getAllNews();
		List<Map<String, Object>> res = new ArrayList<>();
		for (News news2 : news) {
			Map<String, Object> tMap = new HashMap<>();
			tMap.put("title", news2.getTitle());
			tMap.put("create_time", new DateFormatManager("yyyy-MM-dd HH:mm:ss").format(news2.getCreateTime()));
			tMap.put("content", news2.getContent());
			res.add(tMap);
		}
		model.addAttribute("news", res);
		return "/cms/indexNewsList";
	}
	
	
	@RequestMapping("/leavemessage")
	public String leavemessage(HttpSession session,Model model){
		List<LeaveMessage> leaveMessages = leaveMessageService.getAllLeaveMessage();
		
		List<Map<String, Object>> res = new ArrayList<>();
		
		for (LeaveMessage leaveMessage : leaveMessages) {
			Map<String, Object> tMap = new HashMap<>();
			tMap.put("content", leaveMessage.getContent());
			tMap.put("createTime", new DateFormatManager("yyyy-MM-dd HH:mm:ss").format(leaveMessage.getCreateTime()));
			User user = userService.getUser(leaveMessage.getUserId());
			tMap.put("user", user.getName());
			res.add(tMap);
		}
		model.addAttribute("leaveMessages", res);
		return "/cms/leaveMessageList";
	}
	
	@RequestMapping("/addLeavemessage")
	public String addLeavemessage(HttpSession session,Model model, LeaveMessage leaveMessage){
		leaveMessage.setCreateTime(new Date());
		leaveMessageService.addLeaveMessage(leaveMessage);
		
		List<LeaveMessage> leaveMessages = leaveMessageService.getAllLeaveMessage();
		
		List<Map<String, Object>> res = new ArrayList<>();
		
		for (LeaveMessage lea : leaveMessages) {
			Map<String, Object> tMap = new HashMap<>();
			tMap.put("content", lea.getContent());
			tMap.put("createTime", new DateFormatManager("yyyy-MM-dd HH:mm:ss").format(lea.getCreateTime()));
			User user = userService.getUser(lea.getUserId());
			tMap.put("user", user.getName());
			res.add(tMap);
		}
		model.addAttribute("leaveMessages", res);
		return "/cms/leaveMessageList";
	}
}
