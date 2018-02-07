<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Quản Lý Đơn Hàng</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<jsp:include page="_top.jsp"></jsp:include>
			<jsp:include page="_menu.jsp"></jsp:include>
		</nav>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<div class="col-lg-12">
							<h1 class="page-header">
								Quản Lý <small>Đơn Đặt Hàng</small>
							</h1>
							<ol class="breadcrumb">
								<li class="active"><i class="fa fa-dashboard"></i> <a
									href="">Thêm</a></li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-6">

						<form role="form">

							<div class="form-group">
								<label>Text Input</label> <input class="form-control">
								<p class="help-block">Example block-level help text here.</p>
							</div>

							<div class="form-group">
								<label>Text Input with Placeholder</label> <input
									class="form-control" placeholder="Enter text">
							</div>

							<div class="form-group">
								<label>Static Control</label>
								<p class="form-control-static">email@example.com</p>
							</div>

							<div class="form-group">
								<label>File input</label> <input type="file">
							</div>

							<div class="form-group">
								<label>Text area</label>
								<textarea class="form-control" rows="3"></textarea>
							</div>

							<div class="form-group">
								<label>Checkboxes</label>
								<div class="checkbox">
									<label> <input type="checkbox" value="">Checkbox
										1
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value="">Checkbox
										2
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value="">Checkbox
										3
									</label>
								</div>
							</div>

							<div class="form-group">
								<label>Inline Checkboxes</label> <label class="checkbox-inline">
									<input type="checkbox">1
								</label> <label class="checkbox-inline"> <input type="checkbox">2
								</label> <label class="checkbox-inline"> <input type="checkbox">3
								</label>
							</div>

							<div class="form-group">
								<label>Radio Buttons</label>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option1" checked>Radio 1
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option2">Radio 2
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios3" value="option3">Radio 3
									</label>
								</div>
							</div>

							<div class="form-group">
								<label>Inline Radio Buttons</label> <label class="radio-inline">
									<input type="radio" name="optionsRadiosInline"
									id="optionsRadiosInline1" value="option1" checked>1
								</label> <label class="radio-inline"> <input type="radio"
									name="optionsRadiosInline" id="optionsRadiosInline2"
									value="option2">2
								</label> <label class="radio-inline"> <input type="radio"
									name="optionsRadiosInline" id="optionsRadiosInline3"
									value="option3">3
								</label>
							</div>

							<div class="form-group">
								<label>Selects</label> <select class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>

							<div class="form-group">
								<label>Multiple Selects</label> <select multiple
									class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>

							<button type="submit" class="btn btn-default">Submit
								Button</button>
							<button type="reset" class="btn btn-default">Reset
								Button</button>

						</form>

					</div>
					<div class="col-lg-6">
						<h1>Disabled Form States</h1>

						<form role="form">

							<fieldset disabled>

								<div class="form-group">
									<label for="disabledSelect">Disabled input</label> <input
										class="form-control" id="disabledInput" type="text"
										placeholder="Disabled input" disabled>
								</div>

								<div class="form-group">
									<label for="disabledSelect">Disabled select menu</label> <select
										id="disabledSelect" class="form-control">
										<option>Disabled select</option>
									</select>
								</div>

								<div class="checkbox">
									<label> <input type="checkbox">Disabled
										Checkbox
									</label>
								</div>

								<button type="submit" class="btn btn-primary">Disabled
									Button</button>

							</fieldset>

						</form>

						<h1>Form Validation</h1>

						<form role="form">

							<div class="form-group has-success">
								<label class="control-label" for="inputSuccess">Input
									with success</label> <input type="text" class="form-control"
									id="inputSuccess">
							</div>

							<div class="form-group has-warning">
								<label class="control-label" for="inputWarning">Input
									with warning</label> <input type="text" class="form-control"
									id="inputWarning">
							</div>

							<div class="form-group has-error">
								<label class="control-label" for="inputError">Input with
									error</label> <input type="text" class="form-control" id="inputError">
							</div>

						</form>

						<h1>Input Groups</h1>

						<form role="form">

							<div class="form-group input-group">
								<span class="input-group-addon">@</span> <input type="text"
									class="form-control" placeholder="Username">
							</div>

							<div class="form-group input-group">
								<input type="text" class="form-control"> <span
									class="input-group-addon">.00</span>
							</div>

							<div class="form-group input-group">
								<span class="input-group-addon"><i class="fa fa-eur"></i></span>
								<input type="text" class="form-control"
									placeholder="Font Awesome Icon">
							</div>

							<div class="form-group input-group">
								<span class="input-group-addon">$</span> <input type="text"
									class="form-control"> <span class="input-group-addon">.00</span>
							</div>

							<div class="form-group input-group">
								<input type="text" class="form-control"> <span
									class="input-group-btn"><button class="btn btn-default"
										type="button">
										<i class="fa fa-search"></i>
									</button></span>
							</div>
						</form>
						<p>
							For complete documentation, please visit <a
								href="http://getbootstrap.com/css/#forms">Bootstrap's Form
								Documentation</a>.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.11.0.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
