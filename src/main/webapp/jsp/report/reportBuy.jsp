<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/jsp/pub/include.jsp"%>
<script type="text/javascript">
$(function () {
    $('#reportBuy_div').highcharts({
        chart: {
            type: 'line'
        },
        title: {
            text: '月度供应商报表'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: [${requestScope.monthStr}]
        },
        yAxis: {
            title: {
                text: '元'
            }
        },
        tooltip: {
            enabled: false,
            formatter: function() {
                return '<b>'+ this.series.name +'</b><br/>'+this.x +': '+ this.y +'元';
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [${requestScope.dataArray}]
    });
});
</script>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="<%=path%>/report/reportBuy" method="post" rel="buy_report" id="fid">
		<div class="searchBar">
			<table class="searchContent" style="width: 80%">
				<tr>
					<td>
						采购日期从：<input type="text" class="date" readonly="readonly" name="map[buydateFrom]" value="${form.map.buydateFrom}" />
					</td>
					<td>
						至：<input type="text" class="date" readonly="readonly" name="map[buydateTo]" value="${form.map.buydateTo}" />
					</td>
				</tr>
			</table>
			<div class="subBar">
				<ul>
					<li>
						<div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">查询</button>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div id="reportBuy_div"></div>
</div>