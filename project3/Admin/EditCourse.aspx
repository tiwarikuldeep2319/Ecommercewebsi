<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="EditCourse.aspx.cs" Inherits="project3.Admin.EditCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:TextBox ID="TextBox1" runat="server" Height="45px"  Width="913px" placeholder="Name"></asp:TextBox>

    <br />
    <br />

    <asp:TextBox ID="TextBox2" runat="server" Height="45px" Width="913px" placeholder="Desc" TextMode="MultiLine"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:TextBox ID="TextBox3" runat="server" Height="45px" Width="913px" placeholder="Duration"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Height="45px" Width="913px" placeholder="Price"></asp:TextBox>
    <br />
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" Height="62px" Width="493px" />
    <br />
    <br />
    <asp:TextBox ID="TextBox5" runat="server" Height="45px" Width="913px" placeholder="Slug"></asp:TextBox>
    <br />
    <asp:Button ID="Submit" runat="server" Text="submit"   />





</asp:Content>
