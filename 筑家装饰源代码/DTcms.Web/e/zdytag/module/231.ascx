<% @ Control  Language="C#" Inherits="PageAdmin.patag"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<dl class="sy_zxal_box fadedown">
  <dd>
    <div class="zxal_box"><span class="zxal_sign"><span>装修案例</span><i></i></span></div>
    <div><% @ Register TagPrefix="ascx" TagName="M_0" src="/e/zdymodel/article/module/177.ascx"%><ascx:M_0 runat="server" TagSiteId=1 SiteId=1 ZdyTag=1 ModuleId="231_0" TagTable="article" TagSortId=730 SqlOrder="order by " SqlCondition="and has_titlepic=1" ShowNum=6 TagZtId=0 TitleNum=50 TitlePicWidth=150 TitlePicHeight=150 TheTarget="_self"/></div>
  </dd>
</dl>

<dl class="sy_xcsp_box">
  <dd>
    <div class="zxal_box"><span class="zxal_sign"><span>宣传视频</span><i></i></span></div>
    <div class="xcsp_con fadeup">
      <video  class="video-js vjs-default-skin sy_sp" controls preload="none" poster="/e/css/images/video.jpg">
        <source src="/e/css/images/video.mp4" type="video/mp4" />
        您的浏览器不支持Video标签。
      </video>
    </div>
  </dd>
</dl>

<%End();%>