package com.psychology.api.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.psychology.api.dto.HealthyDTO;
import java.util.List;
/**
* @description: 健康数据业务层接口
* @author: wuming
* @create: 2025.02.26 17:42:56
*/
public interface HealthyService extends IService<HealthyDTO> {

    /**
    * 默认分页方法
    * @param healthyDTO
    * @return
    */
    Page<HealthyDTO> basePage(HealthyDTO healthyDTO);


    /**
    * 根据XML中的sql语句进行查询
    * @param healthyDTO
    * @return
    */
    List<HealthyDTO> findList(HealthyDTO healthyDTO);

}
