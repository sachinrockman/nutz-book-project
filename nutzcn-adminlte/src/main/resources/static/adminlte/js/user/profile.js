
var vueUserProfile = new Vue({
	el : "#user_profile_div",
	data : {
		user_profile : {}
	},
	methods : {
		dataReload : function() {
			$.ajax({
				url : base + "/user/profile",
				dataType : "json",
				success : function(re) {
					if (console)
						console.info(re);
					if (re && re.ok) {
						vueUserProfile.user_profile = re.data;
					} else if (re && re.msg) {
						layer.alert(re.msg);
					}
				},
				fail : function(err) {
					layer.alert("加载失败:" + err);
				},
				error : function(err) {
					layer.alert("加载失败:" + err);
				}
			});
		},
		do_save : function() {
			var p = {};
			$.ajax({
				url : base + "/user/profile",
				type : "POST",
				data : JSON.stringify(vueUserProfile.user_profile),
				dataType : "json",
				success : function(re) {
					if (console)
						console.info(re);
					if (re && re.ok) {
						vueUserProfile.dataReload();
						layer.alert("保存完成");
					} else if (re && re.msg) {
						layer.alert("失败:" + re.msg);
					}
				},
				fail : function(err) {
					layer.alert("加载失败:" + err);
				},
				error : function(err) {
					layer.alert("加载失败:" + err);
				}
			});
		},
		update_avatar : function() {
			layer.alert("暂无实现");
		},
		update_password : function() {
			layer.prompt({
				  value: '',
				  title: '请输入最少6位的新密码'
				},function(value, index, elem){
				  layer.close(index);
				  if (!value)
					  return;
				  $.ajax({
						url : base + "/user/changepasswd",
						type : "POST",
						data : {password:value},
						success : function(re) {
							if (re && re.ok) {
								layer.alert("修改成功");
							}
							else {
								layer.alert("修改失败: " + re.msg);
							}
						},
				    	fail : function(err) {
				    		layer.alert("加载失败:" + err);
				    	},
				    	error : function (err){
				    		layer.alert("加载失败:" + err);
				    	}
					});
				});
		}
	},
	created : function() {
		this.dataReload();
	}
});