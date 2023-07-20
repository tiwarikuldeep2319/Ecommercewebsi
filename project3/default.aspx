﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="project3._default" %>
<%@ Import Namespace="project3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br/> 
         <br/>
         <br/>
         <br/>
         <br/>
         <br/>
         <br/>
         <br/>
     <div class="fashion_section">
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <h1 class="fashion_taital"></h1>
                     <div class="fashion_section_2">
                        
                            
                         
                   <!-- our code  start----->

                      <!-- Courses Start -->
    <div class="container-xxl py-5">
        
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                <h1 class="mb-5">Popular Courses</h1>
            </div>
             
            <div class="row g-4 justify-content-center">
                 <%
                       DbWork db = new DbWork();
                       db.reader = db.Allcourse();
                       while (db.reader.Read())
                    {
                    %>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    
                    <div class="course-item bg-light">
                        
                        <div class="position-relative overflow-hidden">
                           
                           <img style="width:300px;height:400px;" src="/Admin/imge/hh/<%= db.reader["image"] %>">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                <a href="coursedetail.aspx?id=<%=db.reader["id"] %>" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
                                <a href="Registration.aspx" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a>
                            </div>
                        </div>
                        <div class="text-center p-4 pb-0">
                            <h3 class="mb-0">$<%=db.reader["price"] %></h3>
                            <div class="mb-3">
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small>(123)</small>
                            </div>
                            <h5 class="mb-4"><%=db.reader["name"] %></h5>
                            <h6><%=db.reader["disc"] %></h6>
                        </div>
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-tie text-primary me-2"></i>John Doe</small>
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i><%=db.reader["duration"] %></small>
                            <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>30 Students</small>
                        </div>
                    </div>
                </div>
                <%
                   }
                   %>
               
            </div>
        </div>
    </div>
    <!-- Courses End -->



                    <!-- our code  end----->

              
            </div>
          </div>
         </div>
      </div>
      <!-- fashion section end -->

</asp:Content>
