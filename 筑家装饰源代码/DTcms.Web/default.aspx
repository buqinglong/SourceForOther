<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DTcms.Web._default" %>

<%@ Register Src="~/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>青岛筑家装饰有限公司</title>
    <meta name="keywords" content="青岛筑家装饰有限公司" />
    <meta name="description" content="青岛筑家装饰有限公司" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
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
        <div class="page_style lanmupage page_l61">
            <uc1:top runat="server" ID="top" />
            <script type="text/javascript">var IsPageHome = "1"; var Lanmu_Id = "61"; var Sublanmu_Id = "0"; ShowSubMenu(Lanmu_Id);</script>
            <div class="banner">
                <script src="/e/d/slide_12.js" type="text/javascript"></script>
            </div>
            <div class="main_box main_box_style">
                <div class="main_box_inner">
                    <ul class="sy_gtwm_box fadeup">
                        <li class="col-sm-3">
                            <a href="about.aspx?channel_id=11&category_id=25">
                                <i>
                                    <img src="/e/css/images/gywm1.jpg" /></i>
                                <h3>关于我们</h3>
                                <span>
                                    <asp:Label ID="lblAboutUs" runat="server" Text=""></asp:Label></span>
                            </a>
                        </li>
                        <li class="col-sm-3">
                            <a href="about.aspx?channel_id=11&category_id=55">
                                <i>
                                    <img src="/e/css/images/gywm2.jpg" /></i>
                                <h3>资质证书</h3>
                                <span>
                                    <asp:Label ID="lblCard" runat="server" Text=""></asp:Label></span>
                            </a>
                        </li>
                        <li class="col-sm-3">
                            <a href="about.aspx?channel_id=11&category_id=54">
                                <i>
                                    <img src="/e/css/images/gywm3.jpg" /></i>
                                <h3>设计团队</h3>
                                <span>
                                    <asp:Label ID="lblTeam" runat="server" Text=""></asp:Label></span>
                            </a>
                        </li>
                        <li class="col-sm-3">
                            <a href="about.aspx?channel_id=11&category_id=56">
                                <i>
                                    <img src="/e/css/images/gywm4.jpg" /></i>
                                <h3>服务流程</h3>
                                <span>
                                    <asp:Label ID="lblServiceProcess" runat="server" Text=""></asp:Label></span>
                            </a>
                        </li>
                    </ul>


                    <ul class="sy_gywmjj_box fadedown">
                        <li class="col-sm-6 zdy_left">
                            <img src="/e/css/images/tp.jpg" /></li>
                        <li class="col-sm-6 zdy_right">
                            <h3 class="gywmjj_title">关于我们</h3>
                            <div class="gywmjj_con">
                                <asp:Label ID="lblAboutUsContent" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="wc_more"><a class="mk_more" href="about.aspx?channel_id=11">查看更多</a></div>
                        </li>
                    </ul>


                    <ul class="sy_sjtd_box fadeup">
                        <li class="col-sm-6 zdy_left">
                            <h3 class="gywmjj_title">设计团队</h3>
                            <div class="gywmjj_con">
                                <asp:Label ID="lblTeamContent" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="wc_more"><a class="mk_more" href="about.aspx?channel_id=11&category_id=54">查看更多</a></div>
                        </li>
                        <li class="col-sm-6 zdy_right">
                            <script src="/e/d/slide_18.js" type="text/javascript"></script>
                        </li>
                    </ul>

                    <dl class="sy_zxal_box fadedown">
                        <dd>
                            <div class="zxal_box"><span class="zxal_sign"><span>精品工程</span><i></i></span></div>
                            <div>
                                <ul class="mk_zxal_box">
                                    <asp:Repeater ID="repProjects" runat="server">
                                        <ItemTemplate>
                                            <li class="col-lg-2 col-sm-4 col-xs-6">
                                                <a href="projectdetails.aspx?id=<%# Eval("id")%>">
                                                    <div class="zxal_pic">
                                                        <img src="<%# Eval("img_url")%>" />
                                                    </div>
                                                    <div class="zxal_ll"><span><%# Eval("title")%></span><i>【 · 浏览 · 】</i></div>
                                                    <em class="zxal_bg"></em>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </dd>
                    </dl>

                    <%--  <dl class="sy_xcsp_box">
                        <dd>
                            <div class="zxal_box"><span class="zxal_sign"><span>宣传视频</span><i></i></span></div>
                            <div class="xcsp_con fadeup">
                                <video class="video-js vjs-default-skin sy_sp" controls preload="none" poster="/e/css/images/video.jpg">
                                    <source src="/e/css/images/video.mp4" type="video/mp4" />
                                    您的浏览器不支持Video标签。
                                </video>
                            </div>
                        </dd>
                    </dl>--%>
                    <div id="module_232" class="module_box">
                        <div class="module_box_inner">
                            <div class="module_title"><span class="module_sign"><span>新闻资讯</span><i></i></span><span class="module_more"></span></div>
                            <div id="module_content_232" class="module_content">
                                <ul class="mkmx_twlb">
                                    <asp:Repeater ID="repNews" runat="server">
                                        <ItemTemplate>
                                            <li class="col-sm-3 animates4">
                                                <span class="pic"><a href="newsdetails.aspx?id=<%# Eval("id")%>">
                                                    <img src="<%# Eval("img_url")%>" style="width: 265px; height: 150px" /></a></span>
                                                <div class="con">
                                                    <a class="title" href="newsdetails.aspx?id=<%# Eval("id")%>"><%# Eval("title")%></a>
                                                    <div class="date"><%# string.Format( "{0:yyyy-MM-dd HH:mm:ss}",Eval("add_time"))%></div>
                                                    <div class="introduction"><%# Eval("zhaiyao")%></div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <div class="module_footer"><span class="l"></span><span class="r"></span></div>
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
