package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.BangzhuDao;
import com.entity.BangzhuEntity;
import com.service.BangzhuService;
import com.entity.vo.BangzhuVO;
import com.entity.view.BangzhuView;

@Service("bangzhuService")
public class BangzhuServiceImpl extends ServiceImpl<BangzhuDao, BangzhuEntity> implements BangzhuService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BangzhuEntity> page = this.selectPage(
                new Query<BangzhuEntity>(params).getPage(),
                new EntityWrapper<BangzhuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BangzhuEntity> wrapper) {
		  Page<BangzhuView> page =new Query<BangzhuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BangzhuVO> selectListVO(Wrapper<BangzhuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BangzhuVO selectVO(Wrapper<BangzhuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BangzhuView> selectListView(Wrapper<BangzhuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BangzhuView selectView(Wrapper<BangzhuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
