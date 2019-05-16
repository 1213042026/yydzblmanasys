package org.dzbl.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.dzbl.entity.Admin;
import org.dzbl.entity.AdminCriteria;
import org.dzbl.entity.LeaveMessage;
import org.dzbl.entity.LeaveMessageCriteria;
import org.dzbl.entity.User;
import org.dzbl.entity.UserCriteria;
import org.dzbl.entity.UserCriteria.Criteria;
import org.dzbl.mapper.AdminMapper;
import org.dzbl.mapper.CustomUserMapper;
import org.dzbl.mapper.LeaveMessageMapper;
import org.dzbl.mapper.UserMapper;
import org.dzbl.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LeaveMessageService {
	
	@Autowired
	private LeaveMessageMapper leaveMessageMapper;
	
	public List<LeaveMessage> getAllLeaveMessage() {
		LeaveMessageCriteria leaveMessageCriteria = new LeaveMessageCriteria();
		leaveMessageCriteria.setOrderByClause("create_time desc");
		return leaveMessageMapper.selectByExample(leaveMessageCriteria);
	}
	
	public void addLeaveMessage(LeaveMessage leaveMessage) {
		leaveMessageMapper.insertSelective(leaveMessage);
	}
}
