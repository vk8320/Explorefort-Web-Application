<%@ Page Language="C#" Title="About Us" MasterPageFile="~/HomePanel.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="ExploreFort_Application.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
            .container {
            max-width: 800px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 20px;
            margin: 20px auto;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
            font-family: Impact, Arial, sans-serif;
            font-weight: bold;
            font-size: 30px;
        }

        p {
            color: #555;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .content-section {
            margin-bottom: 40px;
            margin:20px;
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
        <h2>About Us</h2>
        <div class="content-section">
             <div class="image-wrapper">
                 <img src="imgs/about.png" />
            </div>
            <p>
                <strong>ExploreFort</strong> is a user-friendly mobile application designed for those who want to explore the beautiful and historical city of Fort in Maharashtra. The app offers a unique way to discover the city's rich culture and history, as well as its natural beauty and tourist attractions. It is an ideal travel companion for both locals and tourists who want to make the most of their time in Fort.
            </p>
            <p>
                With <strong>ExploreFort</strong>, users can easily find and navigate to various points of interest, such as museums, parks, beaches, restaurants, and more. The app provides detailed information about each location, including opening hours and reviews from other users. Whether you are a first-time visitor or a seasoned traveler, <strong>ExploreFort</strong> is the perfect tool to help you explore and experience all that Fort in Maharashtra has to offer.
            </p>
        </div>
    </div>



</asp:Content>
