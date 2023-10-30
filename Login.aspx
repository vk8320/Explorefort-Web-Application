<%@ Page Title=" UserLogin" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ExploreFort_Application.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" type="image/x-icon" href="imgs/favicon.ico" />
    <style type="text/css">

        .container {
            display: flex;
            height: 500px;
            width: 1000px;
            margin: auto;
            border: 1px solid black;
            margin-top: 100px;
            margin-block-end: 40px;
            margin-left: 250px;
            box-shadow: 20px 20px 20px black;
        }

        body {
            background-color: #ff6a00;
        }


        #form2 {
            background-color: lightgray;
            
        }

        .side {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 70%;
        }

            .side img {
                width: 550px;
                height: 500px;
            }

        #bt1:hover {
            cursor: pointer;
            background-color: #750000;
        }

        #bt1 {
            padding: 12px 30px;
            width: 40%;
            margin-left: 50px;
            margin-top: 50px;
            background-color: black;
            color: white;
            font-weight: bold;
            border: none;
            outline: none;
            border-radius: 15px;
        }
        #h2 {
            margin-left: 160px;
        }
         p {
            font-family: Impact,Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        }
         .box {
            padding: 12px;
            width: 65%;
            margin: 15px;
            border: 1px solid black;
            outline: none;
            border-radius: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <form id="form2" runat="server">
             
            <h1 style="margin-left: 20px;margin-top:40px;">Welcome Back !</h1>
            <h3 style="margin-left: 20px;">Log in to access your account</h3>
            <p style="margin-left: 20px;">Username</p>
            <asp:TextBox ID="txtFn" TextMode="SingleLine" runat="server" Width="300px" Style="margin-left: 20px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter email" ControlToValidate="txtFn" ForeColor="Red" />

            <p style="margin-left: 20px;">Password</p>
            <asp:TextBox ID="txtp1" TextMode="Password" runat="server" Width="300px" Style="margin-left: 20px;"></asp:TextBox>
                 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter password" ControlToValidate="txtp1" ForeColor="Red" />
           

            
            <asp:Button ID="bt1" runat="server" CssClass="bt1" OnClick="bt1_Click" Text="Login" />
<br />
            <br />
                
                    <asp:HyperLink ID="h2" NavigateUrl="Register.aspx" Text="New Account" runat="server" />
       </form>
        <div class="side">

            <img src="imgs/fort2.jpg" />

        </div>




    </div>




</body>
</html>




