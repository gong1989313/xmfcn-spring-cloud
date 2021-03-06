<#macro commonStyle>

<#-- favicon -->
	<link rel="icon" href="/jobadmin/favicon.ico"/>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/jobadmin/adminlte/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"> -->
    <link rel="stylesheet" href="/jobadmin/plugins/font-awesome-4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> -->
    <link rel="stylesheet" href="/jobadmin/plugins/ionicons-2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/jobadmin/adminlte/dist/css/AdminLTE-local.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/jobadmin/adminlte/dist/css/skins/_all-skins.min.css">
      
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <link rel="stylesheet" href="/jobadmin/treeview/bootstrap-treeview.css">
	<!-- pace -->
	<link rel="stylesheet" href="/jobadmin/plugins/pace/themes/pace-theme-flash.css">

<#-- i18n -->
    <#global I18n = I18nUtil.getMultString()?eval />

</#macro>

<#macro commonScript>
	<!-- jQuery 2.1.4 -->
	<script src="/jobadmin/adminlte/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="/jobadmin/adminlte/bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="/jobadmin/adminlte/plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/jobadmin/adminlte/dist/js/app.min.js"></script>
<#-- jquery.slimscroll -->
	<script src="/jobadmin/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>

    <!-- pace -->
    <script src="/jobadmin/plugins/pace/pace.min.js"></script>

<#-- layer -->
	<script src="/jobadmin/plugins/layer/layer.js"></script>

<#-- common -->
<script src="/jobadmin/treeview/bootstrap-treeview.js"></script>

 <script src="/jobadmin/js/common.1.js"></script>
    <script>
        var base_url = '${request.contextPath}/jobadmin';
		if(base_url.indexOf("https")<0)
		{
            base_url=base_url.replace('http','https')
		}
		if(base_url.indexOf("https")<0)
		{
            base_url=base_url.replace('http','https')
		}
        var I18n = ${I18nUtil.getMultString()};
    </script>

</#macro>
<#--
导航参考目录  https://www.cnblogs.com/chenhtblog/p/8507752.html
-->
<#macro commonHeader>
	<header class="main-header">
        <a href="${request.contextPath}/jobadmin/" class="logo">
            <span class="logo-mini"><b>MZ</b></span>
            <span class="logo-lg"><b>${I18n.admin_name}</b></span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"><span
                    class="sr-only">切换导航</span></a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href=";" id="logoutBtn" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <span class="hidden-xs">${I18n.logout_btn}</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
</#macro>

<#macro commonLeft pageName >
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="menu_header">菜单</li>
                <ul class="sidebar_menu_list">
                    <li class="nav-click <#if pageName == "index">active</#if>" ><a href="${request.contextPath}/jobadmin/"><i class="fa fa-circle-o text-aqua"></i><span>${I18n.job_dashboard_name}</span></a></li>
                    <li class="nav-click <#if pageName == "jobinfo">active</#if>" ><a href="${request.contextPath}/jobadmin/jobinfo"><i class="fa fa-circle-o text-yellow"></i><span>${I18n.jobinfo_name}</span></a></li>
                    <li class="nav-click <#if pageName == "joblog">active</#if>" ><a href="${request.contextPath}/jobadmin/joblog"><i class="fa fa-circle-o text-green"></i><span>${I18n.joblog_name}</span></a></li>
                    <li class="nav-click <#if pageName == "jobgroup">active</#if>" ><a href="${request.contextPath}/jobadmin/jobgroup"><i class="fa fa-circle-o text-red"></i><span>${I18n.jobgroup_name}</span></a></li>
                    <li class="nav-click <#if pageName == "help">active</#if>" ><a href="${request.contextPath}/jobadmin/help"><i class="fa fa-circle-o text-gray"></i><span>${I18n.job_help}</span></a></li>
                    <li class="nav-click <#if pageName == "dict">active</#if>" ><a href="${request.contextPath}/jobadmin/dict"><i class="fa fa-circle-o text-orange"></i><span>${I18n.dict_name}</span></a></li>
                    <li class="nav-click <#if pageName == "dict">active</#if>" ><a href="${request.contextPath}/jobadmin/jobMenu"><i class="fa fa-circle-o text-orange"></i><span>菜单</span></a></li>
                </ul>
            </ul>
	   <#-- <#list menuList as c>
			<ul class="sidebar-menu">
                <li class="menu_header">${c.name}</li>
                <ul class="sidebar_menu_list">
	               <#list menuSecList as c1>
				   <li class="nav-click active"><a
                           href="${request.contextPath}/${c1.url}"><i
                           class="fa fa-circle-o text-aqua"></i><span>${c1.name}</span></a></li>
                   </#list>
                &lt;#&ndash;
                 &ndash;&gt;

                </ul>
            </ul>
        </#list>-->
        </section>
        <!-- /.sidebar -->
    </aside>
</#macro>

<#macro commonFooter >
	<footer class="main-footer">
        <b>MF-JOB</b> ${I18n.admin_version}
        <div class="pull-right hidden-xs">
            <strong>Copyright &copy; 2015-${.now?string('yyyy')} &nbsp;
                <a href="https://xmf.cn" target="_blank">小蜜蜂</a>
            </strong><!-- All rights reserved. -->
        </div>
    </footer>
</#macro>