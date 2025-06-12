package com.psychology.api.controller;

import com.psychology.api.common.ReturnMsg;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.UUID;

/**
 * @description: 通用文件上接口
 * @author: wuming
 * @create: 2023-04-15 16:26:32
 **/
@RestController
@RequestMapping("/upload")
@Slf4j
public class UploadController {

    @Value("${new-tomcat.folder}")
    private String newTomcatFolder;

    @Value("${new-tomcat.host}")
    private String newTomcatHost;

    /**
     * 通用的本地文件上传
     *
     * @param multipartFile 文件对象
     * @return 文件访问链接URL
     */
    @PostMapping("/file")
    public ReturnMsg uploadImg(@RequestParam("file") MultipartFile multipartFile) {
        // 文件后缀
        String suffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".") + 1);
        File savePathFile = new File(newTomcatFolder);
        if (!savePathFile.exists()) {
            // 若不存在该目录，则创建目录
            savePathFile.mkdir();
        }
        // 通过UUID生成唯一文件名
        String filename = UUID.randomUUID() + "." + suffix;
        try {
            // 将文件保存指定目录
            multipartFile.transferTo(new File(newTomcatFolder + filename));
        } catch (Exception e) {
            e.printStackTrace();
            return ReturnMsg.error("保存文件异常");
        }
        // 返回访问链接
        return ReturnMsg.ok(newTomcatHost + filename);
    }


    @PostMapping("/file1")
    public ReturnMsg uploadImg1(@RequestParam("file") MultipartFile multipartFile) {
        // 文件后缀
        String suffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".") + 1);
        File savePathFile = new File(newTomcatFolder);
        if (!savePathFile.exists()) {
            // 若不存在该目录，则创建目录
            savePathFile.mkdir();
        }
        // 通过UUID生成唯一文件名
        String filename = UUID.randomUUID() + "." + suffix;
        try {
            // 将文件保存指定目录
            multipartFile.transferTo(new File(newTomcatFolder + filename));
        } catch (Exception e) {
            e.printStackTrace();
            return ReturnMsg.error("保存文件异常");
        }
        // 返回访问链接
        return ReturnMsg.ok(filename);
    }

}
