<%@ Page Title="UserGuide" Language="C#" MasterPageFile="~/HomePanel.Master" AutoEventWireup="true" CodeFile="UserGuide.aspx.cs" Inherits="ExploreFort_Application.UserGuide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            max-width: 800px;
            padding: 20px;
            background-color: #fff;
            border-radius: 20px;
            margin: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
            font-family: Impact,Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
            font-weight: bold;
        }

        h3 {
            color: #333;
            margin-top: 30px;
            margin-left: 20px;
            font-family: Impact, Haettenschweiler, sans-serif;
        }

        p {
            color: #555;
            margin-left: 20px;
        }

        ul {
            list-style-type: disc;
            padding-left: 20px;
            margin-left: 20px;
        }

        ol {
            list-style-type: decimal;
            padding-left: 20px;
            margin-left: 20px;
        }

          .image-wrapper {
            text-align: center;
            margin-bottom: 20px;
        }

        .image-wrapper img {
            max-width:20%;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <h2>User Guide</h2>
        <br />
        <div class="image-wrapper">
            <img src="imgs/guide.png" />
            </div>
        <br />
        <h3>Introduction</h3>
        <p>Welcome to the user guide for the ExploreFort application. This guide will provide you with step-by-step instructions on how to use the various features and functionalities of the application.</p>
        <br />
        <h3>Getting Started</h3>
        <p>Before you begin using the ExploreFort application, make sure you have created an account and logged in. If you don't have an account, you can register for a new account on the registration page.</p>
        <br />
        <h3>Dashboard</h3>
        <p>The dashboard is the main hub of the ExploreFort application. It provides an overview of your bookings, forts information, and other relevant details.</p>
        <ul>
            <li>Booking History: View your previous bookings and their details.</li>
            <li>Forts: Explore the list of available forts and their information.</li>
            <li>Hotels: Find hotels near the forts and view their details.</li>
            <li>Travel Booking: Book travel options for visiting the forts.</li>
            <li>Profile: Manage your profile and update personal information.</li>
        </ul>
        <br />
        <h3>Booking a Fort</h3>
        <p>To book a fort, follow these steps:</p>
        <ol>
            <li>Go to the Forts page from the dashboard.</li>
            <li>Select a fort from the list.</li>
            <li>Choose your preferred travel dates and other options.</li>
            <li>Click on the "Book Now" button to confirm your booking.</li>
            <li>Review the booking details and proceed to make the payment.</li>
            <li>Once the payment is successful, your booking will be confirmed.</li>
        </ol>
        <br />
        <h3>Conclusion</h3>
        <p>Thank you for using the ExploreFort application. We hope this user guide has provided you with the necessary information to navigate and utilize the app effectively.</p>
    </div>


</asp:Content>
