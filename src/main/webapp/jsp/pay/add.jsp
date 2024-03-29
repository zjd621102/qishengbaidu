<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/jsp/pub/include.jsp"%>

<h2 class="contentTitle">新增单据</h2>
<form method="post" action="<%=path%>/pay/add" class="required-validate pageForm"
 onsubmit="return checkFormSubmit() && validateCallback(this, dialogAjaxDone);">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt>单据ID：</dt>
			<dd>
				<input type="text" name="map[payid]" size="30" value="${form.map.payid}" readonly="readonly"/>
			</dd>
		</dl>
		<dl>
			<dt>单据类型：</dt>
			<dd>
				<select name="map[btype]" style="width: 184px;" class="required">
					<option value=""></option>
					<c:forEach items="${btypeList}" var="btype">
						<option value="${btype.map.btype}"
							${btype.map.btype==form.map.btype?"selected":""}
						>
							${btype.map.btypename}
						</option>
					</c:forEach>
				</select>
			</dd>
		</dl>
		<dl>
			<dt>单据日期：</dt>
			<dd>
				<input type="text" name="map[paydate]" class="required date" size="30"
					value="${form.map.paydate}" readonly="readonly"/>
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
								${currflow.map.flowname=='申请'?"selected":""}
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
				<input type="text" name="map[remark]" size="30" maxlength="256"
					value="${form.map.remark}"/>
			</dd>
		</dl>
		
		<div class="divider"></div>

		<h1 class="margin10px">单据清单</h1>

		<table class="table" style="width: 100%;">
			<thead>
				<tr>
					<th width="3%">
						<a href="#" class="btnAdd addRow"/>
					</th>
					<th width="3%">序号</th>
					<th width="19%"><span class="red">*</span>银行卡卡号</th>
					<th width="15%">供应商</th>
					<th width="13%">供应商开户银行</th>
					<th width="13%">供应商银行卡卡号</th>
					<th width="10%">供应商账户名称</th>
					<th width="7%"><span class="red">*</span>应付金额</th>
					<th width="7%"><span class="red">*</span>实付金额</th>
					<th width="10%">备注</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td style="font-size: 13px; font-weight: bold; color: red;">
						小计：
					</td>
					<td>
						<input type="text" name="map[allplansum]" style="width: 100%" class="number"
							value="${form.map.allplansum}" readonly="readonly"/>
					</td>
					<td>
						<input type="text" name="map[allrealsum]" style="width: 100%" class="number"
							value="${form.map.allrealsum}" readonly="readonly"/>
					</td>
					<td></td>
				</tr>
			   	<tr id="IDCopyRow" style="display:none">
					<td>
						<input type="hidden" name="map[payrowid]"/>
						<a href="#" class="btnDel delRow" />
					</td>
			   		<td></td>
					<td>
						<select name="map[bankcardno]" style="width: 95%;" class="notnull" alt="银行卡卡号">
							<option value=""></option>
							<c:forEach items="${bankcardList}" var="bankcard">
								<option value="${bankcard.map.bankcardno}">
									${bankcard.map.bankcardno}|${bankcard.map.bankname}
								</option>
							</c:forEach>
						</select>
					</td>
			   		<td>
						<input type="hidden" name="map[manuid]"/>
						<input type="text" name="map[manuname]"
							suggestFields="manuid,manuname,manubankname,manubankcardno,manuaccountname"
							style="width: 75%" readonly="readonly"/>
							<a class="btnLook" href="<%=path%>/manu/list?act=backselect" lookupGroup="manuLookup"
								width="1000" height="500">查找带回</a>
						<a href="javascript:void(0);" class="btnClear"
							suggestFields="manuid,manuname,manubankname,manubankcardno,manuaccountname"/>
			   		</td>
			   		<td>
						<input type="text" name="map[manubankname]" style="width: 100%" maxlength="32"/>
			   		</td>
			   		<td>
						<input type="text" name="map[manubankcardno]" style="width: 100%" maxlength="32"/>
			   		</td>
			   		<td>
						<input type="text" name="map[manuaccountname]" style="width: 100%" maxlength="32"/>
			   		</td>
			   		<td>
						<input type="text" name="map[plansum]" style="width: 100%" maxlength="12"
							class="number" value="0.00"
							onchange="setAllSum('plansum', 'allplansum');"/>
			   		</td>
			   		<td>
						<input type="text" name="map[realsum]" style="width: 100%" maxlength="12"
							class="number" value="0.00"
							onchange="setAllSum('realsum', 'allrealsum');"/>
			   		</td>
			   		<td>
						<input type="text" name="map[remarkrow]" style="width: 100%" maxlength="256"/>
			   		</td>
			   	</tr>
			   	<tr id="IDEndRow"></tr>
		   	</tbody>
		</table>
	</div>
	
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit">确定</button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div></li>
		</ul>
	</div>
</form>