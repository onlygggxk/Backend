package com.psychology.api.vo;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.extra.spring.SpringUtil;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.psychology.api.common.MyThreadLocal;
import com.psychology.api.dto.HealthyDTO;
import com.psychology.api.service.HealthyService;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @description: excel读取器
 * @author: azhou
 * @create: 2024/3/7 15:24
 **/
@Component
public class ExcelListener extends AnalysisEventListener<ExcelHealthVO> {

    private List<HealthyDTO> healthyDTOS = new ArrayList<>();// 临时存储


    @Override
    public void invoke(ExcelHealthVO excelHealthVO, AnalysisContext analysisContext) {
        HealthyDTO healthyDTO = new HealthyDTO();
        BeanUtil.copyProperties(excelHealthVO, healthyDTO);
        healthyDTO.setCreateTime(new Date());
        healthyDTOS.add(healthyDTO);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        HealthyService healthyService = SpringUtil.getBean(HealthyService.class);
        healthyService.saveBatch(healthyDTOS);
    }


}

