<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/wherebuyit/reset.css'/>"/>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/wherebuyit/common.css'/>"/>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/wherebuyit/style.css'/>"/>

</head>

<body>    
	<%@include file="header.jsp"%>
    

<h3>로컬에 있는 이미지를 바로 브라우저에 표시</h3>
<img id="preview" src="" alt="로컬에 있는 이미지가 보여지는 영역">


<br/>
<br/>
<br/>
<br/>
<br/>

<form action="fileUpload.do" method="post" enctype="multipart/form-data">
		<fieldset>
			<table>
				<tr>
					<th>파일</th>
					<td><input type="file" name="uploadfile" id="getfile" accept="image/*" required="required"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="20" cols="40" name="content" required="required" placeholder="내용"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="작성">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
  
  






			<%@include file="footer.jsp"%>
		</div>

	</div>

</body>

 <script src="js/write.js" type="text/javascript"></script> 
</html>
