<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="buynow.aspx.cs" Inherits="project3.buynow" %>
<% @import Namespace="project3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <div class="head">
         
        <style type="text/css">
        .auto-style1 {
            height: 486px;
            margin-left: 552px;
            margin-right: 240px;
            width: 351px;
                 left: -28px;
                 top: -54px;
             }
             .auto-style2 {
                 position: relative;
                 width: 100%;
                 min-height: 1px;
                 -ms-flex: 0 0 58.333333%;
                 flex: 0 0 58.333333%;
                 max-width: 58.333333%;
                 left: 0px;
                 top: 0px;
                 height: 52px;
                 padding-left: 15px;
                 padding-right: 15px;
             }
    </style>
    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <%-- <h1 style="text-align:center; font-size:50px;">Dea<span style="color:aquamarine;">tails</span></h1>
     
        <div class="container">
           

            <div class="row">
                <div class="col-sm-12" Style="border:5px solid aquamarine; height:600px" width="800px" ><br /><br />
                    <div class="auto-style2" >
                          <h4 style="padding-left:20px; font-size:25px;">Check<span style="color:aquamarine;">Your Details</span></h4><br/><br/>
                          <asp:TextBox ID="uname" runat="server" placeholder="User Name" Height="34px" Width="437px" ReadOnly="true"></asp:TextBox><br/><br/>
                          <asp:TextBox ID="uemail" runat="server" placeholder="Email" Height="34px" Width="437px"  ReadOnly="true"></asp:TextBox><br/><br/>
                          <asp:TextBox ID="uphone" runat="server" placeholder="Phone No." Height="34px" Width="437px"  ReadOnly="true"></asp:TextBox><br/><br/>
                          <asp:TextBox ID="uAddress" runat="server" placeholder="Address" Height="34px" Width="437px"></asp:TextBox><br/><br/>
                          <asp:TextBox ID="uCity" runat="server" placeholder="City" Height="34px" Width="437px"></asp:TextBox><br/><br/>
                          <asp:TextBox ID="uState" runat="server" placeholder="state" Height="34px" Width="437px"></asp:TextBox><br/><br/>
                          <asp:TextBox ID="uCountry" runat="server" placeholder="Country" Height="34px" Width="437px"></asp:TextBox><br/><br/>
                          <asp:TextBox ID="uPinCode" runat="server" placeholder="Pincode" Height="34px" Width="437px"></asp:TextBox><br/><br/>
                   </div>
                    <div class="auto-style1" Style="border:5px solid aquamarine; ">
                          <h4 style="padding-left:50px; font-size:25px;">Check<span style="color:aquamarine;">Cource Details</span></h4><br/><br />
                        <h1 id="cname" runat="server"></h1>
                        <h4 id="cval" runat="server"></h4>
                        <h4 id="cprice" runat="server"></h4>
                        <h4 id="cdate" runat="server"></h4>
                          <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
                     
                    </div>
                </div>
              
             </div>
        </div>
    <br />
    <br />
   --%>


      

</asp:Content>
