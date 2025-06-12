package com.psychology.api.common;

import com.psychology.api.common.constants.ResultConstant;

import java.util.HashMap;
import java.util.Map;

/**
 * @description: 控制层返回给前端的统一信息
 * @author: wuming
 * @create: 2023-04-15 16:26:32
 */
public class ReturnMsg extends HashMap<String, Object> {

	public ReturnMsg() {
		put(ResultConstant.CODE, ResultConstant.RESULT_CODE_200);
	}

	public static ReturnMsg error() {
		return error(ResultConstant.RESULT_CODE_500, ResultConstant.DEFAULT_FAIL_MSG);
	}

	public static ReturnMsg error(String msg) {
		return error(ResultConstant.RESULT_CODE_500, msg);
	}

	public static ReturnMsg error(int code, String msg) {
		ReturnMsg returnMsg = new ReturnMsg();
		returnMsg.put(ResultConstant.CODE, code);
		returnMsg.put(ResultConstant.MSG, msg);
		return returnMsg;
	}

	public static ReturnMsg ok(Object data) {
		ReturnMsg returnMsg = new ReturnMsg();
		returnMsg.put(ResultConstant.MSG, ResultConstant.DEFAULT_SUCCESS_MSG);
		returnMsg.put(ResultConstant.DATA,data);
		return returnMsg;
	}

	public static ReturnMsg ok() {
		return ok(ResultConstant.DEFAULT_SUCCESS_MSG);
	}

	@Override
	public ReturnMsg put(String key, Object value) {
		super.put(key, value);
		return this;
	}

	public ReturnMsg putMap(Map<String, Object> map) {
		super.putAll(map);
		return this;
	}

}
