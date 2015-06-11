<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro"  uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!-- 用bootstrap先应付一下 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<!-- 弹出层layer -->
<script src="${ctx}/rs/layer/layer.min.js" type="text/javascript"></script>

<h2>流程实例管理</h2>
	<h4 id="wforder_count"></h4>
	<div class="panel panel-default">
		<form action="#" id="wforder_query_form">
			过滤<input type="text" name="name" class="form-contrl" onchange="wforder_reload();">
			页数<input type="number" name="pageNumber" class="form-contrl" value="1" onchange="wforder_reload();">
			每页<input type="number" name="pageSize" class="form-contrl" value="10" onchange="wforder_reload();">
		</form>
	</div>
<div class="panel panel-default">
	<div class="panel-heading">流程实例一览</div>
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>版本号</th>
				<th>流程定义</th>
				<th>流程定义版本</th>
				<th>优先级</th>
				<th>创建者</th>
				<td>创建时间</td>
				<th>最后修改者</th>
				<td>最后修改时间</td>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="wforder_tbody">
		</tbody>
	</table>
</div>

<script type="text/javascript">
function wforder_reload(){
	$.ajax({
		url : home_base + "/admin/process/orders",
		data : $("#wforder_query_form").serialize(),
		dataType : "json",
		success : function(re) {
			if (re && re.ok) {
				var data = re.data;
				//console.log(data);
				$("#wforder_count").html("共" + data.pager.recordCount + "个流程实例, 总计" + data.pager.pageCount + "页");
				var list_html = "";
				var orders = data.orders;
				var ps = data.ps
				//console.log(data.list);
				for (var i = 0; i < orders.length; i++) {
					var order = orders[i];
					var p = ps[i];
					//console.log(wf);
					var tmp = "<tr>";
					tmp += "<td>" + order.id + "</td>";
					tmp += "<td>" + order.version + "</td>";
					if (p) {
						tmp += "<td>" + p.displayName + "</td>";
						tmp += "<td>" + p.version + "</td>";
					} else {
						tmp += "<td>" + 未知流程 + "</td>";
						tmp += "<td>" + 0 + "</td>";
					}
					
					tmp += "<td>" + order.priority + "</td>";
					// 用户信息
					if (order.creator) {
						tmp += "<td>" + order.creator + "</td>";
					} else {
						tmp += "<td>" + "未知" + "</td>";
					}
					
					tmp += "<td>" + order.createTime + "</td>";
					
					if (order.lastUpdator) {
						tmp += "<td>" + order.lastUpdator + "</td>";
					} else {
						tmp += "<td>" + "未知" + "</td>";
					}
					tmp += "<td>" + order.lastUpdateTime + "</td>";
					
					tmp += "<td>";
					tmp	+= " <button onclick='wforder_end(\"" + order.id + "\");' class='btn btn-default'>终止</button> ";
					tmp += "</td>";
					tmp += "</tr>";
					list_html += tmp;
				}
				$("#wforder_tbody").html(list_html);
			}
		}
	});
};
function wforder_end(wforder_id) {
	alert("尚未实现");
	return;
	var s = prompt("请输入y确认禁用");
	if (s == "y") {
		$.ajax({
			url : home_base + "/XXX",
			data : {id:wforder_id},
			success : wforder_reload
		});
	}
};
function wforder_resume(wforder_id) {
	alert("尚未实现");
	return;
};

function myInit(args) {
	wforder_reload();
};
</script>