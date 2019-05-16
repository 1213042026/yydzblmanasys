package org.dzbl.service;

import java.util.HashMap;

import org.dzbl.entity.MedicalRecord;
import org.dzbl.entity.News;
import org.dzbl.mapper.CustomMedicalRecordMapper;
import org.dzbl.mapper.CustomNewsMapper;
import org.dzbl.mapper.MedicalRecordMapper;
import org.dzbl.mapper.NewsMapper;
import org.dzbl.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MedicalRecordService {
	
	@Autowired
	private MedicalRecordMapper medicalRecordMapper;
	
	@Autowired
	private CustomMedicalRecordMapper customMedicalRecordMapper;
	
	public pageModel<HashMap> findMedicalRecordList(pageModel model, Integer userId) {
		model.setList(customMedicalRecordMapper.findMedicalRecordList(model.getBeginIndex(), model.getPageSize(), userId));
		model.setRows(customMedicalRecordMapper.findMedicalRecordCount(userId).toString());
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
	
	public pageModel<HashMap> findMedicalRecordCondition(pageModel model, String type, String patient, String date, Integer docId) {
		model.setList(customMedicalRecordMapper.findMedicalRecordCondition(model.getBeginIndex(), model.getPageSize(), type, patient, date, docId));
		model.setRows(customMedicalRecordMapper.findMedicalRecordConditionCount(type, patient, date, docId).toString());
		return model;
	}
}
