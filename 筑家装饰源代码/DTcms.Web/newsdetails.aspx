<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsdetails.aspx.cs" Inherits="DTcms.Web.newsdetails" %>

<%@ Register Src="~/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/top.ascx" TagPrefix="uc1" TagName="top" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>青岛筑家装饰有限公司</title>
    <meta name="keywords" content="青岛筑家装饰有限公司" />
    <meta name="description" content="青岛筑家装饰有限公司" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
        <div class="page_style detailpage page_l63_sl840">
            <uc1:top runat="server" ID="top" />
            <script type="text/javascript">var IsPageHome = ""; var Lanmu_Id = "63"; var Sublanmu_Id = "840"; ShowSubMenu(Lanmu_Id);</script>
            <div class="banner">
                <script src="/e/d/slide_15.js" type="text/javascript"></script>
            </div>
            <div class="main_box main_box_style1">
                <div class="main_box_inner">
                    <div class="main_box_inner_left">
                        <div id="nav_105" class="nav_box nav_box_menu">

                            <div class="nav_title"><span class="nav_sign">新闻资讯</span><span class="nav_more"></span></div>
                            <div id="nav_menu_105" class="nav_menu">
                                <ul id="rootul_105">
                                    <asp:Repeater ID="repMenu" runat="server">
                                        <ItemTemplate>
                                            <li id="<%# Eval("id") %>"><a href="/news.aspx?channel_id=9&category_id=<%# Eval("id") %>" class="sla833"><%# Eval("title") %> </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <script type="text/javascript">Initialization_Nav("rootul_105", "sl840", "0");</script>
                    </div>
                    <div class="main_box_inner_right">
                        <div class="current_location current_location_840">
                            <ul>
                            </ul>
                        </div>
                        <div class="sublanmu_box sublanmu_box_840" id="sublanmu_box">
                            <div class="sublanmu_content" id="sublanmu_content">

                                <div class="articleinfor" id="articleinfor">
                                    <ul>
                                        <li class="title">
                                            <h1>
                                                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
                                            </h1>
                                        </li>
                                        <li class="info">发布日期：
                                            <asp:Label ID="lblDatetime" runat="server" Text=""></asp:Label>&nbsp;&nbsp;

                                       &nbsp;&nbsp;&nbsp;&nbsp;字号：[&nbsp;<a href="javascript:FontZoom('16px','Content')">大</a> <a href="javascript:FontZoom('14px','Content')">中</a>  <a href="javascript:FontZoom('12px','Content')">小</a>]
                                        </li>
                                    </ul>
                                    <!---->
                                    <div class="content" id="Content">
                                        <asp:Label ID="lblContent" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <script src="/e/js/internal_page.js" type="text/javascript"></script>

                                <ul class="sublanmu_pn">
                                </ul>
                                <script type="text/javascript">Get_Info("article", "659")</script>
                            </div>
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
