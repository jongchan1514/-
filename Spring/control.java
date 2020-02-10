	// 테스트 페이지
	@RequestMapping(value = "/cmc/mngr/testview")
	public String testview(@RequestParam HashMap<String, Object> params, ModelMap model) throws Exception{
		return "cmc/mngr/testview";
	}
	
	@ResponseBody
	@RequestMapping(value = "/cmc/mngr/yjc_selectlist.do")
	public HashMap<String, Object> selectmenu(@RequestParam HashMap<String, Object> params,@ModelAttribute EpdmCntrlVO vo, ModelMap model)throws Exception {
		HashMap<String, Object> resMap = new HashMap<String, Object>();
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo.setPageSize(vo.getPageSize());
		
		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());
		vo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		params.put("firstIndex", paginationInfo.getFirstRecordIndex());
		params.put("recordCountPerPage", paginationInfo.getRecordCountPerPage());
		
		List<?> list = mngrService.yjc_selectlist(vo);
		resMap.put("result", list);
		
		int totCnt = 0;
		if(list.size() > 0){
			BigDecimal dcm = (BigDecimal)((Map<String, Object>)list.get(0)).get("totRowcount");
			totCnt = dcm.intValue();
		}
		paginationInfo.setTotalRecordCount(totCnt);
		
    	PaginationRenderer paginationRenderer = paginationManager.getRendererType("image");
        String contents = paginationRenderer.renderPagination(paginationInfo, "init");
        resMap.put("paging", contents);
		
		return resMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cmc/mngr/yjc_selectlist_ditail.do")
	public HashMap<String, Object> selectsrh(@RequestParam HashMap<String, Object> params, ModelMap model)throws Exception {
		HashMap<String, Object> resMap = new HashMap<String, Object>();
		List<?> list = mngrService.yjc_selectlist_ditail(params);
		resMap.put("result", list);	
		return resMap;
	}
	@ResponseBody
	@RequestMapping(value = "/cmc/mngr/yjc_deletelist.do")
	public String yjc_deletelist(@RequestParam HashMap<String, Object> params, ModelMap model)throws Exception {
		String res = "Y";
		params.put("deleterId", LoginUserHelper.getUserInfo().getUserId());
		params.put("deleterIpNm", LoginUserHelper.getUserInfo().getIp());
	
		mngrService.yjc_deletelist(params);
		return res;
	}
