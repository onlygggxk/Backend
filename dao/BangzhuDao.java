package com.dao;

import com.entity.BangzhuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BangzhuVO;
import com.entity.view.BangzhuView;

public interface BangzhuDao extends BaseMapper<BangzhuEntity> {
	
	List<BangzhuVO> selectListVO(@Param("ew") Wrapper<BangzhuEntity> wrapper);
	
	BangzhuVO selectVO(@Param("ew") Wrapper<BangzhuEntity> wrapper);
	
	List<BangzhuView> selectListView(@Param("ew") Wrapper<BangzhuEntity> wrapper);

	List<BangzhuView> selectListView(Pagination page,@Param("ew") Wrapper<BangzhuEntity> wrapper);
	
	BangzhuView selectView(@Param("ew") Wrapper<BangzhuEntity> wrapper);
	

}
