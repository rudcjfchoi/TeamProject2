package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.CategoriesDTO;


@Repository
public class CategotiesDAOImpl implements CategoriesDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.categoriesMapper";
	
	@Override
	public void insertCategory(String category) {
		sqlSession.insert(namespace + ".insertCategory", category);
	}
	
	@Override
	public List<CategoriesDTO> getCategoryList() {
		return sqlSession.selectList(namespace + ".getCategoryList");
	}

	@Override
	public void deleteCategory(String category) {
		sqlSession.delete(namespace + ".deleteCategory", category);
	}
	
}
