<%@ Page Title="Search" Language="C#" MasterPageFile="~/HomePanel.Master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="ExploreFort_Application.search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin: 20px;
        }

        .card {
            width: 100%;
            overflow: hidden;
            padding: 10px;
            box-sizing: border-box;
        }

        .card-img-top {
            width: 100%;
            height: auto;
            object-fit: cover;
            padding:20px;
        }

        .search {
            margin-left: 580px;
            margin-top: 20px;
        }

        .search-button {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding:5px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }

            .search-button:hover {
                background-color: #45a049;
            }

            .search-button:active {
                background-color: #3e8e41;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1">
        <div>
            <asp:TextBox ID="txtKeyword" runat="server" placeholder="Search for a hotel or fort..." CssClass="search" Width="220px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="search-button" />
            <br />
            <asp:Label ID="lblSearchMessage" runat="server" Text=""></asp:Label>
            <br />
            <div id="divResults" runat="server"></div>
            <asp:Repeater ID="rptResults" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <div class="card-body">
                            <%# Eval("ColumnName") %>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>

</asp:Content>
