package com.psychology.api.vo;

import com.alibaba.excel.annotation.ExcelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @description: todo
 * @author: azhou
 * @create: 2024/5/6 15:09
 **/
@Data
public class ExcelHealthVO {
    /**
     * 月份
     */
    @ExcelProperty(index = 0)
    @JsonFormat(pattern="yyyy-MM", timezone = "GMT+8")
    private Date monthDay;

    /**
     * 学生编号
     */
    @ExcelProperty(index = 1)
    private Long stuId;
    /**
     * 身高
     */
    @ExcelProperty(index = 2)
    private Double height;
    /**
     * 体重
     */
    @ExcelProperty(index = 3)
    private Double weight;
    /**
     * 视力
     */
    @ExcelProperty(index = 4)
    private String eyesight;
    /**
     * 脉率
     */
    @ExcelProperty(index = 5)
    private String ulseRate;
    /**
     * 血压
     */
    @ExcelProperty(index = 6)
    private String bloodPressure;
    /**
     * 心率
     */
    @ExcelProperty(index = 7)
    private String heartRate;
    /**
     * 呼吸
     */
    @ExcelProperty(index = 8)
    private String breath;
    /**
     * 血糖
     */
    @ExcelProperty(index = 9)
    private String bloodSugar;
    /**
     * 血脂
     */
    @ExcelProperty(index = 10)
    private String bloodLipid;


}
