<%@ Page Title="Feedback" MasterPageFile="~/HomePanel.Master" Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="ExploreFort_Application.feedback" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        form {
            background-color: #ff6a00;
        }

        p {
            font-family: Impact,Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        }

        body {
            background-color: #ff6a00;
        }


        .box {
            padding: 12px;
            width: 65%;
            margin: 15px;
            border: 1px solid black;
            outline: none;
            border-radius: 20px;
        }

        .form a {
            text-decoration: none;
            color: black;
            margin-top: 20px;
        }


            .form a:hover {
                color: #fd4e4e;
            }

       

        .submit {
            padding: 12px 30px;
            width: 40%;
            margin-top: 40px;
            background-color: mediumvioletred;
            color: white;
            margin-left: 220px;
            border: none;
            outline: none;
            border-radius: 20px;
            cursor: pointer;
            background-color: mediumvioletred;
        }
    </style>

    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>


     <main class="main-content border-radius-lg">

        <div class="container-fluid py-4">



            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="d-flex flex-column h-100">

                        <p style="text-align: center; font-size: 3rem;">Feedback Form</p>

                        <form id="form1" enctype="multipart/form-data">

                            <br />
                            <p>Name</p>
                            <asp:TextBox ID="txtName" runat="server" TextMode="SingleLine" Columns="2">
                            </asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name" ForeColor="White"></asp:RequiredFieldValidator>
                            <br />
                            <p>Email</p>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="SingleLine"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email" ForeColor="White"></asp:RequiredFieldValidator>
                            <br />
                            <p>Subject</p>
                            <asp:TextBox ID="txtSub" runat="server" TextMode="SingleLine"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSub" ErrorMessage="Enter Subject" ForeColor="White"></asp:RequiredFieldValidator>
                            <br />
                            <p>Message</p>
                            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMessage" ErrorMessage="Enter Message" ForeColor="White"></asp:RequiredFieldValidator>
         
                             <asp:Button ID="submit" runat="server" CssClass="submit" OnClick="btnSubmit" Text="Submit"  />

                        </form>
                    </div>
                </div>
            </div>
        </div>

</body>


    </asp:Content>