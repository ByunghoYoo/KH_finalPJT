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
              <li class="active"><a href="${pageContext.request.contextPath}/admin/general.do">General</a></li>
              <li><a href="${pageContext.request.contextPath}/admin/buttons.do">Buttons</a></li>
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
            <!--  BASIC PROGRESS BARS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Basic Progress Bars</h4>
              <div class="progress">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                  <span class="sr-only">40% Complete (success)</span>
                </div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                  <span class="sr-only">20% Complete</span>
                </div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                  <span class="sr-only">60% Complete (warning)</span>
                </div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                  <span class="sr-only">80% Complete</span>
                </div>
              </div>
            </div>
            <!--/showback -->
            <!--  STRIPPED PROGRESS BARS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Stripped Progress Bars</h4>
              <div class="progress progress-striped">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                  <span class="sr-only">40% Complete (success)</span>
                </div>
              </div>
              <div class="progress progress-striped">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                  <span class="sr-only">20% Complete</span>
                </div>
              </div>
              <div class="progress progress-striped">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                  <span class="sr-only">60% Complete (warning)</span>
                </div>
              </div>
              <div class="progress progress-striped">
                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                  <span class="sr-only">80% Complete (danger)</span>
                </div>
              </div>
            </div>
            <!-- /showback -->
            <!--  ANIMATED PROGRESS BARS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Animated Progress Bars</h4>
              <div class="progress progress-striped active">
                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                  <span class="sr-only">45% Complete</span>
                </div>
              </div>
            </div>
            <!-- /showback -->
            <!--  MODALS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Modal Example</h4>
              <!-- Button trigger modal -->
              <button class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">
                Launch Modal
                </button>
              <!-- Modal -->
              <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body">
                      Hi there, I am a Modal Example for Dashio Admin Panel.
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /showback -->
            <!--  GRITTER NOTICES -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Gritter Examples</h4>
              <p>Click on below buttons to check it out.</p>
              <a id="add-regular" class="btn btn-default btn-sm" href="javascript:;">Regular</a>
              <a id="add-sticky" class="btn btn-success  btn-sm" href="javascript:;">Sticky</a>
              <a id="add-without-image" class="btn btn-info  btn-sm" href="javascript:;">Imageless</a>
              <a id="add-gritter-light" class="btn btn-warning  btn-sm" href="javascript:;">Light</a>
              <a id="remove-all" class="btn btn-danger  btn-sm" href="general.html#">Remove all</a>
            </div>
            <!-- /showback -->
          </div>
          <!-- /col-lg-6 -->
          <div class="col-lg-6 col-md-6 col-sm-12">
            <!--  ALERTS EXAMPLES -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Alerts Examples</h4>
              <div class="alert alert-success"><b>Well done!</b> You successfully read this important alert message.</div>
              <div class="alert alert-info"><b>Heads up!</b> This alert needs your attention, but it's not super important.</div>
              <div class="alert alert-warning"><b>Warning!</b> Better check yourself, you're not looking too good.</div>
              <div class="alert alert-danger"><b>Oh snap!</b> Change a few things up and try submitting again.</div>
            </div>
            <!-- /showback -->
            <!--  DISMISSABLE ALERT -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Dismissable Alert</h4>
              <div class="alert alert-warning alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Warning!</strong> Better check yourself, you're not looking too good.
              </div>
            </div>
            <!-- /showback -->
            <!--  BADGES -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Badges</h4>
              <span class="badge">5</span>
              <span class="badge bg-primary">10</span>
              <span class="badge bg-success">15</span>
              <span class="badge bg-info">20</span>
              <span class="badge bg-inverse">25</span>
              <span class="badge bg-warning">30</span>
              <span class="badge bg-important">35</span>
            </div>
            <!-- /showback -->
            <!--  LABELS -->
            <div class="showback">
              <h4><i class="fa fa-angle-right"></i> Labels</h4>
              <span class="label label-default">label</span>
              <span class="label label-primary">Primary</span>
              <span class="label label-success">Success</span>
              <span class="label label-info">Info</span>
              <span class="label label-warning">Warning</span>
              <span class="label label-danger">Danger</span>
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
		<a href="general.html#" class="go-top"> <i
			class="fa fa-angle-up"></i>
		</a>
	</div>
</footer>
<!--footer end-->
</section>

<script src="${pageContext.request.contextPath}/resources/lib/gritter/js/jquery.gritter.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/gritter-conf.js"></script>

<c:import url="../admincommon/adminfooter.jsp"/>
