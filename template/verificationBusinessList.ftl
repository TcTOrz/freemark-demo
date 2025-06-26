<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta http-equiv="Expires" content="0"/>
  <meta http-equiv="Pragma" content="no-cache"/>
  <meta http-equiv="Cache-control" content="no-cache"/>
  <meta http-equiv="Cache" content="no-cache"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>PDF</title>
  <style>
    @page {
      size: 1100px 1200px;
    }
    object[type="watermark"] {
      position: fixed;
      display: block;
      width: 100%;
      height: 100%;
      transform: rotate(-45deg);
      z-index: 1000;
      left: 0;
      top: 0;
    }
    * {
      margin: 0;
      padding: 0;
    }
    body {
      font-family: 'Source Han Sans', 'Emoji';
      font-size: 16px;
      line-height: 1.5;
    }
    .container {
      background: #fff;
    }
    .public-header {
      padding-bottom: 14px;
      padding-top: 40px;
      border-bottom: 1px solid #333333;
    }
    .public-header-tltle {
      color: #333;
      font-size: 24px;
      font-weight: 500;
      position: relative;
      padding-left: 1px;
      display: inline;
    }
    .pt16 {
      padding-top: 16px;
    }
    .basic-info-main label {
      padding-left: 16px;
    }
    .basic-info-main span {
      padding-left: 8px;
    }
    .basicInfo-main {
      width: 100%;
      height: 36px;
      line-height: 36px;
      margin-right: 1%;
    }
    .basicInfo-main label {
      font-size: 14px;
      font-weight: 500;
      color: #333333;
      float: left;
    }
    .basicInfo-main span {
      font-size: 14px;
      font-weight: 400;
      color: #666666;
      float: left;
    }
    .custom-info {
      margin-top: 16px;
    }
    .custom-info-body {
      margin-top: 24px;
      width: 100%;
    }
    .temp-text {
      margin-left: 1%;
      margin-bottom: 24px;
      clear: both;
    }
    .temp-text .temp-title {
      font-size: 14px;
      font-weight: 400;
      color: #333333;
      line-height: 20px;
    }
    .temp-text .temp-desc {
      font-size: 14px;
      font-weight: 400;
      color: #666666;
      line-height: 20px;
      margin-top: 8px;
    }
    .temp-text .temp-list {
      margin-top: 8px;
    }
    .temp-text .temp-list .temp-li {
      padding: 0px 14px;
      border: 1px solid #f5f5f5;
      margin-top: 4px;
      height: 36px;
      line-height: 36px;
      page-break-inside: avoid;
    }
    .temp-li .temp-li-T {
      display: inline-block;
      width: 90%;
    }
    .temp-li .temp-li-B {
      display: inline-block;
      padding-left: 10px;
    }
    .temp-text .temp-list .temp-li span {
      font-size: 14px;
      font-weight: 400;
      color: #333333;
      line-height: 20px;
    }
    .temp-text .temp-list .temp-li span:last-child {
      color: #1ab370;
      cursor: pointer;
    }
    .temp-mp4-li {
      float: left;
      padding: 16px;
      margin-top: 8px;
      border: 1px solid #f5f5f5;
      margin-right: 20px;
      width: 136px;
      height: 156px;
      box-sizing: border-box;
      margin-bottom: 24px;
    }
    .temp-mp4-li .temp-mp4-img {
      border: 1px solid #f5f5f5;
      width: 104px;
      height: 104px;
    }
    .temp-mp4-li .temp-mp4-btn {
      color: #1ab370;
      cursor: pointer;
      font-size: 14px;
      font-weight: 400;
      line-height: 20px;
      text-align: center;
      padding-top: 8px;
    }
    .temp-mp4-li .temp-mp4-img img {
      width: 100%;
      height: 100%;
    }
    .temp-img-li {
      width: 600px;
      height: 100%;
      margin-top: 16px;
    }
    .temp-img-li img {
      max-width: 100%;
      max-height: 400px;
    }
  </style>
