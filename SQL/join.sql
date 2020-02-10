select *
	from(
		SELECT
		  rownum as rnum
		, a.컬럼1
		, a.컬럼2
		, a.컬럼3
		, TO_CHAR(a.컬럼명4, 'YYYY-MM-DD HH24:MI:SS') AS 컬명별명
		, a.컬럼5
		, b.컬럼1
			FROM A테이블 as a
				left join B테이블 as b
				on a.테이블 컬럼값 = b.테이블 컬럼값
			 where 컬럼 검색조건
			  order by a.정렬타겟 컬럼 ASC
	)where rnum  between 1 and 3
  
  
a테이블과 b테이블의 컬럼이 관계일 경우
  inner join  => 대상 테이블의 관계가 일치하는 데이터를 표현할때 사용
  outer join  => 대상 테이블의 관계가 일치하지 않는 값을 표현할때 사용
  left join   => 대상 테이블의 관계가 일치하지만 앞의 테이블에 값이 더 많을 경우 사용
  rigth join  => 대상 테이블의 관계가 일치하지만 뒤의 테이블에 값이 더 많을 경우 사용

*SQL 문법*
  
  ROWNUM = 검색 결과 행의 수 를 출력
  
  TO_CHAR = 문자열로 변환 (주로 날짜데이터를 문자열로 변환시 사용)
  
  ORDEY BY = 결과값을 정렬
  ( ASC = 오름차순
    DESC = 내림차순 )
    
  BETWEEN 출력할 범위를 지정할때 

