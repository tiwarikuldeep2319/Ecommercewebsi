<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="project3.Admin.users" %>
<%@ Import Namespace="project3.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h2>User <span style="color:orange;">Details</span></h2></center>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">S. no.</th>
      <th scope="col">User Name</th>
      <th scope="col">User id</th>
      <th scope="col">User E-Mail</th>
      <th scope="col">User Password</th>
      <th scope="col">Status</th>
      
        <th scope="col">Click</th>
    
    </tr>
  </thead>
        <%
            DbWork db = new DbWork();
            db.reader = db.AlluserDeatils();
            int sno = 1;
            while (db.reader.Read())
            {



       %>
  <tbody>
    <tr>
      <th scope="row"><%= sno++ %></th>
      <td><%=db.reader["uname"] %></td>
      <td><%=db.reader["Rid"] %></td>
      <td><%=db.reader["umail"] %></td>
      <td><%=db.reader["upass"] %></td>
         <td><%=db.reader["Block"] %></td>



        <td> <a href="#" type="button" class="btn btn-outline-warning">Users Cource</a></td>
               <td>   <%if (db.reader["Block"].ToString() == "true")
              {
              %>
          <button><a href="ChangeRole.aspx?id=<%=db.reader["Rid"] %>&action=false">Change</a></button>
          <%
              }
              else
              {
                 %>
          <button><a href="ChangeRole.aspx?id=<%=db.reader["Rid"] %>&action=true">Change</a></button>
          <%}
                
              %>
        
      </td>
    </tr>
      <%
            }  
            %>

  </tbody>
       
</table>
</asp:Content>
