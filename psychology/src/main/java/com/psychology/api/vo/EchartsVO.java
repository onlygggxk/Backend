package com.psychology.api.vo;

import com.psychology.api.dto.HealthyDTO;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class EchartsVO {

    private List<HealthyDTO> healthyDTOS;

    private List<String> monthList;

    private List<Double> heightList;

    private List<Double> weightList;

    private List<String> bloodSugar;

    private List<String> bloodLipid;

    private List<String> leftEyes;

    private List<String> rightEyes;

    private List<String> leftXue;

    private List<String> rightXue;

    private List<String> ulseRate;

    private List<String> heartRate;

    private List<String> breath;


}
