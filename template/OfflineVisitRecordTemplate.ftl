<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <style>
        @page {
            size: 1100px 1200px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Source Han Sans', 'Emoji';
            font-size: 16px;
            line-height: 1.5;
        }

        .mw70 {
            min-width: 70px;
        }

        .mw42 {
            min-width: 42px;
        }

        .mt16 {
            margin-top: 16px;
        }

        .mt48 {
            margin-top: 48px;
        }

        .ml70 {
            margin-left: 70px;
        }
        .mgb-16{
            display:block;
            height:30px;
            margin-bottom:16px;
        }
        .container {
            background: #fff;
            padding: 41px 55px 0;
            bx-sizing: border-box;
            padding-top: 28px;
        }

        .container .title {
            padding-bottom: 13px;
            border-bottom: 1px solid #333333;
            height: 59px;
            line-height: 59px;
            position: relative;
            width: 100%;
        }

        .container .title .name {
            font-size: 24px;
        }

        .container .title .visit-code {
            position: absolute;
            font-size: 14px;
            right: 15px;
            top: 0;
            white-space: nowrap;
        }

        .container .title .dot {
            display: inline-block;
            width: 10px;
            height: 10px;
            background: #1ab370;
            border-radius: 5px;
            margin-right: 10px;
            transform: translateY(-4px);
        }

        .container .line {
            width: 100%;
            height: 1px;
            background: #e5e5e5;
            border-radius: 2px;
            margin: 16px 0;
        }

        .container .basic-info {
            padding: 16px 0 0 0;
        }

        .container .basic-info label {
            padding-left: 16px;
        }

        .container .basic-info span {
            padding-left: 8px;
        }

        .container .basic-info .basicInfo-main-sponsor {
            clear: both;
            padding-top: 4px;
            padding-bottom: 4px;
        }

        .container .basic-info .basicInfo-main-time {
            height: 38px;
        }

        .container .basic-info .basicInfo-main-time .item {
            width: 49.3%;
            float: left;
        }

        .container .basic-info .basicInfo-main-timeR {
            width: 49%;
            min-height: 36px;
            line-height: 36px;
            background: #f9f9f9;
            float: left;
        }

        .container .basic-info .basicInfo-main-timeR-remark {
            padding-left: 70px;
        }

        .container .basic-info .basicInfo-main-timeR-remark label {
            margin-left: -70px;
        }

        .container .basic-info .basicInfo-main-timeR-remark span {
            padding-left: 0;
        }

        .container .basic-info .basicInfo-main-timeR label {
            font-size: 14px;
            font-weight: 500;
            color: #333333;
        }

        .container .basic-info .basicInfo-main-timeR span {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
        }

        .container .basic-info .basicInfo-main-sponsor-C {
            float: left;
            margin-right: 1%;
            background: #f9f9f9;
            width: 49%;
            margin-bottom: 4px;
            min-height: 36px;
            line-height: 36px;
            word-break: break-all;
            position: relative;
            padding-left: 70px;
        }

        .container .basic-info .basicInfo-main-sponsor-C label {
            font-size: 14px;
            min-width: 70px;
            font-weight: 500;
            display: block;
            float: left;
            margin-left: -70px;
        }

        .container .basic-info .basicInfo-main-sponsor-C span {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            display: block;
        }

        .container .basic-info .basicInfo-main-organizer {
            width: 99%;
            min-height: 494px;
            margin-top: 16px;
            padding-bottom: 16px;
            background-color: #f9f9f9;
        }

        .container .basic-info .basicInfo-main-organizer .img {
            width: 100%;
            height: 420px;
            background-color: #f9f9f9;
            padding-left: 94px;
            padding-top: 16px;
        }

        .container .basic-info .basicInfo-main-organizer .img img {
            width: 100%;
            height: 100%;
        }

        .container .basic-info .basicInfo-main-organizer label {
            font-size: 14px;
            min-width: 70px;
            display: block;
            font-weight: 500;
            float: left;
            height: 60px;
        }

        .container .basic-info .basicInfo-main-organizer span {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            margin-top: 4px;
            background: #f9f9f9;
            display: block;
        }

        .other-info-template {
            margin-top: 24px;
            width: 100%;
        }

        .other-info-template .other-info-T {
            font-size: 16px;
            font-weight: 500;
            color: #333333;
            line-height: 16px;
            margin-bottom: 16px;
        }

        .other-info-template .temp-text {
            margin-top: 24px;
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
            margin-top: 16px;
        }

        .temp-img-li img {
            width: 100%;
            height: 100%;
        }

        .basicInfo-main-organizer,
        .basicInfo-main-time,
        .basicInfo-main-sponsor,
        .temp-img-li,
        .temp-mp4-li,
        .temp-li,
        .temp-img,
        .page-break
         {
            page-break-inside:avoid;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="title">
        <div class="name"><i class="dot"></i> 基础信息</div>
        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!planCodeString?? || planCodeString == "" || !planCode?? || planCode == ""))>
            <div class="visit-code">${planCodeString} ${planCode}</div>
        </#if>
    </div>
    <div class="basic-info">
        <div class="basicInfo-main-sponsor">
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!planDateInfo?? || planDateInfo == ""))>
                <div class="basicInfo-main-sponsor-C">
                    <#if showPlanColumn?? && showPlanColumn==false>
                        <#if functionId?? && functionId == 41>
                            <label>巡店日期：</label>
                        <#else>
                            <label>拜访日期：</label>
                        </#if>
                    <#else>
                        <label>计划日期：</label>
                    </#if>
                    <span>${planDateInfo}</span>
                </div>
            </#if>
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!planTimeInfo?? || planTimeInfo == ""))>
                <div class="basicInfo-main-sponsor-C">
                    <#if showPlanColumn?? && showPlanColumn==false>
                        <#if functionId?? && functionId == 41>
                            <label>巡店时间：</label>
                        <#else>
                            <label>拜访时间：</label>
                        </#if>
                    <#else>
                        <label>计划时间：</label>
                    </#if>
                    <span>${planTimeInfo}</span>
                </div>
            </#if>
        </div>
        <#if isVisitPlan?? && isVisitPlan==true>
            <div class="basicInfo-main-sponsor">
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!actualDateInfo?? || actualDateInfo == ""))>
                    <div class="basicInfo-main-sponsor-C">
                        <label>实际拜访日期：</label>
                        <span>${actualDateInfo}</span>
                    </div>
                </#if>
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!actualTimeInfo?? || actualTimeInfo == ""))>
                    <div class="basicInfo-main-sponsor-C">
                        <label>实际拜访时间：</label>
                        <span>${actualTimeInfo}</span>
                    </div>
                </#if>
            </div>
        </#if>
              <div class="basicInfo-main-sponsor">
        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!userId?? || userId == ""))>
            <div class="basicInfo-main-sponsor-C">
                <label>账号：</label>
                <span>${userId}</span>
            </div>
        </#if>
        <#if jobNumber?has_content>
          <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!jobNumber?? || jobNumber == ""))>
            <div class="basicInfo-main-sponsor-C">
              <label>工号：</label>
              <span>${jobNumber}</span>
            </div>
          </#if>
        </#if>
        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!userName?? || userName == ""))>
            <div class="basicInfo-main-sponsor-C">
                <label>姓名：</label>
                <span>${userName}</span>
            </div>
        </#if>
      </div>
              <div class="basicInfo-main-sponsor">
        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!deptCode?? || deptCode == ""))>
          <div class="basicInfo-main-sponsor-C">
            <label>岗位编码：</label>
            <span>${deptCode?default('')}</span>
          </div>
        </#if>
        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!deptName?? || deptName == ""))>
            <div class="basicInfo-main-sponsor-C">
                <label>岗位名称：</label>
                <span>${deptName}</span>
            </div>
        </#if>
      </div>
        <div class="basicInfo-main-sponsor">
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!orgName?? || orgName == ""))>
                <div class="basicInfo-main-sponsor-C">
                    <label>机构名称：</label>
                    <span>${orgName}</span>
                </div>
            </#if>
            <#if isVisitPlan?? && isVisitPlan==true>
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!customerName?? || customerName == ""))>
                    <div class="basicInfo-main-sponsor-C">
                        <label>拜访客户：</label>
                        <span>${customerName}</span>
                    </div>
                </#if>
            </#if>
                    <#if showFollower?? && showFollower==true>
          <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!visitFollowerList?? || visitFollowerList == ""))>
            <div class="basicInfo-main-sponsor-C">
              <label>随访人员：</label>
              <span>${visitFollowerList}</span>
            </div>
          </#if>
        </#if>
        </div>
        <div class="basicInfo-main-sponsor" style="height: 36px;">
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!visitAddress?? || visitAddress == ""))>
                <div class="basicInfo-main-sponsor-C">
                    <label>拜访位置：</label>
                    <span>${visitAddress}</span>
                </div>
            </#if>
            <#if isVisitPlan?? && isVisitPlan==true>
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!locationStatus?? || locationStatus == ""))>
                    <div class="basicInfo-main-sponsor-C" style="padding-left: 100px;">
                        <label style="margin-left: -100px;">拜访位置状态：</label>
                        <span>${locationStatus}</span>
                    </div>
                </#if>
            </#if>
        </div>
        <div class="basicInfo-main-sponsor" style="height: 36px;">
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!statusStr?? || statusStr == ""))>
                <div class="basicInfo-main-sponsor-C">
                    <label>拜访状态：</label>
                    <span>${statusStr}</span>
                </div>
            </#if>
        </div>
        <#if enabledAttendance?? && enabledAttendance==true>
            <div class="line"></div>
            <div class="basicInfo-main-time">
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkInTime?? || checkInTime == ""))>
                    <div class="item" style="margin-right: 1%">
                        <div class="basicInfo-main-timeR" style="width: 100%">
                            <label>签入时间：</label>
                            <span>${checkInTime}</span>
                        </div>
                    </div>
                </#if>
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!inDistance?? || inDistance == ""))>
                    <div class="item">
                        <div class="basicInfo-main-timeR" style="width: 100%">
                            <label>签入距离：</label>
                            <span>${inDistance}</span>
                        </div>
                    </div>
                </#if>
            </div>
            <div class="basicInfo-main-time">
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkInDistance?? || checkInDistance == ""))>
                    <div class="item">
                        <div class="basicInfo-main-timeR" style="width: 100%">
                            <label>签入状态：</label>
                            <span>${checkInDistance}</span>
                        </div>
                    </div>
                </#if>
            </div>
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkInAddress?? || checkInAddress == ""))>
                <div class="basicInfo-main-organizer page-break">
                    <div style="padding-top: 8px">
                        <label style="padding-top: 8px">签入位置：</label>
                        <span style="padding-top: 4px">${checkInAddress}</span>
                    </div>
                    <div class="img">
                        <img src="${checkInAddressPictureUrl}"/>
                    </div>
                </div>
            </#if>
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkInPicture?? || checkInPicture == ""))>
                <div class="basicInfo-main-organizer page-break" style="margin-top: 8px;">
                    <div style="padding-top: 8px">
                        <label style="padding-top: 8px">签入图片：</label>
                    </div>
                    <div class="img" style="padding-top:12px;">
                        <img src="${checkInPicture}"/>
                    </div>
                </div>
            </#if>
                    <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkInRemark?? || checkInRemark == ""))>
          <div style="margin-top: 8px;margin-bottom:8px;">
            <div class="basicInfo-main-timeR" style="width: 99.1%; float:none;">
              <label>签入备注：</label>
              <span>${checkInRemark}</span>
            </div>
          </div>
        </#if>
            <div class="basicInfo-main-time">
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkOutTime?? || checkOutTime == ""))>
                    <div class="item" style="margin-right: 1%">
                        <div class="basicInfo-main-timeR" style="width: 100%">
                            <label>签出时间：</label>
                            <span>${checkOutTime}</span>
                        </div>
                    </div>
                </#if>
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!outDistance?? || outDistance == ""))>
                    <div class="item">
                        <div class="basicInfo-main-timeR" style="width: 100%">
                            <label>签出距离：</label>
                            <span>${outDistance}</span>
                        </div>
                    </div>
                </#if>
            </div>
            <div class="basicInfo-main-time">
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkOutDistance?? || checkOutDistance == ""))>
                    <div class="item">
                        <div class="basicInfo-main-timeR" style="width: 100%">
                            <label>签出状态：</label>
                            <span>${checkOutDistance}</span>
                        </div>
                    </div>
                </#if>
            </div>
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkOutAddress?? || checkOutAddress == ""))>
                <div class="basicInfo-main-organizer page-break" style="margin-top: 8px;">
                    <div style="padding-top: 8px">
                        <label style="padding-top: 8px">签出位置：</label>
                        <span style="padding-top: 4px">${checkOutAddress}</span>
                    </div>
                    <div class="img">
                        <img src="${checkOutAddressPictureUrl}"/>
                    </div>
                </div>
            </#if>
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkOutPicture?? || checkOutPicture == ""))>
                <div class="basicInfo-main-organizer page-break" style="margin-top: 8px;">
                    <div style="padding-top: 8px">
                        <label style="padding-top: 8px">签出图片：</label>
                    </div>
                    <div class="img" style="padding-top: 12px">
                        <img src="${checkOutPicture}"/>
                    </div>
                </div>
            </#if>
                    <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!checkOutRemark?? || checkOutRemark == ""))>
          <div style="margin-top: 8px">
            <div class="basicInfo-main-timeR" style="width: 99.1%;float:none">
              <label>签出备注：</label>
              <span>${checkOutRemark}</span>
            </div>
          </div>
        </#if>
        </#if>
                  <#if stockInputInfo ?? && (stockInputInfo?size> 0)>
            <div class="title mt48">
              <div class="name"><i class="dot"></i>库存填报</div>
            </div>
            <div class="basicInfo-main-sponsor">
              <#list stockInputInfo as value>
                <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!value.stockNum?? || value.stockNum == "" || !value.productName?? || value.productName == ""))>
                  <div class="basicInfo-main-sponsor-C">
                    <label>${value.productName?default('')}：</label>
                    <span>${value.stockNum?default('')}</span>
                  </div>
                </#if>
              </#list>
            </div>
            <div class="mgb-16"></div>
          </#if>
        <div>
            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!visitRecordString?? || visitRecordString == ""))>
                <div class="title mt48">
                    <div class="name"><i class="dot"></i> ${visitRecordString}</div>
                </div>
            </#if>
            <div class="other-info-template">
                          <#if baseInput ?? && (baseInput?size> 0)>
            <#list baseInput as value>
              <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!value.value?? || value.value == ""))>
                <div class="temp-text">
                  <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333">
                    ${value.name}：
                  </div>
                  <div class="temp-desc" style="font-size: 14px; font-weight: 400; color: #666666">
                    ${value.value}
                  </div>
                </div>
              </#if>
            </#list>
          </#if>
                <#if fileInput ?? && (fileInput?size> 0)>
                    <#list fileInput as fi>
                        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!fi.name?? || fi.name == ""))>
                            <div class="temp-text">
                                <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333">
                                    ${fi.name}：
                                </div>
                                <#if fi.files ?? && (fi.files?size> 0)>
                                    <div class="temp-list">
                                        <#list fi.files as file>
                                            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!file.name?? || file.name == ""))>
                                                <div class="temp-li">
                                                    <span class="temp-li-T">${file.name}</span>
                                                    <span class="temp-li-B">
                                                        <a style="text-decoration: none; color: #1ab370" href="${file.url}">点击预览</a>
                                                    </span>
                                                </div>
                                            </#if>
                                        </#list>
                                    </div>
                                </#if>
                            </div>
                        </#if>
                    </#list>
                </#if>
                <#if videoInput ?? && (videoInput?size> 0)>
                    <#list videoInput as vi>
                        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!vi.name?? || vi.name == ""))>
                            <div class="temp-text">
                                <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333">
                                    ${vi.name}：
                                </div>
                                <#if vi.files ?? && (vi.files?size> 0)>
                                    <div class="temp-mp4">
                                        <#list vi.files as file>
                                            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!file.url?? || file.url == ""))>
                                                <div class="temp-mp4-li">
                                                    <div class="temp-mp4-img">
                                                        <#if file.thumb?? && file.thumb != "">
                                                            <img src="${file.thumb}" alt=""/>
                                                        <#else>
                                                            <img src="https://representative-1252497236.cos.accelerate.myqcloud.com/pdf_html/%E8%A7%86%E9%A2%91%E7%BC%A9%E7%95%A5%E5%9B%BE104px.jpg" alt=""/>
                                                        </#if>
                                                    </div>
                                                    <div class="temp-mp4-btn">
                                                        <a style="text-decoration: none; color: #1ab370" href="${file.url}">点击预览</a>
                                                    </div>
                                                </div>
                                            </#if>
                                        </#list>
                                    </div>
                                </#if>
                            </div>
                        </#if>
                    </#list>
                </#if>
                <#if imageInput ?? && (imageInput?size> 0)>
                    <#list imageInput as ii>
                        <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!ii.name?? || ii.name == ""))>
                            <div class="temp-text">
                                <div class="temp-title" style="font-size: 16px; font-weight: 500; color: #333333">
                                    ${ii.name}：
                                </div>
                                <#if ii.images ?? && (ii.images?size> 0)>
                                    <div class="temp-img">
                                        <#list ii.images as image>
                                            <#if (functionId?? && functionId == 41) || !(exportEmptyPdfFields?? && exportEmptyPdfFields == true && (!image?? || image == ""))>
                                                <div class="temp-img-li">
                                                    <img style="max-height:400px;display:block;page-break-inside: avoid;" src="${image}" alt=""/>
                                                </div>
                                            </#if>
                                        </#list>
                                    </div>
                                </#if>
                            </div>
                        </#if>
                    </#list>
                </#if>
            </div>
        </div>
    </div>
</div>
</body>

</html>
