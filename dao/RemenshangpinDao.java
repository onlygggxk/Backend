package com.dao;

import com.entity.RemenshangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.RemenshangpinVO;
import com.entity.view.RemenshangpinView;

public interface RemenshangpinDao extends BaseMapper<RemenshangpinEntity> {
	
	List<RemenshangpinVO> selectListVO(@Param("ew") Wrapper<RemenshangpinEntity> wrapper);
	
	RemenshangpinVO selectVO(@Param("ew") Wrapper<RemenshangpinEntity> wrapper);
	
	List<RemenshangpinView> selectListView(@Param("ew") Wrapper<RemenshangpinEntity> wrapper);

	List<RemenshangpinView> selectListView(Pagination page,@Param("ew") Wrapper<RemenshangpinEntity> wrapper);
	
	RemenshangpinView selectView(@Param("ew") Wrapper<RemenshangpinEntity> wrapper);
	

}
