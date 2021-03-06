<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
	<head>
		<style>
			.info {
				width:200px;
				height:60px;
			}
		  	.multi-input {
			    display: inline-block;
			    width: 100%;
			    line-height: 30px;
			    border: 1px solid grey;
			    outline: none;
			    background: white;
			    padding: 0 20px;
			    height: 40px;
		  	}
		</style>
	</head>
	
	<c:import url="../common/header.jsp">
		<c:param name="data" value="myHotSpot"/>
	</c:import>
	
    <!-- END slider -->

 <div class="ftco-section-search" style="background-color:#1161ee;">
        <div class="container">
          <div class="row">
           <div class="col-md-12 tabulation-search">
            <br><br>
              <div class="tab-content py-5" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                  <div class="block-17">
                    <form action="${pageContext.request.contextPath}/hotspotBoard/hotspotList.ho" method="post" class="d-block d-lg-flex">
                      <div class="fields d-block d-lg-flex">
                        <label style="font-size: 38px; color:white; font-weight: bold;">${ member.userName }님의</label>
                        <label style="font-size: 20px; color:white; margin-left: 10px; margin-top: 22px;">리뷰 게시판</label>
                      </div>
                      <button class="search-submit btn btn-primary" style="border-radius:25px; border: white;"
                      		onclick="moveSharePlane();">Other Review</button>  
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    <section class="ftco-section bg-light" style="padding-top: 4em;">
      <div class="container">
        <div class="row" id="hotspotBoardList">
          <c:forEach items="${holist}" var="h"> 
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry">
              <a href=<c:url value='/hotspotBoard/hotspotDetail.ho?no=${h.HNo}'/> class="block-20" style="background-image: url('${pageContext.request.contextPath}/resources/images/hotspotimg/desc/${h.HPreview}');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div><a href="#">${h.HDate}</a></div>
                  <div><a href="#">${h.HWriter}</a></div>
                </div>
                <div  style="height: 120px;">
                <h3 class="heading"><a href="#">${h.HTitle}</a></h3>
                </div>
                 <p class="clearfix">
                  <a href=<c:url value='/hotspotBoard/hotspotDetail.ho?no=${h.HNo}'/> class="float-left">Read more</a>            
                  <a href=<c:url value='/hotspotBoard/hotspotDetail.ho?no=${h.HNo}'/> class="float-right meta-chat"><span class="icon-thumbs-o-up"></span>&nbsp;${h.likeCount}</a>
                </p>
              </div>
            </div>
          </div>
          </c:forEach>
        </div>
        <div class="row mt-5" id="pageBarDiv">
          <div class="col text-center" id="pageBar">
            <div class="block-27">  
              <ul>
          		 <c:out value="${pageBar}" escapeXml="ture"/>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!------------------------------------------------------------------------------------------------------->

   
   <c:import url="../common/footer.jsp"/>
   