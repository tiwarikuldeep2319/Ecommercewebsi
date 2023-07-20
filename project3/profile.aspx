<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="project3.profile_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row g-4">
              
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/team-1.jpg" alt="">
                        </div>
                        <div>
                            <h2 id="name" runat="server"></h2>
                            <span id="email" runat="server"></span>

                        </div>
                        </div>
                    <div class="text-center">
        <asp:GridView ID="GridView1" runat="server" Width="1335px" AutoGenerateColumns="false">

             <Columns>
                            <asp:TemplateField HeaderText="Sr.No" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblImgId" runat="server" Text='<%# Eval("srno") %>'></asp:Label>
                </ItemTemplate>
                                </asp:TemplateField>
                           <asp:TemplateField HeaderText="CourseName" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name")%>'></asp:Label>
                </ItemTemplate>
                                </asp:TemplateField>
                           <asp:TemplateField HeaderText="Date" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                </ItemTemplate>
                                </asp:TemplateField>
                           <asp:TemplateField HeaderText="CoursePrice" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                </ItemTemplate>
                                </asp:TemplateField>
                           <asp:TemplateField HeaderText="Duration" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("active") %>'></asp:Label>
                </ItemTemplate>
                                </asp:TemplateField>
                <asp:TemplateField HeaderText="CourseImage" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="80px" Width="100px" />
                </ItemTemplate>
                    </asp:TemplateField>

   </Columns>



        </asp:GridView>

                    </div>

        </div>


</asp:Content>
