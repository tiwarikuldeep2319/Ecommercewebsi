<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="coursedetail.aspx.cs" Inherits="project3.coursedetail" %>

<%@ Import Namespace="project3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <%
        string cid = Request.QueryString["id"].ToString();
        DbWork db = new DbWork();
        db.reader = db.courseDetails(cid);
        db.reader.Read();
        {
    %>
    <div class="card" style="width: 18rem;">
        <img style="width: 300px; height: 400px;" src="/Admin/imge/hh/<%= db.reader["image"] %>">
        <div class="card-body">
            <h3 class="card-title"><span style="color: dodgerblue;">Name :- </span><%=db.reader["name"] %></h3>
            <h4 class="card-text"><span style="color: dodgerblue;">Description :- </span><%=db.reader["disc"] %></h4>
            <h4><span style="color: dodgerblue;">Validity:- </span><%=db.reader["duration"] %></h4>
            <h4><span style="color: dodgerblue;">Only for :- </span>$<%=db.reader["price"] %></h4>
            <asp:Button ID="buynow" runat="server" OnClick="buynow_Click" Text="Buy Now" CssClass="btn btn-primary" />
        </div>
    </div>
    <%} %>
</asp:Content>
