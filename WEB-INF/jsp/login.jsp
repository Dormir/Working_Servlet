<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div class="page-header" align="center">
		<h1>Login</h1>
	</div>
	<div align="center">
		<table border="0">
			<%=request.getAttribute("state")%>
			<form method="POST">
				<tr>
					<td>
						<div class="input-group" align="center" style="WIDTH: 350px">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-user" aria-hidden="true"></span></span> <input
								type="text" class="form-control" placeholder="Username"
								name="user">
					</td>
				</tr>
				<tr>

					<td>
						<div class="input-group" align="center" style="WIDTH: 350px">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-lock" aria-hidden="true"></span></span> <input
								type="password" class="form-control" placeholder="PassWord"
								name="password">
					</td>
				</tr>
				<tr>
					<td colspan="2"><input class="btn btn-info" type="submit"
						style="WIDTH: 350px" value="ログイン"></input></td>
				</tr>
			</form>

		</table>
	</div>
</body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>

