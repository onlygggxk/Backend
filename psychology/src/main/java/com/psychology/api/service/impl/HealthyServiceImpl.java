package com.psychology.api.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.psychology.api.dao.HealthyDao;
import com.psychology.api.dto.HealthyDTO;
import com.psychology.api.service.HealthyService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @description: 健康数据业务层实现类
* @author: wuming
* @create: 2025.02.26 17:42:56
*/
@Service("healthyService")
public class HealthyServiceImpl extends ServiceImpl<HealthyDao, HealthyDTO> implements HealthyService {

    @Override
    public Page<HealthyDTO> basePage(HealthyDTO healthyDTO) {
        if (null != healthyDTO.getCurrent() && null != healthyDTO.getPageSize())
            healthyDTO.setCurrent((healthyDTO.getCurrent() - 1) * healthyDTO.getPageSize());
        List<HealthyDTO> list = this.baseMapper.findList(healthyDTO);
        int count = this.baseMapper.findPageCount(healthyDTO);
        Page<HealthyDTO> page = new Page<>();
        page.setTotal(count);
        page.setRecords(list);
        return page;
    }

    @Override
    public List<HealthyDTO> findList(HealthyDTO healthyDTO) {
        return this.baseMapper.findList(healthyDTO);
    }

}
