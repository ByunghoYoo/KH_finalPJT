<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

	<c:import url="../common/header.jsp"/>
	
    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ftco-animate mx-auto">
            <form action="">
              <h2 class="mb-3"><label style="width: 15%;">���� :</label><input type="text" name="first_name" placeholder="" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" required="" class="single-input"></h2>
              <br>
              <p><label style="width: 15%;">���� :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</p>
              <p><label style="width: 15%;">�ο� :</label><input type="text" name="first_name" placeholder="ex)3��" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ex)3��'" required="" class="multi-input"></p>
              <p><label style="width: 15%;">�Ͻ� :</label><input type="datetime-local" name="first_name" placeholder="ex)2020-11-11" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ex)2020-11-11'" required="" class="multi-input"></p>
              <p><label style="width: 15%;">��� :</label><input type="text" name="first_name" placeholder="ex)���� �������� �˻��Ͽ� ���� Ŭ���ϼ���!" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ex)���� �������� �˻��Ͽ� ���� Ŭ���ϼ���!'" required="" class="multi-input" readonly ></p>
              <p><label style="width: 15%;">���� :</label><input type="text" name="first_name" placeholder="ex)���� ���ְ� �԰� ��� ��!" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ex)���� ���ְ� �԰� ��� ��!'" required="" class="multi-input"></p>
              <!-- input hidden���� �浵, ���� �޾ƿ���! -->
              <br>
              <p>
                <img src="images/image_6.jpg" alt="" class="img-fluid">
              </p>
              <br>
              <div style="text-align: center;">
                <input type="submit" class="search-submit btn btn-primary" value="�����Ϸ�">
                &nbsp;&nbsp;
                <input type="button" class="search-submit btn btn-primary" value="�����ϱ�">
                &nbsp;&nbsp;
                <input type="button" class="search-submit btn btn-primary" value="�������">
              </div>
            </form>
            </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->
    
    <c:import url="../common/footer.jsp"/>
    