<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accumodation.aspx.cs" Inherits="demoUniversity.Accumodation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Home</title>
    <style>
        .foot{
            position:static;
            bottom:-5em;
            left:40%;
            text-align:center;
   
        }

    a {

        display:block;
        height:40px;
        width:100%;
        text-align:center;
        padding:0px;
        color:blue;
        text-decoration:none;
        font-size:20px;

    }
    ul {
        vertical-align:middle;
        list-style-type: none;  
        text-emphasis-color:white;
        margin-left:150px;
        width: 1000px;
    }
    li {
        float: left;
        vertical-align:middle;
    }
        li a.active {
            background-color:blue;
            color:white;
        }
        li a:hover:not(.active) {
            background-color:gray;
        }
        .dropdown {
      position: relative;
      display: inline-block;
            top: 0px;
            left: 0px;
            width: 197px;
        }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: gray;
      min-width: 200px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown:hover .dropdown-content {
        color: white;
      display: block;
    }
    </style>
</head>
<body style="background-color: #CCFFFF">
    <form id="form1" runat="server">
        <div style="text-align:center; width:1350px; background-color:midnightblue">
            <div style="font-size:60pt; color: #FFFFCC ; width:inherit">University Admission Information</div>
        </div>
        <br />
        <br />
        <br />
        <div style="text-align:center; width:1350px;  background-color:#5784BE">
            <div style="font-size:40pt; color: #FFFFCC ; width:inherit">Accomodation</div>
        </div>
        <br />
        <br />
        <br />
        <p class="foot" style="font:15px">
            Contact Us: support@universityadmission.com<br />
           ©System Development Project 2019
        </p>   
    </form>

</body>
</html>
