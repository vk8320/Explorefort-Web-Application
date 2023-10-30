<%@ Page Title="Register" Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="ExploreFort_Application.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" type="image/x-icon" href="imgs/favicon.ico" />
    <style type="text/css">
            
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 120vh;
            margin: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 20px 20px 20px black;
            border: 1px solid black;
        }

        .form-container {
            width: 400px;
            padding: 40px;
        }

        .side {
            flex: 1;
            display: flex;
            justify-content: end;
            align-items: end;
        }

        .side img {
            max-width: 70%;
            height: 120vh;
            border-radius: 10px;
        }

        body {
            background-color: #ff6a00;
        }

        .form a:hover {
                color: #fd4e4e;
            }


                .form a {
            text-decoration: none;
            color: black;
            margin-top: 20px;
        }

        .submit {
            padding: 12px 30px;
            width: 100%;
            margin-top: 10px;
            background-color: black;
            color: white;
            margin-left:120px;
            font-weight: bold;
            border: none;
            outline: none;
            border-radius: 15px;
        }

        .error-message {
            color: red;
            margin-top: 5px;
            text-align: left;
        }

        @media (max-width: 768px) {
            .container {
                height: auto;
                width: 90%;
                margin: 20px auto;
            }

            .form-container {
                width: 100%;
                padding: 20px;
            }
        }
        .textbox {
    width: 80%;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    color: #555;
    transition: border-color 0.3s ease;
}

.textbox:focus {
    border-color: #ff6a00;
    outline: none;
}

       
    </style>
</head>
<body>

    <div class="container">
         
        <div class="form-container">
            <form id="form1" runat="server">
            <h1>Welcome Back!</h1>
            <h3>Log in to access your account</h3>
           
                <p>Name</p>
                <asp:TextBox ID="txtFn" runat="server" TextMode="SingleLine" CssClass="textbox"></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Name" ControlToValidate="txtFn" ForeColor="Red"></asp:RequiredFieldValidator>

                 <p>Username</p>
                <asp:TextBox ID="txtUsername" runat="server" TextMode="SingleLine" CssClass="textbox"></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>

                <p>Email</p>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="textbox" ></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter email address" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>

                <p>Password</p>
                <asp:TextBox ID="txtp1" TextMode="Password" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter password" ControlToValidate="txtp1" ForeColor="Red"></asp:RequiredFieldValidator>

                <p>Mobile No</p>
                <asp:TextBox ID="txtM" runat="server" TextMode="Number" CssClass="textbox" ></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ControlToValidate="txtM" ForeColor="Red"></asp:RequiredFieldValidator>

                <p>Age</p>
                <asp:TextBox ID="txtA" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter age" ControlToValidate="txtA" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="BtnRegister" runat="server" CssClass="submit" OnClick="j_TextChanged" Text="Register" />
                <br />
                <br />
                <br />
          </form>  
        </div>
         <div class="side">
            <img src="https://i.pinimg.com/originals/0e/03/c5/0e03c519cfcf27c96b8df0c9206c35ae.jpg" />
        </div>
    </div>


</body>
</html>
