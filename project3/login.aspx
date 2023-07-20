<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project3.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="border:5px solid red;" >
    <center >
        <br>
        <br>
        <h1 style="background-color:aqua; text-align:center">Log<Spnam style="background-color:greenyellow; text-align:center">in</Spnam></h1></br>
         <asp:TextBox ID="TextBox2" runat="server" Textmode="Email" placeholder="Enter your Email" Width="607px" Height="45px"></asp:TextBox>
         <br><br>
        <asp:TextBox ID="TextBox3" runat="server" Textmode="Password" placeholder="Enter your name"  Width="607px" Height="45px"></asp:TextBox>
         <br><br>





    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="Black" ForeColor="White" Height="61px" Width="187px" />

    </center>

        </div>

</asp:Content>
