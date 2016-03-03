<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="TestWeb.cus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row"> 
            <div class="col-sm-12">    			   			
			    <h2 class="title text-center"><strong>Customers</strong></h2>
                    <!-- Gird View -->
                    <div class="col-sm-8">
                            <div class="contact-form">
                                <h2 class="title text-center">Customers</h2>
                                <div class="form-group col-md-12">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_KhachHang" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                        <Columns>
                                            <asp:BoundField DataField="ID_KhachHang" HeaderText="ID_KhachHang" ReadOnly="True" SortExpression="ID_KhachHang" />
                                            <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                                            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLDonHangConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [ID_KhachHang] = @ID_KhachHang" InsertCommand="INSERT INTO [KhachHang] ([ID_KhachHang], [Ten], [DiaChi], [Email]) VALUES (@ID_KhachHang, @Ten, @DiaChi, @Email)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [Ten] = @Ten, [DiaChi] = @DiaChi, [Email] = @Email WHERE [ID_KhachHang] = @ID_KhachHang">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID_KhachHang" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ID_KhachHang" Type="Int32" />
                                            <asp:Parameter Name="Ten" Type="String" />
                                            <asp:Parameter Name="DiaChi" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Ten" Type="String" />
                                            <asp:Parameter Name="DiaChi" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="ID_KhachHang" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    <!-- Form View -->
                    <div class="col-sm-4">
                            <h2 class="title text-center">Manage Customers</h2>
                            <div class="form-group col-md-12">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_KhachHang" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        ID_KhachHang:
                                        <asp:Label ID="ID_KhachHangLabel1" runat="server" Text='<%# Eval("ID_KhachHang") %>' />
                                        <br />
                                        Ten:
                                        <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
                                        <br />
                                        DiaChi:
                                        <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                                        <br />
                                        Email:
                                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        ID_KhachHang:
                                        <asp:TextBox ID="ID_KhachHangTextBox" runat="server" Text='<%# Bind("ID_KhachHang") %>' />
                                        <br />
                                        Ten:
                                        <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
                                        <br />
                                        DiaChi:
                                        <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                                        <br />
                                        Email:
                                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        ID_KhachHang:
                                        <asp:Label ID="ID_KhachHangLabel" runat="server" Text='<%# Eval("ID_KhachHang") %>' />
                                        <br />
                                        Ten:
                                        <asp:Label ID="TenLabel" runat="server" Text='<%# Bind("Ten") %>' />
                                        <br />
                                        DiaChi:
                                        <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                                        <br />
                                        Email:
                                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                </asp:FormView>
                            </div>
                        </div>
            </div>  
        </div>
    </div>
</asp:Content>
