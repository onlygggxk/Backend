package com.psychology.api.dto;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.psychology.api.entity. Healthy;
import lombok.Data;
import lombok.ToString;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
* @description: 健康数据数据传输层
* @author: wuming
* @create: 2025.02.26 17:42:56
*/
@Data
@ToString
@TableName("healthy")
public class HealthyDTO extends Healthy {

    /**
    * 姓名
    */
    @TableField(exist = false)
    private String name;


    @TableField(exist = false)
    private String url;

}
