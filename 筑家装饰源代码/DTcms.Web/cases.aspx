<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cases.aspx.cs" Inherits="DTcms.Web.cases" %>

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
        <div class="page_style sublanmupage page_l86_sl833">
            <uc1:top runat="server" ID="top" />
            <script type="text/javascript">var IsPageHome = ""; var Lanmu_Id = "86"; var Sublanmu_Id = "833"; ShowSubMenu(Lanmu_Id);</script>
            <div class="banner">
                <script src="/e/d/slide_15.js" type="text/javascript"></script>
            </div>
            <div class="main_box main_box_style1">
                <div class="main_box_inner">
                    <div class="main_box_inner_left">
                        <div id="nav_133" class="nav_box nav_box_menu">
                            <div class="nav_title"><span class="nav_sign">作品集锦</span><span class="nav_more"></span></div>
                            <div id="nav_menu_133" class="nav_menu">
                                <ul id="rootul_133">
                                    <asp:Repeater ID="repMenu" runat="server">
                                        <ItemTemplate>
                                            <li id="<%# Eval("id") %>"><a href="/cases.aspx?channel_id=7&category_id=<%# Eval("id") %>" class="sla833"><%# Eval("title") %> </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <script type="text/javascript">Initialization_Nav("rootul_133", "sl833", "0");</script>
                    </div>
                    <div class="main_box_inner_right">
                        <div class="current_location current_location_833">
                            <ul>
                            </ul>
                        </div>
                        <div class="sublanmu_box sublanmu_box_833">
                            <div class="sublanmu_content sublanmu_content_product">
                                <ul class="tpzs_box">
                                    <asp:Repeater ID="repProject" runat="server">
                                        <ItemTemplate>
                                            <li class="animates4 col-sm-3 col-xs-6">
                                                <a class="pic" href="/CasesDetails.aspx?id=<%# Eval("id") %>">
                                                    <img src="<%# Eval("img_url") %>" /></a>
                                                <a class="tpzs_title" href="/CasesDetails.aspx?id=<%# Eval("id") %>"><%# Eval("title") %></a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
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
