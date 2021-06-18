<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frontpage.aspx.cs" Inherits="Task.frontpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap 4 List Group with Contextual States</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .bs-example{
        margin: 20px;        
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        <i class="fa fa-home"></i> Home
    </a>
    <a href="#" class="list-group-item list-group-item-action">
        <i class="fa fa-camera"></i> Pictures <span class="badge badge-pill badge-primary pull-right">145</span>
    </a>
    <a href="#" class="list-group-item list-group-item-action">
        <i class="fa fa-music"></i> Music <span class="badge badge-pill badge-primary pull-right">50</span>
    </a>
    <a href="#" class="list-group-item list-group-item-action">
        <i class="fa fa-film"></i> Videos <span class="badge badge-pill badge-primary pull-right">8</span>
    </a>
</div>
</div>
    </form>
</body>
</html>
