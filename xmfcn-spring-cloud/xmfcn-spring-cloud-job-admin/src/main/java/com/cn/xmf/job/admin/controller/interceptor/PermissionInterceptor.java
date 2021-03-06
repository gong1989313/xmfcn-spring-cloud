package com.cn.xmf.job.admin.controller.interceptor;

import com.cn.xmf.job.admin.controller.annotation.PermessionLimit;
import com.cn.xmf.job.admin.config.XxlJobAdminConfig;
import com.cn.xmf.job.admin.controller.annotation.PermessionLimit;
import com.cn.xmf.job.admin.core.util.CookieUtil;
import com.cn.xmf.util.StringUtil;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigInteger;

/**
 * 权限拦截, 简易版
 *
 * @author xuxueli 2015-12-12 18:09:04
 */
public class PermissionInterceptor {



	private static final String LOGIN_IDENTITY_KEY = "XXL_JOB_LOGIN_IDENTITY";
	private static final String LOGIN_IDENTITY_TOKEN=StringUtil.getUuId();

	public static boolean login(HttpServletResponse response, String username, String password, boolean ifRemember) {
		// do login
		CookieUtil.set(response, LOGIN_IDENTITY_KEY, LOGIN_IDENTITY_TOKEN, ifRemember);
		return true;
	}
	public static void logout(HttpServletRequest request, HttpServletResponse response) {
		CookieUtil.remove(request, response, LOGIN_IDENTITY_KEY);
	}
}
