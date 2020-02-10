<select id="yjc_selectlist" parameterType="epdmCntrlVO" resultType="egovMap">
		select 
		a.*
		 from (	
		SELECT ROWNUM AS rnum
			 , a.*
			 , SUM(1) OVER(PARTITION BY 0) AS tot_rowcount
	 			 from(
	 		   		select
	 		   			 group_cl
			  			,cmmn_cl_cn
		 	   	 	from tc_cmmn_cl
		 			group by group_cl, cmmn_cl_cn) a
		 		) a 
	 	where  a.rnum BETWEEN #{firstIndex}+1 AND #{firstIndex} + #{recordCountPerPage} 
	</select>

	<select id="yjc_selectlist_ditail" parameterType="params" resultType="egovMap">
		select
		 a.group_cl
		,a.cmmn_cl
		,a.cmmn_cl_nm
		,a.cmmn_cl_cn
		,a.sort_sn
		from
			(select
			 group_cl
			,cmmn_cl
			,cmmn_cl_nm
			,cmmn_cl_cn
			,sort_sn
			from tc_cmmn_cl
			where delete_at = 'N') as a left join
			(select 
		   		group_cl
		  		,cmmn_cl_cn
			 from tc_cmmn_cl
			  group by group_cl, cmmn_cl_cn) b
			 on a.group_cl = b.group_cl and a.cmmn_cl_cn = b.cmmn_cl_cn
			where a.group_cl = #{groupCl}
		 	order by a.group_cl asc
	</select>
	<update id="yjc_deletelist" parameterType="params">
		UPDATE tc_cmmn_cl 
		   SET 
			   delete_at = 'Y'
			 , deleter_id = #{deleterId}
			 , delete_dt = SYSDATE
			 , deleter_ip_nm = #{deleterIpNm}
		 WHERE group_cl = #{group_cl} and cmmn_cl_cn =#{cmmn_cl_cn} and sort_sn = #{sort_sn}
	</update>
