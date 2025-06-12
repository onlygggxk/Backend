package com.psychology.api.controller;

import com.psychology.api.common.BaseController;
import com.psychology.api.common.BaseSelectEntity;
import com.psychology.api.common.ReturnMsg;
import com.psychology.api.dto.KnowledgeDTO;
import com.psychology.api.dto.TypesDTO;
import com.psychology.api.service.KnowledgeService;
import com.psychology.api.service.TypesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @description: 科普知识管理对外接口层
 * @author: wuming
 * @create: 2025.02.17 15:24:23
 */
@RestController
@RequestMapping("/knowledge")
public class KnowledgeController extends BaseController<KnowledgeService, KnowledgeDTO> {

    @Autowired
    private TypesService typesService;

    @Override
    @Resource(name = "knowledgeService")
    protected void setBaseService(KnowledgeService knowledgeService) {
        this.baseService = knowledgeService;
    }

    /**
     * 默认分页查询
     *
     * @param knowledgeDTO
     * @return
     */
    @PostMapping("/page")
    public ReturnMsg page(@RequestBody KnowledgeDTO knowledgeDTO) {
        return ReturnMsg.ok(baseService.basePage(knowledgeDTO));
    }

    /**
     * 根据XML中的sql语句进行查询
     *
     * @param knowledgeDTO
     * @return
     */
    @PostMapping(value = "/findList")
    public ReturnMsg findList(@RequestBody KnowledgeDTO knowledgeDTO) {
        return ReturnMsg.ok(baseService.findList(knowledgeDTO));
    }

    @GetMapping("/getIndex/{num}")
    public ReturnMsg getIndex(@PathVariable int num) {
        KnowledgeDTO knowledgeDTO = new KnowledgeDTO();
        knowledgeDTO.setPageSize(num);
        knowledgeDTO.setCurrent(1);
        return ReturnMsg.ok(baseService.findList(knowledgeDTO));
    }


    @Override
    protected void beforeSave(KnowledgeDTO entity) throws Exception {
        entity.setCreateTime(new Date());
        super.beforeSave(entity);
    }

    @GetMapping("/all/types")
    public ReturnMsg allTypes() {
        List<BaseSelectEntity> list = new ArrayList<>();
        List<TypesDTO> dtos = typesService.list();
        for (TypesDTO dto : dtos) {
            BaseSelectEntity baseSelectEntity = new BaseSelectEntity();
            baseSelectEntity.setKey(dto.getId());
            baseSelectEntity.setValue(dto.getTypeName());
            list.add(baseSelectEntity);
        }
        return ReturnMsg.ok(list);
    }

}

