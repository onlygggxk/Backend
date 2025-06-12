package com.psychology.api.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.psychology.api.common.BaseController;
import com.psychology.api.common.BaseSelectEntity;
import com.psychology.api.common.MyThreadLocal;
import com.psychology.api.common.ReturnMsg;
import com.psychology.api.common.util.LocalDateTimeUtils;
import com.psychology.api.dto.HealthyDTO;
import com.psychology.api.dto.StudentDTO;
import com.psychology.api.dto.TypesDTO;
import com.psychology.api.service.ApiService;
import com.psychology.api.service.HealthyService;
import com.psychology.api.service.StudentService;
import com.psychology.api.vo.EchartsVO;
import com.psychology.api.vo.ExcelHealthVO;
import com.psychology.api.vo.ExcelListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * @description: 健康数据对外接口层
 * @author: wuming
 * @create: 2025.02.26 17:42:56
 */
@RestController
@RequestMapping("/healthy")
public class HealthyController extends BaseController<HealthyService, HealthyDTO> {

    @Autowired
    private StudentService studentService;

    @Override
    @Resource(name = "healthyService")
    protected void setBaseService(HealthyService healthyService) {
        this.baseService = healthyService;
    }

    /**
     * 默认分页查询
     *
     * @param healthyDTO
     * @return
     */
    @PostMapping("/page")
    public ReturnMsg page(@RequestBody HealthyDTO healthyDTO) {
        return ReturnMsg.ok(baseService.basePage(healthyDTO));
    }

    /**
     * 根据XML中的sql语句进行查询
     *
     * @param healthyDTO
     * @return
     */
    @PostMapping(value = "/findList")
    public ReturnMsg findList(@RequestBody HealthyDTO healthyDTO) {
        return ReturnMsg.ok(baseService.findList(healthyDTO));
    }

    @Override
    protected void beforeSave(HealthyDTO entity) throws Exception {
        entity.setCreateTime(new Date());
        super.beforeSave(entity);
    }

    @Value("${new-tomcat.folder}")
    private String newTomcatFolder;


