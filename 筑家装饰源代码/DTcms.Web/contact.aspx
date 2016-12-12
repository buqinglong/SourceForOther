<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="DTcms.Web.contact" %>

<%@ Register Src="~/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/top.ascx" TagPrefix="uc1" TagName="top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>青岛筑家装饰有限公司</title>
    <meta name="keywords" content="青岛筑家装饰有限公司" />
    <meta name="description" content="青岛筑家装饰有限公司" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link href="/e/templates/161005/style.css" type="text/css" rel="stylesheet" />
    <script src="/e/js/jquery.min.js" type="text/javascript"></script>
    <script src="/e/js/comm.js" type="text/javascript"></script>
    <script src="/e/js/zh-cn/lang.js" type="text/javascript"></script>
    <link href="/e/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/e/bootstrap/js/bootstrap.min.js"></script>
    <script src="/e/bootstrap/diy.js"></script>
    <script src="/e/js/xgcj/wow.min.js" type="text/javascript"></script>
    <link href="/e/bootstrap/dropdown.css" rel="stylesheet" />
    <link rel="stylesheet" href="/e/js/xgcj/video-js.css" type="text/css" />
    <script src="/e/js/xgcj/video.js" type="text/javascript"></script>
    <script src="/e/js/script.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
             <script src="/e/bootstrap/js/html5shiv.js"></script>
             <script src="/e/bootstrap/js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/e/js/xgcj/lightbox.css" media="screen" />
    <script src="/e/js/xgcj/lightbox-2.6.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".menu_box").children("ul").prepend('<li class="bddh_box"><a href="tel:552"><i class="iconfont">&#xf01ef;</i>4000-123-456</a></li>')
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page_style sublanmupage page_l65_sl534">
            <uc1:top runat="server" ID="top" />
            <script type="text/javascript">var IsPageHome = ""; var Lanmu_Id = "65"; var Sublanmu_Id = "534"; ShowSubMenu(Lanmu_Id);</script>
            <div class="banner">
                <script src="/e/d/slide_15.js" type="text/javascript"></script>
            </div>
            <div class="main_box main_box_style">
                <div class="main_box_inner">
                    <div class="current_location current_location_534">
                        <ul>
                        </ul>
                    </div>
                    <div class="sublanmu_box sublanmu_box_534">
                        <div class="sublanmu_content sublanmu_content_introduct">
                            <ul style="clear: both; overflow: hidden; margin-bottom: 30px;">
                                <li class="col-sm-6 col-xs-12">
                                    <h2>青岛筑家装饰有限公司</h2>
                                    联系电话：0532-88888888<br />
                                    传真：0532-88888888<br />
                                    QQ：315475117 315475117<br />
                                    Email：315475117@qq.com<br />
                                    地址：青岛市崂山区高科园装饰城12楼
                                    <br />
                                </li>
                                <li class="col-sm-6 col-xs-12">
                                    <%--预留二维码位置--%>
                                </li>
                            </ul>
                            <iframe src="map.html" width="900" height="600" frameborder="0" scrolling="no"></iframe>
                        </div>
                    </div>
                </div>
                <div class="clear main_box_inner_bottom"></div>
            </div>
            <uc1:bottom runat="server" ID="bottom" />
        </div>
    </form>
</body>
</html>
