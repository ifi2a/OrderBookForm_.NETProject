<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookOrder.aspx.cs" Inherits="BookOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 200px;
            height: 98px;
        }
        .style3
        {
            font-size: 24pt;
            color: #FF0000;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            height: 24px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <img alt="Book with a worm" class="style2" src="Images/bookworm-red.jpg" /></td>
                <td class="style3">
                    <em style="font-weight: 700; color: #000000">The Bookworm Bookstore</em></td>
            </tr>
        </table>
        <br />
        <br />
        Please select a book:&nbsp;
        <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource1" DataTextField="title" DataValueField="isbn">
        </asp:DropDownList>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="lblAuthor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4" style="margin-left: 120px">
                    <asp:Label ID="lblPublisher" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" style="margin-left: 120px">
                    <span class="style5">$</span>
                    <asp:Label ID="lblRetailPrice" runat="server" style="font-size: large"></asp:Label>
&nbsp;<span class="style5">each</span></td>
            </tr>
        </table>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/bookstore.mdb" SelectCommand="SELECT [isbn], [title], [author_name], [publisher_name], [retail_price] FROM [Books] ORDER BY [title]"></asp:AccessDataSource>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
