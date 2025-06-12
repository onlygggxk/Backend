package com.psychology.api.entity;

import com.psychology.api.common.BaseEntity;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
/**
* @description: 健康数据实体类
* @author: wuming
* @create: 2025.02.26 17:42:56
*/
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Healthy extends BaseEntity {

    /**
    * 数据编号
    */
    private Long id;
    /**
    * 学生编号
    */
    private Long stuId;
    /**
    * 身高
    */
    private Double height;
    /**
    * 体重
    */
    private Double weight;
    /**
    * 视力
    */
    private String eyesight;
    /**
    * 脉率
    */
    private String ulseRate;
    /**
    * 血压
    */
    private String bloodPressure;
    /**
    * 心率
    */
    private String heartRate;
    /**
    * 呼吸
    */
    private String breath;
    /**
    * 血糖
    */
    private String bloodSugar;
    /**
    * 血脂
    */
    private String bloodLipid;
    private String content;
    /**
    * 月份
    */
    @JsonFormat(pattern="yyyy-MM", timezone = "GMT+8")
    private Date monthDay;
    /**
    * 录入时间
    */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;


}
