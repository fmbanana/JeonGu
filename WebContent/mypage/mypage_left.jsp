<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<aside class="sm-side">
	<div class="user-head">
		<a class="inbox-avatar" href="javascript:;"> <img width="64"
			hieght="60"
			src="http://bootsnipp.com/img/avatars/ebeb306fd7ec11ab68cbcaa34282158bd80361a7.jpg">
		</a>
		<div class="user-name">
			<h5>
				<a href="#">Alireza Zare</a>
			</h5>
			<span><a href="#">Info.Ali.Pci@Gmail.com</a></span>
		</div>
		<a class="mail-dropdown pull-right" href="javascript:;"> <i
			class="fa fa-chevron-down"></i>
		</a>
	</div>
	<div class="inbox-body">
		<a href="#myModal" data-toggle="modal" title="Compose"
			class="btn btn-compose"> Compose </a>
		<!-- Modal -->
		<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
			tabindex="-1" id="myModal" class="modal fade" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							type="button">×</button>
						<h4 class="modal-title">Compose</h4>
					</div>
					<div class="modal-body">
						<form role="form" class="form-horizontal">
							<div class="form-group">
								<label class="col-lg-2 control-label">To</label>
								<div class="col-lg-10">
									<input type="text" placeholder="" id="inputEmail1"
										class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Cc / Bcc</label>
								<div class="col-lg-10">
									<input type="text" placeholder="" id="cc" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Subject</label>
								<div class="col-lg-10">
									<input type="text" placeholder="" id="inputPassword1"
										class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Message</label>
								<div class="col-lg-10">
									<textarea rows="10" cols="30" class="form-control" id=""
										name=""></textarea>
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<span class="btn green fileinput-button"> <i
										class="fa fa-plus fa fa-white"></i> <span>Attachment</span> <input
										type="file" name="files[]" multiple="">
									</span>
									<button class="btn btn-send" type="submit">Send</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>
	<ul class="inbox-nav inbox-divider">
		<li class="active"><a href="purchase_history.jsp"><i class="fa fa-gift"
				aria-hidden="true"></i> 구매내역 <span
				class="label label-danger pull-right">2</span></a></li>
		<li><a href="sales_history.jsp"><i class="fa fa-money" aria-hidden="true"></i>
				판매내역<span class="label label-success pull-right">2</span></a></li>
		<li><a href="cloud_open_history.jsp"><i class="fa fa-cloud-upload"></i> 클라우드개설내역<span
				class="label label-primary pull-right">1</span></a></li>
		<li><a href="cloud_invest_history.jsp"><i class=" fa fa-line-chart"></i> 클라우드투자내역 <span
				class="label label-info pull-right">2</span></a></li>
		<li><a href="#"><i class=" fa fa-twitch"></i> 메시지<span
				class="label label-warning pull-right">1</span></a></li>
		<li><a href="#"><i class=" fa fa-bullhorn"></i> 경매내역<span
				class="label label-default pull-right">1</span></a></li>
	</ul>
	<ul class="nav nav-pills nav-stacked labels-info inbox-divider">
		<li>
			<h4>Sub Menu</h4>
		</li>
		<li><a href="#"> <i class=" fa fa-sign-blank text-danger"></i>
				취소
		</a></li>
		<li><a href="#"> <i class=" fa fa-sign-blank text-success"></i>
				반송확인 
	</ul>
	<ul class="nav nav-pills nav-stacked labels-info ">
		<li>
			<h4>Buddy online</h4>
		</li>
		<li><a href="#"> <i class=" fa fa-circle text-success"></i>Alireza
				Zare
				<p>I do not think</p></a></li>
		<li><a href="#"> <i class=" fa fa-circle text-danger"></i>Dark
				Coders
				<p>Busy with coding</p></a></li>
		<li><a href="#"> <i class=" fa fa-circle text-muted "></i>Mentaalist
				<p>I out of control</p></a></li>
		<li><a href="#"> <i class=" fa fa-circle text-muted "></i>H3s4m
				<p>I am not here</p></a></li>
		<li><a href="#"> <i class=" fa fa-circle text-muted "></i>Dead
				man
				<p>I do not think</p></a></li>
	</ul>

	<div class="inbox-body text-center">
		<div class="btn-group">
			<a class="btn mini btn-primary" href="javascript:;"> <i
				class="fa fa-plus"></i>
			</a>
		</div>
		<div class="btn-group">
			<a class="btn mini btn-success" href="javascript:;"> <i
				class="fa fa-phone"></i>
			</a>
		</div>
		<div class="btn-group">
			<a class="btn mini btn-info" href="javascript:;"> <i
				class="fa fa-cog"></i>
			</a>
		</div>
	</div>

	</aside>
</body>
</html>