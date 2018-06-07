HideLoading();
function queryIndustryEnt(){
	ShowLoading();
	/*if($('#vendinc').val() < 0){
		layer.tips('营业额必须大于0！', '#vendinc',{tips:[2, 'rgb(189, 27, 72)']});
		return false;
	}*/
	var reg =/^([1-9]\d*)$/;
	if($('#empnum').val()!='' && !reg.test($('#empnum').val())){
		layer.tips('从业人数为正整数！', '#empnum',{tips:[2, 'rgb(189, 27, 72)']});
		return false;
	}else{
		$('#queryIndustryEntReport').submit();
	}
}

//下载excel报表
function downExcel(industry,year,vendinc,empnum){
	window.open(contextPath + "/industryEntReportCL/downIndustryEntExcel?industry="+ industry +"&year=" + year +
																		"&vendinc=" + vendinc + "&empnum=" + empnum);
}

