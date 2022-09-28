<%@ Page Title="Setting" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="SNLM_v0._00.Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="sales-boxes">

                <div class="recent-sales box" style="width: 425px;">
                    <div class="card  border-primary">
                        <div class="card-header  border-primary">
                            <h3>USER INFO</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <asp:Label for="FirstName" ID="FirstNameLabe" Text="First Name" runat="server"></asp:Label>
                                    <asp:TextBox ID="FirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:Label for="FirstName" ID="PswLabel" Text="Password" runat="server"></asp:Label>
                                    <asp:TextBox ID="Psw" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:Label for="UserID" ID="UserIDLabel" Text="User ID" runat="server"></asp:Label>
                                    <asp:TextBox ID="UserID" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:Label for="ConPsw" ID="ConPswLabel" Text="Con. Password" runat="server"></asp:Label>
                                    <asp:TextBox ID="ConPsw" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <asp:Label ID="SelRoleLabel" for="SelRole" runat="server" Text="Role"></asp:Label>
                                    <asp:DropDownList ID="SelRole" runat="server" CssClass="form-control">
                                        <asp:ListItem>Role</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>User</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer border-primary text-center">
                            <asp:Button ID="SAVEButton" runat="server" Text="SAVE" CssClass="btn btn-primary" />
                            <asp:Button ID="DELETButton" runat="server" Text="DELETE" CssClass="btn btn-primary" />
                            <asp:Button ID="UPDATEButton" runat="server" Text="UPDATE" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>


                <div class="recent-sales box">
                    <div class="sales-details">
                        <div class="card border-primary">
                            <div class="card-header">
                                <h3>USER DETAILS </h3>
                            </div>
                            <div class="card-body border-primary">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="Grid" DataSourceID="SqlDataSource1" Style="width: 550px;">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="name" />
                                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="username" />
                                        <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="role" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="password" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SNLMConnectionString %>" SelectCommand="SELECT [name], [role], [username], [password] FROM [UserDetails]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
    </section>
</asp:Content>
