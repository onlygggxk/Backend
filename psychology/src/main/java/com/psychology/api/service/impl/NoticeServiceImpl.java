package com.psychology.api.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.psychology.api.dao.NoticeDao;
import com.psychology.api.dto.NoticeDTO;
import com.psychology.api.service.NoticeService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @description: 公告管理业务层实现类
* @author: wuming
* @create: 2025.02.17 15:24:23
*/
@Service("noticeService")
public class NoticeServiceImpl extends ServiceImpl<NoticeDao, NoticeDTO> implements NoticeService {

    @Override
    public Page<NoticeDTO> basePage(NoticeDTO noticeDTO) {
        if (null != noticeDTO.getCurrent() && null != noticeDTO.getPageSize())
            noticeDTO.setCurrent((noticeDTO.getCurrent() - 1) * noticeDTO.getPageSize());
        List<NoticeDTO> list = this.baseMapper.findList(noticeDTO);
        int count = this.baseMapper.findPageCount(noticeDTO);
        Page<NoticeDTO> page = new Page<>();
        page.setTotal(count);
        page.setRecords(list);
        return page;
    }

    @Override
    public List<NoticeDTO> findList(NoticeDTO noticeDTO) {
        return this.baseMapper.findList(noticeDTO);
    }

}
