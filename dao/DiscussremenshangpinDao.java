package com.dao;

import com.entity.DiscussremenshangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussremenshangpinVO;
import com.entity.view.DiscussremenshangpinView;

public interface DiscussremenshangpinDao extends BaseMapper<DiscussremenshangpinEntity> {
	
	List<DiscussremenshangpinVO> selectListVO(@Param("ew") Wrapper<DiscussremenshangpinEntity> wrapper);
	
	DiscussremenshangpinVO selectVO(@Param("ew") Wrapper<DiscussremenshangpinEntity> wrapper);
	
	List<DiscussremenshangpinView> selectListView(@Param("ew") Wrapper<DiscussremenshangpinEntity> wrapper);

	List<DiscussremenshangpinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussremenshangpinEntity> wrapper);
	
	DiscussremenshangpinView selectView(@Param("ew") Wrapper<DiscussremenshangpinEntity> wrapper);
	

}
