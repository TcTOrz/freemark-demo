<!DOCTYPE html PUBLIC "-//OPENHTMLTOPDF//DOC XHTML Character Entities Only 1.0//EN" "">
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>PDF</title>
    <style>
        @page {
            size: 1100px 1200px;
            -fs-max-overflow-pages: 10; /* 0 by default */
            -fs-overflow-pages-direction: ltr; /* Also available is rtl */
            @top-left {

                /* 分页页数 */
                /*content: "Page33" counter(page) " of " counter(pages);*/
                background-image: url("${logoUrl}");
                background-size: contain;
                background-repeat: no-repeat;
                background-position: left;
                width: 50%;
            }
            @bottom-center {
              content: counter(page);
            }
            @top-right {
              width: 50%;
              content: element(ph);
            }
        }

        p.pageHeader{
          position: running(ph);
        }

        .clearfix:after {
            content: "";
            display: block;
            clear: both;
        }

        @media print {
            .page-break-before {
                page-break-before: always;
            }
        }

        .divider {
            width: 950px;
            border-bottom: 1px solid #333333;
            border-radius: 2px 2px 2px 2px;
            margin: 24px auto;
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

        hr {
            margin: 24px 0;
        }

        /*table {*/
        /*    page-break-inside: avoid;*/
        /*    -fs-table-paginate: paginate;*/
        /*    -fs-page-break-min-height: 1.5cm;*/
        /*}*/

        table td {
            padding: 10px 10px 10px 14px;
            word-wrap: break-word;
            word-break: break-all;
            white-space: normal;
        }

        .images {
            margin-top: 24px;
        }

        .images img {
            width: 100%;
            height: 1050px;
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
            width: 950px;
            margin: 0 auto;
            background: #fff;
            color: #333333;
        }
    </style>
</head>

<body>
<#if enterpriseNameCn??>
  <p class="pageHeader" style="text-align:right;">
    <div>${enterpriseNameCn}</div>
    <#if enterpriseNameEn??>
      <div>${enterpriseNameEn}</div>
    </#if>
  </p>
</#if>
<#escape x as x?html>
  <div class="container">
    <div class="page">
        <p style="text-align: center;margin-top: 16px; margin-bottom: 48px;">
            <span style="color: #333333; font-size: 32px;"><strong>会议签到表</strong></span>
        </p>
        <#--  <div class="divider"></div>  -->

        <table style="border-collapse: collapse; table-layout: fixed; width: 100%" border="1" cellpadding="0">
          <tbody>
            <tr style="height: 36px" >
              <td style="width: 20%; text-align: left; vertical-align: middle" colspan="1">
                <span style="color: #333333; font-size: 14px"><strong>会议主题</strong></span>
              </td>
              <td style="width: 80%; vertical-align: middle" colspan="4">
                <span style="color: #333333; font-size: 14px;">${topic}</span>
              </td>
            </tr>
            <tr style="height: 36px">
              <td style="width: 20%; text-align: left; vertical-align: middle" colspan="1">
                <span style="color: #333333; font-size: 14px;"><strong>会议地点</strong></span>
              </td>
              <td style="width: 80%; vertical-align: middle" colspan="4">
                <span style="color: #333333; font-size: 14px;">${meetingAddress}</span>
              </td>
            </tr>
            <tr style="height: 36px">
              <td style="width: 20%; text-align: left; vertical-align: middle" colspan="1">
                <span style="color: #333333; font-size: 14px" ><strong>会议日期</strong></span>
              </td>
              <td style="width: 80%; vertical-align: middle" colspan="4">
                <span style="color: #333333; font-size: 14px;">${planDateStr}</span>
              </td>
            </tr>
            <tr style="height: 36px">
              <td style="vertical-align: middle; text-align: center; background: #e3e3e3; font-size: 14px;"><strong>序号</strong></td>
              <td style="vertical-align: middle; text-align: center; background: #e3e3e3; font-size: 14px;"><strong>姓名</strong></td>
              <td style="vertical-align: middle; text-align: center; background: #e3e3e3; font-size: 14px;"><strong>医院</strong></td>
              <td style="vertical-align: middle; text-align: center; background: #e3e3e3; font-size: 14px;"><strong>科室</strong></td>
              <td style="vertical-align: middle; text-align: center; background: #e3e3e3; font-size: 14px;"><strong>签名</strong></td>
            </tr>
            <#list meetingSignInList as item>
              <tr style="height: 36px">
                <td style="vertical-align: middle; text-align: center; font-size: 14px;">${item.index}</td>
                <td style="vertical-align: middle; text-align: center; font-size: 14px;">${item.name}</td>
                <td style="vertical-align: middle; text-align: center; font-size: 14px;">${item.hospital}</td>
                <td style="vertical-align: middle; text-align: center; font-size: 14px;">${item.dept}</td>
                <td></td>
              </tr>
            </#list>
          </tbody>
        </table>
    </div>
    <div>
    </div>
  </div>
</#escape>

</body>
<object type="watermark"></object>

</html>
