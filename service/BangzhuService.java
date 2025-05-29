package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BangzhuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BangzhuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BangzhuView;

public interface BangzhuService extends IService<BangzhuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BangzhuVO> selectListVO(Wrapper<BangzhuEntity> wrapper);
   	
   	BangzhuVO selectVO(@Param("ew") Wrapper<BangzhuEntity> wrapper);
   	
   	List<BangzhuView> selectListView(Wrapper<BangzhuEntity> wrapper);
   	
   	BangzhuView selectView(@Param("ew") Wrapper<BangzhuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BangzhuEntity> wrapper);
   	

}

