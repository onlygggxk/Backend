package com.psychology.api.service;

import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @author azhou
 * @apiNote
 */

public class ApiService {

    public static String query(String content) {
        String result = "";
        String host = "https://www.azhou.cloud/blog/smart";
        String path = "/send/question";
        try {
            HttpRequest request = HttpRequest.post(host + path);
            Map<String, String> params = new HashMap<>();
            params.put("question", content);
            request.body(JSONUtil.toJsonStr(params));
            HttpResponse execute = request.execute();
            if (execute.isOk()) {
                System.out.println(execute.body());
                result = handleResponse(execute.body());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return result;
        }
    }


    public static String handleResponse(String resp) {
        if (StrUtil.isEmpty(resp)) return null;
        JSONObject object = null;
        try {
            object = JSONUtil.parseObj(resp);
        } catch (Exception e) {
            return null;
        }
        if (200 != object.getInt("code")) {
            return null;
        }
        return object.getStr("data");
    }


}
