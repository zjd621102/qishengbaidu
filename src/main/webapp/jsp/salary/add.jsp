<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/jsp/pub/include.jsp"%>

<script type="text/javascript">
	$().ready(function() {
		setTimeout(function() {
			setAllSum('planmoney', 'allplanmoney');
		}, 100);
	});
</script>

<h1 class="margin10px">新增工资单</h1>
<form method="post" action="<%=path%>/salary/add" class="required-validate pageForm"
 onsubmit="return validateCallback(this, dialogAjaxDone);">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt>工资类型：</dt>
			<dd>
				<select name="map[salarytype]" style="width: 184px;" class="required">
					<option value=""></option>
					<c:forEach items="${salarytypeList}" var="salarytype">
						<option value="${salarytype.map.salarytype}"
							${salarytype.map.salarytype=="1"?"selected":""}
						>
							${salarytype.map.salarytypename}
						</option>
					</c:forEach>
				</select>
			</dd>
		</dl>
		<dl>
			<dt>工资单名称：</dt>
			<dd>
				<input type="text" name="map[salaryname]" class="required" size="30" maxlength="32"
					 value="${form.map.salaryname}"/>
			</dd>
		</dl>
		<dl>
			<dt>工资单日期：</dt>
			<dd>
				<input type="text" name="map[salarydate]" class="required date" style="width: 178px;"
					value="${form.map.salarydate}" readonly="readonly" dateFmt="yyyy-MM"/>
				<a class="inputDateButton" href="javascript:;">选择</a>
			</dd>
		</dl>
		<dl>
			<dt>当前流程：</dt>
			<dd>
				<select name="map[currflow]" style="width: 184px;" class="required">
					<option value=""></option>
					<c:forEach items="${currflowList}" var="currflow">
						<c:if test="${currflow.map.flowname=='申请'}">
							<option value="${currflow.map.flowname}"
								${currflow.map.flowname=="申请"?"selected":""}
							>
								${currflow.map.flowname}
							</option>
						</c:if>
					</c:forEach>
				</select>
			</dd>
		</dl>
		<dl>
			<dt>备注：</dt>
			<dd>
				<input type="text" name="map[remark]" size="30" maxlength="256" value="${form.map.remark}" />
			</dd>
		</dl>
		
		<div class="divider"></div>

		<h1 class="margin10px">工资清单</h1>

		<table class="table" style="width: 100%;">
			<thead>
				<tr>
					<th width="3%">
						<a href="#" class="btnAdd addRow"></a>
					</th>
					<th width="3%">序号</th>
					<th width="20%">员工</th>
					<th width="10%">应付款</th>
					<th width="74%">备注</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td style="font-size: 13px; font-weight: bold; color: red;">
						合计：
					</td>
					<td>
						<input type="text" name="map[allplanmoney]" style="width: 100%" class="number"
							value="${form.map.allplanmoney}" readonly="readonly"/>
					</td>
					<td></td>
				</tr>
			   	<tr id="IDCopyRow" style="display:none">
					<td>
						<input type="hidden" name="map[salaryrowid]"/>
						<a href="#" class="btnDel delRow"></a>
					</td>
			   		<td></td>
			   		<td>
						<input type="hidden" name="map[staffid]"/>
						<input type="text" name="map[staffname]" style="width: 70%" maxlength="13"
							suggestFields="staffid,staffname,planmoney" readonly="readonly"/>
						<a class="btnLook" href="<%=path%>/staff/list?first=true&act=backselect&map[month]=${form.map.salarydate}" lookupGroup="staffLookup"
							width="1200"></a>
						<a href="javascript:void(0);" class="btnClear" suggestFields="staffid,staffname,planmoney"></a>
			   		</td>
			   		<td>
						<input type="text" name="map[planmoney]" style="width: 100%" maxlength="12"
							class="number" value="0.00"
							onchange="setAllSum('planmoney', 'allplanmoney');"
							onblur="setAllSum('planmoney', 'allplanmoney');"/>
			   		</td>
			   		<td>
						<input type="text" name="map[remarkrow]" style="width: 100%" maxlength="256"/>
			   		</td>
			   	</tr>
				<c:forEach items="${salaryrowList}" var="bean" varStatus="vs">
				   	<tr>
						<td>
							<input type="hidden" name="map[salaryrowid]" value="${bean.map.salaryrowid}"/>
							<a href="#" class="btnDel delRow"></a>
						</td>
				   		<td>${vs.index+1}</td>
				   		<td>
							<input type="hidden" name="map[staffid]" value="${bean.map.staffid}"/>
							<input type="text" name="map[staffname]" style="width: 70%" maxlength="13"
								suggestFields="staffid,staffname,planmoney" value="${bean.map.staffname}" readonly="readonly"/>
							<a class="btnLook" href="<%=path%>/staff/list?first=true&act=backselect&map[month]=${form.map.salarydate}" lookupGroup="lookup" width="1200"></a>
							<a href="javascript:void(0);" class="btnClear" suggestFields="staffid,staffname,planmoney"></a>
				   		</td>
				   		<td>
							<input type="text" name="map[planmoney]" style="width: 100%" maxlength="12"
								class="number" value="${bean.map.planmoney}"
								onchange="setAllSum('planmoney', 'allplanmoney');"
								onblur="setAllSum('planmoney', 'allplanmoney');"/>
				   		</td>
				   		<td>
							<input type="text" name="map[remarkrow]" style="width: 100%" maxlength="256"
								value="${bean.map.remarkrow}"/>
				   		</td>
				   	</tr>
			   	</c:forEach>
			   	<tr id="IDEndRow"></tr>
		   	</tbody>
		</table>
	</div>
	
	<div class="formBar">
		<ul>
			<c:if test="${form.map.currflow != '结束'}">
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit">确定</button></div></div></li>
			</c:if>
			<li><div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div></li>
		</ul>
	</div>
</form>