package org.dzbl.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.dzbl.entity.Admin;
import org.dzbl.entity.AdminCriteria;
import org.dzbl.entity.MedicalRecord;
import org.dzbl.entity.User;
import org.dzbl.entity.UserCriteria;
import org.dzbl.entity.UserCriteria.Criteria;
import org.dzbl.mapper.AdminMapper;
import org.dzbl.mapper.CustomUserMapper;
import org.dzbl.mapper.MedicalRecordMapper;
import org.dzbl.mapper.UserMapper;
import org.dzbl.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private CustomUserMapper customUserMapper;
	
	@Autowired
	private MedicalRecordMapper medicalRecordMapper;
	
	public List<User> getUser(String username) {
		UserCriteria userCriteria = new UserCriteria();
		Criteria criteria = userCriteria.createCriteria();
		criteria.andIsDeleteEqualTo((short)0);
		criteria.andUsernameEqualTo(username);
		return userMapper.selectByExample(userCriteria);
	}
	
	public List<Admin> getAdmin(String username) {
		AdminCriteria adminCriteria = new AdminCriteria();
		org.dzbl.entity.AdminCriteria.Criteria criteria = adminCriteria.createCriteria();
		criteria.andStatusEqualTo((short)1);
		criteria.andUsernameEqualTo(username);
		return adminMapper.selectByExample(adminCriteria);
	}
	
	public pageModel<HashMap> findUserList(pageModel model) {
		model.setList(customUserMapper.findUserList(model.getBeginIndex(), model.getPageSize()));
		model.setRows(customUserMapper.findUserCount().toString());
		return model;
	}
	
	public void addUser(User user) {
		userMapper.insertSelective(user);
	}
	
	public User getUser(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}
	
	public void updateUser(User user) {
		userMapper.updateByPrimaryKeySelective(user);
	}
	
	public pageModel<HashMap> findPatientList(pageModel model) {
		model.setList(customUserMapper.findPatientList(model.getBeginIndex(), model.getPageSize()));
		model.setRows(customUserMapper.findPatientCount().toString());
		return model;
	}
	
	public void addMedicalRecord(MedicalRecord medicalRecord) {
		medicalRecordMapper.insertSelective(medicalRecord);
	}
	
	public void updateMedicalRecord(MedicalRecord medicalRecord) {
		medicalRecordMapper.updateByPrimaryKeySelective(medicalRecord);
	}
	
	public MedicalRecord getMedicalRecord(Integer id) {
		return medicalRecordMapper.selectByPrimaryKey(id);
	}
	
	public List<User> findUser() {
		UserCriteria userCriteria = new UserCriteria();
		Criteria criteria = userCriteria.createCriteria();
		criteria.andIsDeleteEqualTo((short)0);
		criteria.andTypeEqualTo((short)1);
		return userMapper.selectByExample(userCriteria);
	}
}
