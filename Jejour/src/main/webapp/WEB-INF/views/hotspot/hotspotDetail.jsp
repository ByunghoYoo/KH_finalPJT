<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

	<c:import url="../common/header.jsp">
		<c:param name="data" value="hotSpot"/>
	</c:import>
	
	<head>
	   <style>
	      .img {
	        width:100px;
	        height:100px;
	      }
	
	      h2 {
	        color: #4CAF50;
	      }
	      
	      .buttonclass button:hover{ 
	      	color:white; background-color: skyblue; 
	      }


	    </style>
	  </head>

    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ftco-animate mx-auto">
            <h2 class="mb-3">${hotspotBoard.HTitle}</h2>
            <br>
            <div class="meta text-left" style="color: tomato; font-weight: 400; margin-top: -15px;">
				작성자 : ${hotspotBoard.HWriter} &nbsp;&nbsp;
				작성일 : ${hotspotBoard.HDate}
            </div>
            <br>
            ${hotspotBoard.HContent}
            <br>
            <br>
            <br>
            <br>
            <!-- 좋아요 싫어요 img and button -------------------------------->
            <div class="mx-auto" style="text-align: center;">
                <a href="#"><img class ="img" src="${pageContext.request.contextPath}/resources/images/like.jpg" id="1" onclick="like();" ></a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#"><img class ="img" src="${pageContext.request.contextPath}/resources/images/unlike.jpg" id="2" onclick="unlike();"></a>
              <br>
              <!-- 좋아요 갯수 -->
              <h2><span class="likeCount">${like}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="unlikeCount">${unlike}</span></h2>
			  <br>
			  
			  
			  <div class="text-right">
              <input type="hidden" name="cno" value="11"/>
              <c:if test="${member.userId eq hotspotBoard.userId}">
              <button type="button" class="updateBtn btn btn-md btn-info" 
                      onclick="goUpdate();" style="border-radius: 10px;">수정하기</button>
              <button type="button" class="deleteBtn btn btn-md btn-info"
                       onclick="goDelete();" style="border-radius: 10px;">삭제하기</button> &nbsp;
              </c:if>
              </div>
              <br>
			  <br>
			  <br>
			  
            </div>
          </div> <!-- .col-md-8 -->

        </div>

        <div class="replyArea">
          <div class="row">
            <div class="col-md-8 mx-auto" id="replySelectArea"> <!-- 게시글의 댓글 목록 구현부 -->
              <div style="border-bottom:1px solid gray;">
                <div style="height:5px;"></div>
                <table id="replySelectTable" class="text-left"
                style="margin-left : 0px; width : 100.0%;" class="replyList1">
                
                <!-- 리스트로 뽑아보자 -->
                <c:forEach items="${clist}" var="hc"> 
                
                <!-- 대장 댓글 -->
                <c:if test="${hc.hcNo eq hc.refhcNo}">
                  <tr>
                    <td style="width:80px;"><b>&nbsp;&nbsp;${hc.hcWriter}</b></td>
                    <td>${hc.hcDate}</td>
                    <td align="center">
                      <div class="text-right">
                         <c:if test="${member.userId eq hc.userId}">
                         <input type="hidden" name="hcNo" value="hc.hcNo"/>
                        <button type="button" class="deleteBtn btn btn-md btn-info"
                          onclick="goRepleDelete${hc.hcNo}();" style="border-radius: 5px;" id="${hc.hcNo}">삭제하기</button> &nbsp;
                          </c:if>
                      </div>
                    </td>
                  </tr>	
                  <!-- 대장댓글 답글 onclick  -->
                  <tr class="comment replyList1">
                    <td colspan="3" style="background : transparent;">
	                    <textarea class="reply-content" cols="105" rows="2" style="border:none; width:100%; resize:none; outline: none;"
	                    readonly="readonly">&nbsp;&nbsp;${hc.hcContent}
	                    </textarea>
	                    
	                    <button type="button" onclick="open${hc.hcNo}();" 
	                  			style="border : 0px solid blue; background-color: rgba(0,0,0,0); border-radius: 10px; 
	                  			color : blue;" class="buttonclass">답글달기</button><br><br>
	                  	 	
	                  	<form action="${pageContext.request.contextPath}/hotspotBoard/insertCComment.ho" method="post" style="display:none" id="reple${hc.hcNo}">
	                  	<div class="replyWriteArea" style="border: 1px solid gray; border-radius: 10px;">	
	                  	  <input type="hidden" name="userId" value="${member.userId }"/>
			              <input type="hidden" name="hNo" value="${hotspotBoard.HNo}" />
			              <input type="hidden" name="no" value="${hotspotBoard.HNo}" />
			              <input type="hidden" name="hcWriter" value="${member.userName}" />
			              <input type="hidden" name="refhcNo" value="${hc.refhcNo}" />
		                  <div class="text-left" style="padding-left: 15px;">
		                  <div style="height : 10px"></div>
		                  <a style="font-weight: 900; color: black;">${member.userName}</a>
		                  </div>
		                  <div class="comment_form mx-auto" style="text-align: center;">
		                  <textArea rows="3" cols="80" id="replyContent" name="hcContent" style="border:none; width:97%; resize:none; outline: 0;" placeholder="답글을 입력해보세요!" ></textArea>
		                  </div>
		                  <div class="text-right">
		                  <button type="submit" class="btn btn-md btn-info" id="addReply" style="border-radius: 10px;">답글 등록</button>&nbsp;&nbsp;&nbsp;
		                  <div style="height : 10px"></div>
		                  </div>
		                  </div>
             			</form>

	                  	
                    </td>
                  </tr>

                  </c:if> 
                  <!--  대장 댓글 끝 -->
                  
                  <!-- 대댓글 -->            
                  <c:if test="${hc.hcNo ne hc.refhcNo}">
                  <tr>
                    <td style="width:80px;"><b>&nbsp;&nbsp;└&nbsp;${hc.hcWriter}</b></td>
                    <td>${hc.hcDate}</td>
                    <td align="center">
                      <div class="text-right">
                         <input type="hidden" name="hcNo" value="hc.hcNo"/>
                         <c:if test="${member.userId eq hc.userId}">
                        <button type="button" class="deleteBtn btn btn-md btn-info"
                          onclick="goRepleDelete${hc.hcNo}();" style="border-radius: 5px;"  id="${hc.hcNo}">삭제하기</button> &nbsp;
                          </c:if>
                      </div>
                    </td>
                  </tr>
                  <tr class="comment replyList1">
                    <td colspan="3" style="background : transparent;">
                    <textarea class="reply-content" cols="105" rows="2" style="border:none; width:100%; resize:none; outline: none;"
                    readonly="readonly">&nbsp;&nbsp;${hc.hcContent}
                    </textarea>
                    </td>
                  </tr>
                </c:if>
                <!-- 대댓글 끝 -->
                
                </c:forEach>
                <!-- 반복 종료 -->
                
                </table>
              </div>
            </div>   
          </div>
        </div>
    
        <br>
    
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <div class="replyWriteArea" style="border: 1px solid gray; border-radius: 10px;">
              <form action="${pageContext.request.contextPath}/hotspotBoard/insertComment.ho" method="get">
              <input type="hidden" name="userId" value="${member.userId }"/>
              <input type="hidden" name="hNo" value="${hotspotBoard.HNo}" />
              <input type="hidden" name="no" value="${hotspotBoard.HNo}" />
              <input type="hidden" name="hcWriter" value="${member.userName}" />
                <div class="text-left" style="padding-left: 15px;">
                  <div style="height : 10px"></div>
                  <a style="font-weight: 900; color: black;" >${member.userName}</a>
                </div>
                <div class="comment_form mx-auto" style="text-align: center;">
                  <textArea rows="3" cols="80" id="replyContent" name="hcContent" style="border:none; width:97%; resize:none; outline: 0;" placeholder="댓글을 입력해보세요!"></textArea>
                </div>
                <div class="text-right">
                  <button type="submit" class="btn btn-md btn-info" id="addReply" style="border-radius: 10px;">댓글 등록</button>&nbsp;&nbsp;&nbsp;
                <div style="height : 10px"></div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section> <!-- .section -->


    <br>
    <br>
    <br>
    <script>
	    function goDelete(){
	    	location.href="${pageContext.request.contextPath}/hotspotBoard/hotspotDelete.ho?hNo=${hotspotBoard.HNo}"
		}; 
		
		function goUpdate(){
			location.href="${pageContext.request.contextPath}/hotspotBoard/hotspotUpdateView.ho?no=${hotspotBoard.HNo}"
		};
		
		
		
		// 좋아요 AJAX
		function like(){	
			console.log("${hotspotBoard.HNo}");
			$.ajax({
				url:"${pageContext.request.contextPath}/hotspotLike/hotspotLike.ho",
				type: "post", 
				data: {
					hNo : '${hotspotBoard.HNo}',
					userId : '${member.userId}'
				},  
				
				success: function(likeCount) { 
					
					console.log("likeCount : " + likeCount);
					
					if(likeCount == 0){
						
					  likeCheck();
						
					} else if(likeCount != 0){
						
					
						$('.likeCount').html(likeCount);
					};
	
				},
				error: function() { 
				}
			});
		};
		
		function likeCheck(){	
			$.ajax({
				url:"${pageContext.request.contextPath}/hotspotLike/likeCheck.ho",
				type: "post", 
				data: {
					hNo : '${hotspotBoard.HNo}',
					userId : '${member.userId}'
				},  
				
				success: function(data) { 
					
					console.log("data : " + data.likeCount);
					console.log("data : " + data.unlikeCount);
					console.log("data : " + data.non);
					
					if(data.non == 0){
						
						alert("이미 좋아요 클릭 되었습니다.");
						
					} else if(data.non != 0){
						
					
						$('.likeCount').html(data.likeCount);
						$('.unlikeCount').html(data.unlikeCount);
					};
				},
				error: function() { 
				}
			});
		};
		
		
		// 싫어요 AJAX
		function unlike(){	
			console.log("${hotspotBoard.HNo}");
			$.ajax({
				url:"${pageContext.request.contextPath}/hotspotLike/hotspotUnlike.ho",
				type: "post", 
				data: {
					hNo : '${hotspotBoard.HNo}',
					userId : '${member.userId}'
				},  
				
				success: function(likeCount) { 
					
					console.log("likeCount : " + likeCount);
					
						if(likeCount == 0){
							
							unlikeCheck();
							
						} else if(likeCount != 0){
							
					
							$('.unlikeCount').html(likeCount);
						};
					},
					error: function() { 
					}
			});
		};
		
		function unlikeCheck(){	
			$.ajax({
				url:"${pageContext.request.contextPath}/hotspotLike/unlikeCheck.ho",
				type: "post", 
				data: {
					hNo : '${hotspotBoard.HNo}',
					userId : '${member.userId}'
				},  
				
				success: function(data) { 
					
					console.log("data : " + data.likeCount);
					console.log("data : " + data.unlikeCount);
					console.log("data : " + data.non);
					
					if(data.non == 0){
						
						alert("이미 싫어요 클릭 되었습니다.");
						
					} else if(data.non != 0){
						
						
						$('.likeCount').html(data.likeCount);
						$('.unlikeCount').html(data.unlikeCount);
					};
				},
				error: function() { 
				}
			});
		};
		
		
		

        <c:forEach items="${clist}" var="hc"> 

		// 대장 댓글 insert
		function open${hc.hcNo}(){
			document.getElementById("reple${hc.hcNo}").style.display = 'block';
		};
		
		function goRepleDelete${hc.hcNo}(){

			location.href="${pageContext.request.contextPath}/hotspotBoard/deleteComment.ho?hcNo=${hc.hcNo}&no=${hotspotBoard.HNo}"
		};
		
		</c:forEach>

		
    </script>
    
	
	<c:import url="../common/footer.jsp"/>
	
	