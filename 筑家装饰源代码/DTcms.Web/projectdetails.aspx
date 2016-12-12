<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectdetails.aspx.cs" Inherits="DTcms.Web.projectdetails" %>

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
        <div class="page_style detailpage page_l86_sl833">
            <uc1:top runat="server" ID="top" />
            <script type="text/javascript">var IsPageHome = ""; var Lanmu_Id = "86"; var Sublanmu_Id = "833"; ShowSubMenu(Lanmu_Id);</script>
            <div class="banner">
                <script src="/e/d/slide_15.js" type="text/javascript"></script>
            </div>
            <div class="main_box main_box_style1">
                <div class="main_box_inner">
                    <div class="main_box_inner_left">
                        <div id="nav_133" class="nav_box nav_box_menu">

                            <div class="nav_title"><span class="nav_sign">精品工程</span><span class="nav_more"></span></div>
                            <div id="nav_menu_133" class="nav_menu">
                                <ul id="rootul_133">
                                    <asp:Repeater ID="repMenu" runat="server">
                                        <ItemTemplate>
                                            <li id="<%# Eval("id") %>"><a href="/project.aspx?channel_id=9&category_id=<%# Eval("id") %>" class="sla833"><%# Eval("title") %> </a></li>
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
                        <div class="sublanmu_box sublanmu_box_833" id="sublanmu_box">
                            <div class="sublanmu_content" id="sublanmu_content">
                                <script type="text/javascript" src="/e/js/zoom.js"></script>
                                <link href="/e/css/zoom.css" type="text/css" rel="stylesheet" />
                                <script type="text/javascript" src="/e/js/product.js"></script>

                                <div class="product_pic_infor">
                                    <ul>
                                        <li class="col-sm-5 col-xs-12">
                                            <div class="view" id="view" style="position: relative; width: 350px; height: 350px">
                                                <img class="zoom" src="" big="" border="0" id="picture" name="picture" runat="server" />
                                            </div>
                                            <div class="clear"></div>
                                            <!--缩略图区域--->
                                            <!--缩略图区域--->
                                        </li>
                                        <li class="col-sm-7 col-xs-12">
                                            <span class="title">
                                                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
                                            <div class="cpjj-box"></div>
                                            <asp:Label ID="lblzhaiyao" runat="server" Text=""></asp:Label>
                                        </li>
                                        <li class="clear"></li>
                                    </ul>
                                </div>
                                <div class="prodinfotab">
                                    <div class="tabheader">
                                        <dl class="tab_t" id="tab_t">
                                            <dd>详细内容</dd>
                                        </dl>
                                    </div>
                                    <div class="tabcontent">
                                        <dl class="tab_c" id="tab_c">
                                            <dd>
                                                <asp:Label ID="lblContent" runat="server" Text=""></asp:Label></dd>
                                        </dl>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    tabs("tab_t", "tab_c", "onclick")
                                    window.onload = function () { zoom({ width: 350, height: 350 }); }
                                </script>
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
