package org.dzbl.service;

import java.util.HashMap;
import java.util.List;

import org.dzbl.entity.News;
import org.dzbl.entity.NewsCriteria;
import org.dzbl.mapper.CustomNewsMapper;
import org.dzbl.mapper.NewsMapper;
import org.dzbl.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsService {
	
	@Autowired
	private NewsMapper newsMapper;
	
	@Autowired
	private CustomNewsMapper customNewsMapper;
	
	public pageModel<HashMap> findNewsList(pageModel model) {
		model.setList(customNewsMapper.findNewsList(model.getBeginIndex(), model.getPageSize()));
		model.setRows(customNewsMapper.findNewsCount().toString());
		return model;
	}
	
	public void addNews(News news) {
		newsMapper.insertSelective(news);
	}
	
	public void updateNews(News news) {
		newsMapper.updateByPrimaryKeySelective(news);
	}
	
	public News getNews(Integer id) {
		return newsMapper.selectByPrimaryKey(id);
	}
	
	public List<News> getAllNews() {
		NewsCriteria newsCriteria = new NewsCriteria();
		newsCriteria.setOrderByClause("create_time desc");
		return newsMapper.selectByExample(newsCriteria);
	}
}
