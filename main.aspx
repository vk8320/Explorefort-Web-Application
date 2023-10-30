<%@ Page Title="ExploreFort" Language="C#" MasterPageFile="~/HomePanel.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="ExploreFort_Application.main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home Page</title>
    <style>
        /* CSS for card view */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            width: 30%;
            margin: 1em;
            display: inline-block;
            vertical-align: top;
            padding: 1em;
        }

        h1 {
            text-align: center;
        }

        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        }

        .container {
            padding: 2px 16px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>&nbsp;&nbsp;</p>
    <h1>Welcome to ExploreFort</h1>
    <p>&nbsp;&nbsp;</p>
    <div>
        <div class="container text-center">
            <div class="row">
                <div class="col">
                    <div class="card" style="width: 20rem;">
                        <img src="imgs/guide.png" style="width: 100%">
                        <div class="card-body">
                            <h5 class="card-title">User Guide</h5>
                            <p class="card-text">ExploreFort is a place in which they provides information about fort locations, their historical significance, and local attractions.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 20rem;">
                        <img src="imgs/location.png" style="width: 100%">
                        <div class="card-body">
                            <h5 class="card-title">Fort Navigation</h5>
                            <p class="card-text">A Fort Navigation is a place that attracts visitors due to its cultural, historical, or natural significance. </p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 20rem;">
                        <img src="imgs/booking.png" style="width: 100%">
                        <div class="card-body">
                            <h5 class="card-title">Travel Booking</h5>
                            <p class="card-text">The system handles payment processing and reservation confirmations, making it easy for users to plan and book their travel arrangements in one place.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <p>&nbsp;&nbsp;&nbsp;</p>
</asp:Content>


