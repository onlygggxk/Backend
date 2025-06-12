package com.psychology.api.dto;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.psychology.api.entity.Knowledge;
import lombok.Data;
import lombok.ToString;

/**
* @description: 科普知识管理数据传输层
* @author: wuming
* @create: 2025.02.17 15:24:23
*/
@Data
@ToString
@TableName("knowledge")
public class KnowledgeDTO extends Knowledge {

    /**
    * 分类名称
    */
    @TableField(exist = false)
    private String typeName;

}
