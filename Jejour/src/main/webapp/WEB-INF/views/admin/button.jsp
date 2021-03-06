<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<c:import url="../admincommon/adminheader.jsp"/>

<!-- **********************************************************************************************************************************************************
        좌측메뉴바
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="#"><img src="../resources/images/admin.png" class="img-circle" width="80"></a></p>
          <h5 class="centered">관리자</h5>

          <li class="mt">
            <a href="${pageContext.request.contextPath}/admin/admin.do">
              <i class="fa fa-dashboard"></i>
              <span>대시보드</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="${pageContext.request.contextPath}/admin/memberManager.do">
              <i class="fa fa-users"></i>
              <span>회원 관리</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>게시판 관리</span>
              </a>
            <ul class="sub">
              <li><a href="${pageContext.request.contextPath}/admin/hotspotManager.do">리뷰 게시판</a></li>
              <li><a href="${pageContext.request.contextPath}/admin/flashManager.do">번개 게시판</a></li>
              
            </ul>
          </li>
          
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI 요소</span>
              </a>
            <ul class="sub">
              <li><a href="${pageContext.request.contextPath}/admin/general.do">General</a></li>
              <li class="active"><a href="${pageContext.request.contextPath}/admin/buttons.do">Buttons</a></li>
              <li><a href="${pageContext.request.contextPath}/admin/panels.do">Panels</a></li>
              <li><a href="${pageContext.request.contextPath}/admin/font.do">Font Awesome</a></li>
            </ul>
          </li>
          
 
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row mt">
          <div class="col-lg-6 col-md-6 col-sm-12">
            <!--  BASIC BUTTONS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Basic Buttons</h4>
              <button type="button" class="btn btn-default">Default</button>
              <button type="button" class="btn btn-primary">Primary</button>
              <button type="button" class="btn btn-success">Success</button>
              <button type="button" class="btn btn-info">Info</button>
              <button type="button" class="btn btn-warning">Warning</button>
              <button type="button" class="btn btn-danger">Danger</button>
            </div>
            <!-- /showback -->
            <!--  BUTTONS ROUND -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Buttons Round</h4>
              <button type="button" class="btn btn-round btn-default">Default</button>
              <button type="button" class="btn btn-round btn-primary">Primary</button>
              <button type="button" class="btn btn-round btn-success">Success</button>
              <button type="button" class="btn btn-round btn-info">Info</button>
              <button type="button" class="btn btn-round btn-warning">Warning</button>
              <button type="button" class="btn btn-round btn-danger">Danger</button>
            </div>
            <!-- /showback -->
            <!--  THEME BUTTONS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Theme Buttons</h4>
              <!-- Standard button -->
              <button type="button" class="btn btn-theme">Theme</button>
              <button type="button" class="btn btn-theme02">Theme 02</button>
              <button type="button" class="btn btn-theme03">Theme 03</button>
              <button type="button" class="btn btn-theme04">Theme 04</button>
            </div>
            <!-- /showback -->
            <!--  BUTTONS GROUP -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Buttons Group</h4>
              <div class="btn-group">
                <button type="button" class="btn btn-default">Left</button>
                <button type="button" class="btn btn-default">Middle</button>
                <button type="button" class="btn btn-default">Right</button>
              </div>
            </div>
            <!-- /showback -->
            <!--  BUTTONS NESTING -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Button Nesting</h4>
              <div class="btn-group">
                <button type="button" class="btn btn-default">1</button>
                <button type="button" class="btn btn-default">2</button>
                <div class="btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    Dropdown
                    <span class="caret"></span>
                    </button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Dropdown link</a></li>
                    <li><a href="#">Dropdown link</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- /showback -->
            <!--  SPLIT BUTTONS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Split Buttons</h4>
              <!-- Split button -->
              <div class="btn-group">
                <button type="button" class="btn btn-theme03">Action</button>
                <button type="button" class="btn btn-theme03 dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                  </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div>
            </div>
            <!-- /showback -->
          </div>
          <!-- /col-lg-6 -->
          <div class="col-lg-6 col-md-6 col-sm-12">
            <!--  BUTTONS SIZES -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Buttons Sizes</h4>
              <p>
                <button type="button" class="btn btn-primary btn-lg">Large button</button>
                <button type="button" class="btn btn-default btn-lg">Large button</button>
              </p>
              <p>
                <button type="button" class="btn btn-primary">Default button</button>
                <button type="button" class="btn btn-default">Default button</button>
              </p>
              <p>
                <button type="button" class="btn btn-primary btn-sm">Small button</button>
                <button type="button" class="btn btn-default btn-sm">Small button</button>
              </p>
              <p>
                <button type="button" class="btn btn-primary btn-xs">Extra small button</button>
                <button type="button" class="btn btn-default btn-xs">Extra small button</button>
              </p>
            </div>
            <!-- /showback -->
            <!-- BUTTON BLOCK -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Block Buttons</h4>
              <button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button>
              <button type="button" class="btn btn-default btn-lg btn-block">Block level button</button>
            </div>
            <!--/showback -->
            <!-- JUSTIFIED BUTTONS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Justified Buttons</h4>
              <div class="btn-group btn-group-justified">
                <div class="btn-group">
                  <button type="button" class="btn btn-theme">Left</button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn btn-theme">Middle</button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn btn-theme">Right</button>
                </div>
              </div>
            </div>
            <!--/showback -->
            <!-- DROPDOWN BUTTONS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Dropdown Buttons</h4>
              <!-- Single button -->
              <div class="btn-group">
                <button type="button" class="btn btn-theme dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                  </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div>
              <!-- Single button -->
              <div class="btn-group">
                <button type="button" class="btn btn-theme04 dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                  </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div>
            </div>
            <!-- /showback -->
            <!-- BUTTONS WITH ICONS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Buttons With Icons</h4>
              <button type="button" class="btn btn-theme"><i class="fa fa-cog"></i> Button</button>
              <button type="button" class="btn btn-theme02"><i class="fa fa-check"></i> Button</button>
              <button type="button" class="btn btn-theme04"><i class="fa fa-heart"></i> Button</button>
            </div>
            <!-- /showback -->
          </div>
          <!-- /col-lg-6 -->
        </div>
        <!--/ row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer 시작-->
<footer class="site-footer">
	<div class="text-center">
		<p>
			&copy; Copyrights <strong>JEJOUR</strong>. All Rights Reserved
		</p>
		<div class="credits">
			Created with BrotherTravelingStudio template by <a href="https://templatemag.com/">TemplateMag</a>
		</div>
		<a href="button.html#" class="go-top"> <i
			class="fa fa-angle-up"></i>
		</a>
	</div>
</footer>
<!--footer end-->
</section>
   
   <c:import url="../admincommon/adminfooter.jsp"/>
