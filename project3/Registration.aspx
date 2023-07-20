<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="project3.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br/>
    <center>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your name" Width="419px"></asp:TextBox>
        <br><br>
        <asp:TextBox ID="TextBox2" runat="server" Textmode="Email" placeholder="Enter your Email" Width="411px" ></asp:TextBox>
         <br><br>
        <asp:TextBox ID="TextBox3" runat="server" Textmode="Password" placeholder="Enter your name" Width="408px"></asp:TextBox>
         <br><br>





    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
       </center>
   

</asp:Content>