</head>
<body>
<#escape x as x?html>
  <div class="container">
    <div class="container-all">
      <div class="basic-info">
        <div class="public-header">
          <span class="public-header-tltle">
            <a style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
            基础信息
          </span>
        </div>
        <div class="basic-info-main pt16">
          <div class="basicInfo-main">
            <label>核销业务名称：</label>
            <span>${bizName!''}</span>
          </div>
          <#--  <div class="basicInfo-main">
            <label>省区：</label>
            <span>${province!''}</span>
          </div>  -->
          <div class="basicInfo-main">
            <label>申请人：</label>
            <span>${applierName!''}</span>
          </div>
          <#if fields?? && (fields?size > 0)>
            <#list fields as field>
              <div class="basicInfo-main">
                <label>${field.name!''}：</label>
                <span>${field.value!''}</span>
              </div>
            </#list>
          </#if>
          <div class="basicInfo-main">
            <label>提交时间：</label>
            <span>${createTimeStr!''}</span>
          </div>
        </div>
      </div>
      <div class="custom-info">
        <div class="public-header">
          <span class="public-header-tltle">
            <a style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
            其他信息
          </span>
        </div>
        <div class="custom-info-body">
          <#if controls ??>
            <#list controls as control>
              <#if control.controlTypeName !='IMAGE' && control.controlTypeName !='VIDEO' && control.controlTypeName !='FILE'>
                <div class="temp-text">
                  <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333;">
                    ${control.controlName}：
                  </div>
                  <div class="temp-desc" style="font-size: 14px; font-weight: 400; color: #666666;">
                    ${control.inputValue}
                  </div>
                </div>
              </#if>
              <#if control.controlTypeName=='FILE'>
                <div class="temp-text">
                  <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333;">
                    ${control.controlName}：
                  </div>
                  <div class="temp-list">
                    <#if control.inputValue ?? && (control.inputValue?size>0)>
                      <#list control.inputValue as file>
                        <div class="temp-li">
                          <span class="temp-li-T">
                            ${file.name}
                          </span>
                          <span class="temp-li-B">
                            <a style="text-decoration: none; color: #1ab370;" href="${file.url}">点击预览</a>
                          </span>
                        </div>
                      </#list>
                    </#if>
                  </div>
                </div>
              </#if>
              <#if control.controlTypeName=='VIDEO'>
                <div class="temp-text">
                  <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333;">
                    ${control.controlName}：
                  </div>
                  <div class="temp-mp4">
                    <#if control.inputValue ?? && (control.inputValue?size> 0)>
                      <#list control.inputValue as video>
                        <div class="temp-mp4-li">
                          <div class="temp-mp4-img">
                            <#if video.thumb?? && video.thumb != "">
                              <img src="${video.thumb}" alt=""/>
                            <#else>
                              <img src="https://representative-1252497236.cos.accelerate.myqcloud.com/pdf_html/%E8%A7%86%E9%A2%91%E7%BC%A9%E7%95%A5%E5%9B%BE104px.jpg" alt=""/>
                            </#if>
                          </div>
                          <div class="temp-mp4-btn">
                            <a style="text-decoration: none; color: #1ab370;" href="${video.url}">点击预览</a>
                          </div>
                        </div>
                      </#list>
                  </#if>
                  </div>
                </div>
              </#if>
              <#if control.controlTypeName=='IMAGE'>
                <div class="temp-text">
                  <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333;">
                    ${control.controlName}：
                  </div>
                  <div class="temp-img">
                    <#if control.inputValue ?? && (control.inputValue?size> 0)>
                      <#list control.inputValue as image>
                        <div class="temp-img-li">
                          <img src="${image.url}" alt=""/>
                        </div>
                      </#list>
                    </#if>
                  </div>
                </div>
              </#if>
            </#list>
          </#if>
        </div>
      </div>
    </div>
  </div>
</#escape>
</body>
<object type="watermark"></object>
</html>
