package com.psychology.api.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.psychology.api.dto.NoticeDTO;

import java.util.List;
/**
* @description: 公告管理业务层接口
* @author: wuming
* @create: 2025.02.17 15:24:23
*/
public interface NoticeService extends IService<NoticeDTO> {

    /**
    * 默认分页方法
    * @param noticeDTO
    * @return
    */
    Page<NoticeDTO> basePage(NoticeDTO noticeDTO);


    /**
    * 根据XML中的sql语句进行查询
    * @param noticeDTO
    * @return
    */
    List<NoticeDTO> findList(NoticeDTO noticeDTO);

}