    @PostMapping("/saveData")
    public ReturnMsg saveData(@RequestBody HealthyDTO healthyDTO) throws Exception {
        // 先删除之前的
        File file = new File(newTomcatFolder + healthyDTO.getUrl());
        InputStream inputStream = null;
        try {
            inputStream = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        EasyExcel.read(inputStream, ExcelHealthVO.class, new ExcelListener()).sheet().doRead();
        return ReturnMsg.ok();
    }


    String questionTemp = "我的年龄为：%d,性别为：%s,这个月的健康数据如下所示，身高%fcm，体重%fkg，视力：%s，脉率：%s，血压：%s，心率：%s，呼吸：%s，血糖%s，血脂：%s，帮我分析下我的健康状况以及给出合适的健康方面的意见";

    @GetMapping("/getAnswer/{id}")
    public ReturnMsg getAnswer(@PathVariable Long id) {
        HealthyDTO healthyDTO = this.baseService.getById(id);
        if (healthyDTO == null) return ReturnMsg.ok();
        Long dtoStuId = healthyDTO.getStuId();
        StudentDTO studentDTO = studentService.getById(dtoStuId);
        if (studentDTO == null) return ReturnMsg.ok();
        String question = String.format(questionTemp, studentDTO.getStuAge(), studentDTO.getStuSex() == 0 ? "男" : "女",
                healthyDTO.getHeight(), healthyDTO.getWeight(), healthyDTO.getEyesight(), healthyDTO.getUlseRate(),
                healthyDTO.getBloodPressure(), healthyDTO.getHeartRate(), healthyDTO.getBreath(), healthyDTO.getBloodSugar(), healthyDTO.getBloodLipid());
        System.out.println("问题：" + question);
        new Thread(() -> {
            String answer = ApiService.query(question);
            healthyDTO.setContent(answer);
            this.baseService.updateById(healthyDTO);
        }).start();
        return ReturnMsg.ok();
    }

    @GetMapping("/echarts/{studentId}")
    public ReturnMsg echarts(@PathVariable Long studentId) {
        HealthyDTO param = new HealthyDTO();
        param.setStuId(studentId);
        // 学生健康数据记录
        List<HealthyDTO> serviceList = this.baseService.findList(param);
        EchartsVO echartsVO = new EchartsVO();
        if (CollectionUtil.isEmpty(serviceList)) return ReturnMsg.ok(echartsVO);
        echartsVO.setHealthyDTOS(serviceList);
        List<String> monthList = new ArrayList<>();
        List<Double> heightList = new ArrayList<>();
        List<Double> weightList = new ArrayList<>();
        List<String> bloodSugar = new ArrayList<>();
        List<String> bloodLipid = new ArrayList<>();
        List<String> leftEyes = new ArrayList<>();
        List<String> rightEyes = new ArrayList<>();
        List<String> leftXue = new ArrayList<>();
        List<String> rightXue = new ArrayList<>();
        List<String> ulseRate = new ArrayList<>();
        List<String> heartRate = new ArrayList<>();
        List<String> breath = new ArrayList<>();

        for (HealthyDTO healthyDTO : serviceList) {
            monthList.add(LocalDateTimeUtils.formatMonth(healthyDTO.getMonthDay()));
            //  身高变化
            heightList.add(healthyDTO.getHeight());
            // 体重变化
            weightList.add(healthyDTO.getWeight());
            // 血糖
            bloodLipid.add(healthyDTO.getBloodLipid());
            // 血脂
            bloodSugar.add(healthyDTO.getBloodSugar());
            // 视力
            String eyesight = healthyDTO.getEyesight();
            if (StrUtil.isEmpty(eyesight) || !eyesight.contains(",")) {
                leftEyes.add("0");
                rightEyes.add("0");
            } else {
                String[] split = eyesight.split(",");
                leftEyes.add(split[0]);
                rightEyes.add(split[1]);
            }
            // 血压
            String bloodPressure = healthyDTO.getBloodPressure();
            if (StrUtil.isEmpty(bloodPressure) || !bloodPressure.contains("/")) {
                leftXue.add("0");
                rightXue.add("0");
            } else {
                String[] split = bloodPressure.split("/");
                leftXue.add(split[0]);
                rightXue.add(split[1]);
            }
            // 脉率
            ulseRate.add(healthyDTO.getUlseRate());
            // 呼吸
            heartRate.add(healthyDTO.getHeartRate());
            // 心率
            breath.add(healthyDTO.getBreath());
        }
        echartsVO.setMonthList(monthList);
        echartsVO.setHeightList(heightList);
        echartsVO.setWeightList(weightList);
        echartsVO.setBloodLipid(bloodLipid);
        echartsVO.setBloodSugar(bloodSugar);
        echartsVO.setLeftEyes(leftEyes);
        echartsVO.setRightEyes(rightEyes);
        echartsVO.setLeftXue(leftXue);
        echartsVO.setRightXue(rightXue);
        echartsVO.setUlseRate(ulseRate);
        echartsVO.setHeartRate(heartRate);
        echartsVO.setBreath(breath);
        return ReturnMsg.ok(echartsVO);
    }


    @GetMapping("/echarts1/{studentId}")
    public ReturnMsg echarts1(@PathVariable Long studentId) {
        HealthyDTO param = new HealthyDTO();
        param.setStuId(studentId);
        // 学生健康数据记录
        List<HealthyDTO> serviceList = this.baseService.findList(param);
        EchartsVO echartsVO = new EchartsVO();
        if (CollectionUtil.isEmpty(serviceList)) return ReturnMsg.ok(echartsVO);
        echartsVO.setHealthyDTOS(serviceList);
        List<String> monthList = new ArrayList<>();
        List<Double> heightList = new ArrayList<>();
        List<Double> weightList = new ArrayList<>();
        List<String> bloodSugar = new ArrayList<>();
        List<String> bloodLipid = new ArrayList<>();
        List<String> leftEyes = new ArrayList<>();
        List<String> rightEyes = new ArrayList<>();
        List<String> leftXue = new ArrayList<>();
        List<String> rightXue = new ArrayList<>();
        List<String> ulseRate = new ArrayList<>();
        List<String> heartRate = new ArrayList<>();
        List<String> breath = new ArrayList<>();

        for (HealthyDTO healthyDTO : serviceList) {
            monthList.add(LocalDateTimeUtils.formatMonth(healthyDTO.getMonthDay()));
            //  身高变化
            heightList.add(healthyDTO.getHeight());
            // 体重变化
            weightList.add(healthyDTO.getWeight());
            // 血糖
            bloodLipid.add(healthyDTO.getBloodLipid());
            // 血脂
            bloodSugar.add(healthyDTO.getBloodSugar());
            // 视力
            String eyesight = healthyDTO.getEyesight();
            if (StrUtil.isEmpty(eyesight) || !eyesight.contains(",")) {
                leftEyes.add("0");
                rightEyes.add("0");
            } else {
                String[] split = eyesight.split(",");
                leftEyes.add(split[0]);
                rightEyes.add(split[1]);
            }
            // 血压
            String bloodPressure = healthyDTO.getBloodPressure();
            if (StrUtil.isEmpty(bloodPressure) || !bloodPressure.contains("/")) {
                leftXue.add("0");
                rightXue.add("0");
            } else {
                String[] split = bloodPressure.split("/");
                leftXue.add(split[0]);
                rightXue.add(split[1]);
            }
            // 脉率
            ulseRate.add(healthyDTO.getUlseRate());
            // 呼吸
            heartRate.add(healthyDTO.getHeartRate());
            // 心率
            breath.add(healthyDTO.getBreath());
        }
        echartsVO.setMonthList(getLastSixElements(monthList));
        echartsVO.setHeightList(getLastSixElements(heightList));
        echartsVO.setWeightList(getLastSixElements(weightList));
        echartsVO.setBloodLipid(getLastSixElements(bloodLipid));
        echartsVO.setBloodSugar(getLastSixElements(bloodSugar));
        echartsVO.setLeftEyes(getLastSixElements(leftEyes));
        echartsVO.setRightEyes(getLastSixElements(rightEyes));
        echartsVO.setLeftXue(getLastSixElements(leftXue));
        echartsVO.setRightXue(getLastSixElements(rightXue));
        echartsVO.setUlseRate(getLastSixElements(ulseRate));
        echartsVO.setHeartRate(getLastSixElements(heartRate));
        echartsVO.setBreath(getLastSixElements(breath));
        return ReturnMsg.ok(echartsVO);
    }

    public static <t> List<t> getLastSixElements(List<t> list) {
        if(CollectionUtil.isEmpty(list)) return list;
        int size = list.size();
        int startIndex = Math.max(0, size - 6);
        return list.subList(startIndex, size);
    }

    @GetMapping("/all/users")
    public ReturnMsg allTypes() {
        List<BaseSelectEntity> list = new ArrayList<>();
        List<StudentDTO> dtos = studentService.list();
        for (StudentDTO dto : dtos) {
            BaseSelectEntity baseSelectEntity = new BaseSelectEntity();
            baseSelectEntity.setKey(dto.getId());
            baseSelectEntity.setValue(dto.getStuName());
            list.add(baseSelectEntity);
        }
        return ReturnMsg.ok(list);
    }
}

