for(var i=0; i<data.length; i++){
			tr = $("<tr>");
			
			td = $("<td>");
			td.text(data[i].rnum);
			tr.append(td);
			
			td = $("<td>");
			td.text(data[i].cnrlNm);
			td.append('<input type="hidden" name="mntrngSn" value="'+ data[i].mntrngSn +'"/>');
			tr.append(td);
			
			td = $("<td>");
			td.text(data[i].cnrlDe);
			tr.append(td);
			
			td = $("<td>");
			td.text(data[i].trgetCnt);
			tr.append(td);
			
			td = $("<td>");
			td.text(data[i].mntrngAtNm);
			tr.append(td);
			
			td = $("<td>");
			td.text(data[i].cntrlAtNm);
			tr.append(td);
			
			td = $("<td>");
}
