<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/jsp/pub/include.jsp"%>

<script type="text/javascript">

	$().ready(function() {
		setTimeout(function() {
			setAllSum('salary', 'allsalary');
		}, 100);
	});

	function changeAction(act) {
		if(act=="save") {
			$('#staff_work_form').attr("action","<%=path%>/staff/edi_work");
		 	$('#staff_work_form').attr("onsubmit","return validateCallback(this, dialogAjaxDone);");
		} else {
		 	$('#staff_work_form').attr("action","<%=path%>/staff/edi_work/${form.map.staffid}");
			$('#staff_work_form').attr("onsubmit", "return dwzSearch(this, 'dialog');");
		}
	}
</script>

<form method="post" action="<%=path%>/staff/edi_work/${form.map.staffid}" class="required-validate pageForm"
 onsubmit="return validateCallback(this, dialogAjaxDone);" id="staff_work_form">
	<input type="hidden" name="map[workid]" value="${form.map.workid}"/>
	<input type="hidden" name="map[staffid]" value="${form.map.staffid}"/>

	<h1 class="margin10px"></h1>
	<div class="searchBar">
		<table class="searchContent" style="width: 80%">
			<tr>
				<td>
					员工名称：
					<input type="text" name="map[staffname]" value="${form.map.staffname}" size="30" readonly="readonly"/>
				</td>
				<td>
					月份：
					<input type="text" name="map[workmonth]" class="required date" dateFmt="yyyy-MM" size="30"
						value="${form.map.workmonth}" readonly="readonly" />
				</td>
				<td>
					工资：
					<input type="text" id="salary" size="30" value="${form.map.salary}" readonly="readonly"/>
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" onclick="changeAction('search')">查询</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" onclick="changeAction('save')">保存</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" onclick="batchSet('salary', 'map[salary]');setAllSum('salary', 'allsalary');">
								批量设置</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" class="close">关闭</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	<h1 class="margin10px">考勤清单</h1>

	<table class="table" style="width: 100%;" layoutH="138">
		<thead>
			<tr>
				<th width="3%">序号</th>
				<th width="8%">考勤日期</th>
				<th width="8%">上班时间</th>
				<th width="8%">下班时间</th>
				<th width="8%">考勤状态</th>
				<th width="8%">工资</th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="font-size: 13px; font-weight: bold; color: red;">
					合计：
				</td>
				<td>
					<input type="text" name="map[allsalary]" style="width: 100%" class="number"
						value="" readonly="readonly"/>
				</td>
				<td></td>
			</tr>
			<c:forEach items="${workrowList}" var="bean" varStatus="vs">
			   	<tr>
			   		<td>${vs.index+1}</td>
			   		<td>
						<input type="hidden" name="map[workrowid]" value="${bean.map.workrowid}"/>
						<input type="text" name="map[workdate]" style="width: 100%" maxlength="10"
							value="${bean.map.workdate}"/>
			   		</td>
			   		<td>
						<input type="text" name="map[starttime]" class="date" dateFmt="HH:mm" style="width: 100%"
							value="${bean.map.starttime}" readonly="readonly"/>
			   		</td>
			   		<td>
						<input type="text" name="map[endtime]" class="date" dateFmt="HH:mm" style="width: 100%"
							value="${bean.map.endtime}" readonly="readonly"/>
			   		</td>
			   		<td>
						<select name="map[workstatus]" style="width: 90%;">
							<option value=""></option>
							<c:forEach items="${workstatusList}" var="workstatus">
								<option value="${workstatus.map.workstatus}"
									${workstatus.map.workstatus==bean.map.workstatus?"selected":""}
								>
									${workstatus.map.workstatusname}
								</option>
							</c:forEach>
						</select>
			   		</td>
			   		<td>
						<input type="text" name="map[salary]" style="width: 100%" maxlength="12"
							class="number" value="${bean.map.salary}"
							onchange="setAllSum('salary', 'allsalary');"/>
			   		</td>
			   		<td>
						<input type="text" name="map[remark]" style="width: 100%" maxlength="256"
							value="${bean.map.remark}"/>
			   		</td>
			   	</tr>
		   	</c:forEach>
	   	</tbody>
	</table>
</form>