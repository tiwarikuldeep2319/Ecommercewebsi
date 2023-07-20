<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="AllCourse.aspx.cs" Inherits="project3.Admin.AllCourse" %>
<%@ Import Namespace="project3.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fashion_section">
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <h1 class="fashion_taital"></h1>3
                     <div class="fashion_section_2">
                        
                         
                         <div class="row">

                             
                             <%
                       DbWork db = new DbWork();
                       db.reader = db.getAllProducts();
                       while (db.reader.Read())
                    {
                    %>

                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
                                 <h4 class="shirt_text"><%=db.reader["name"] %></h4>
                                 <p class="price_text">Price  <span style="color: #262626;">$<%=db.reader["price"] %></span></p>
                                 <div class="tshirt_img"><img style="width:300px;height:400px;" src="/Admin/imge/hh/<%= db.reader["image"] %>"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="#">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="EditCourse.aspx?PId=<%= db.reader["id"] %>" class="btn btn-outline-success">Edit</a></div>
                                     <div class="seemore_bt"><a href="Delete.aspx?PId=<%= db.reader["id"] %>" class="btn btn-outline-success">Delete</a></div>
                                 </div>
                             
                               <h3><%=db.reader["duration"] %></h3>
                               <p><%=db.reader["disc"] %></p>
                               <h3><%=db.reader["slug"] %></h3>
                           </div>
                              
                            </div>
                            <%
                   }
                   %>


                       
                     </div>
                  </div>
               </div>
               
            </div>
          </div>
         </div>
      </div>
      <!-- fashion section end -->
</asp:Content>
