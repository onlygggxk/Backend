package com.psychology.api.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.psychology.api.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;
/**
* @description: 科普知识管理实体类
* @author: wuming
* @create: 2025.02.17 15:24:23
*/
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Knowledge extends BaseEntity {

    /**
    * 科普知识编号
    */
    private Long id;
    /**
    * 封面图片
    */
    private String bannerImg;
    /**
    * 所属分类
    */
    private Long typeId;
    /**
    * 内容
    */
    private String content;
    /**
    * 简介
    */
    private String info;
    /**
    * 创建时间
    */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;
    /**
    * 标题
    */
    private String title;


}
