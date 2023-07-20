<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project3.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="border:5px solid red;" >
    <center>
     <h1 style="background-color:aqua; text-align:center">Admin<Spnam style="background-color:greenyellow; text-align:center"></Spnam></h1></br>
    <asp:TextBox ID="TextBox1" runat="server"  style="margin-left: 0px" Width="400px" Height="30px"  BorderColor="Blue" placeholder="Enter your Email"></asp:TextBox>
    <br />
    <br />
        <asp:TextBox ID="TextBox2" runat="server"  BorderColor="Blue" BorderStyle="Solid" Width="400px" CssClass="offset-sm-0" Height="30px" style="margin-top: 0"  placeholder="Enter your Password"></asp:TextBox>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Gray" ForeColor="#FFFFCC" Width="204px" OnClick="Button1_Click" />
        </center>   

</asp:Content>