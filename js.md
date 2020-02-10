$(document).ready(function() {
	init(1);
})
function init(pageIndex) {
	
	requestPost("cmc/mngr/yjc_selectlist.do","json", {pageIndex: pageIndex}, function(res) {
		var data = res.result;
		var tr,td,input;
		var paging = res.paging;
		$('.srhlist').html("");
		console.log(paging)
		for(var i = 0; i<data.length; i++){
			tr = $("<tr>");
			
			td = $("<td>");
			td.text(data[i].groupCl);
			tr.append(td);
				
			td = $("<td>");
			td.text(data[i].cmmnClCn);
			tr.append(td);
			
			td = $("<td>");
			input = $('<input name"yjc_selectbtn" type="button" value="상세보기">')
			input.click(data[i],function(res) {
				detailList(res.data);
			});
			td.append(input);
			tr.append(td);
		$('.srhlist').append(tr)
		}
		$("#testRegPaging").html(paging);
	})
}
	

function detailList(result){
	var data = {
			'groupCl' : result.groupCl,
			'cmmnClCn' : result.cmmnClCn
	};
	requestPost("cmc/mngr/yjc_selectlist_ditail.do","json", data, function(res) {
		var data = res.result;
		var  tr, td, input;
		$('.ditail_list').empty()
		for(var j = 0; j<data.length; j++){
			tr = $("<tr>");
			
			td = $("<td>");
			td.text(data[j].groupCl);
			tr.append(td);
				
			td = $("<td>");
			td.text(data[j].cmmnCl);
			tr.append(td);
			
			td = $("<td>");
			td.text(data[j].cmmnClNm);
			tr.append(td);
			
			td = $("<td>");
			td.text(data[j].cmmnClCn);
			tr.append(td);
			
			td = $("<td>");
			td.text(data[j].sortSn);
			tr.append(td);
			
			td = $("<td>");
			input = $('<input name"yjc_deletebtn" type="button" value="삭제">')
			input.click(data[j],function(res) {
				var data = {
						'group_cl'  : res.data.groupCl,
						'cmmn_cl_cn'  : res.data.cmmnClCn,
						'sort_sn'  : res.data.sortSn
				}
				requestPost("cmc/mngr/yjc_deletelist.do","json", data, function(res) {
					alert('삭제되었습니다.');
					var map = {
							'groupCl' : result.groupCl,
							'cmmnClCn' : result.cmmnClCn
					};
					detailList(map)
				})
			})
			td.append(input);
			tr.append(td);
			
			$('.ditail_list').append(tr)
		}			
	});
}
