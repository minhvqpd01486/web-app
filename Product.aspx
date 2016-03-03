<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="TestWeb.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row"> 
            <div class="col-sm-12">    			   			
			    <h2 class="title text-center"><strong>Products Type</strong></h2>
                    <div class="col-sm-8">
                            <div class="contact-form">
                                <h2 class="title text-center">List of Products</h2>
                                <div class="form-group col-md-12">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_SanPham" DataSourceID="SqlDataSource1" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="ID_SanPham" HeaderText="ID_SanPham" ReadOnly="True" SortExpression="ID_SanPham" />
                                            <asp:BoundField DataField="ID_LoaiSanPham" HeaderText="ID_LoaiSanPham" SortExpression="ID_LoaiSanPham" />
                                            <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                                            <asp:BoundField DataField="GiaSanPham" HeaderText="GiaSanPham" SortExpression="GiaSanPham" />
                                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLDonHangConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [ID_SanPham] = @ID_SanPham" InsertCommand="INSERT INTO [SanPham] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [GiaSanPham]) VALUES (@ID_SanPham, @ID_LoaiSanPham, @TenSanPham, @GiaSanPham)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [ID_LoaiSanPham] = @ID_LoaiSanPham, [TenSanPham] = @TenSanPham, [GiaSanPham] = @GiaSanPham WHERE [ID_SanPham] = @ID_SanPham">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID_SanPham" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ID_SanPham" Type="Int32" />
                                            <asp:Parameter Name="ID_LoaiSanPham" Type="Int32" />
                                            <asp:Parameter Name="TenSanPham" Type="String" />
                                            <asp:Parameter Name="GiaSanPham" Type="Decimal" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="ID_LoaiSanPham" Type="Int32" />
                                            <asp:Parameter Name="TenSanPham" Type="String" />
                                            <asp:Parameter Name="GiaSanPham" Type="Decimal" />
                                            <asp:Parameter Name="ID_SanPham" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    <div class="col-sm-4">
                            <h2 class="title text-center">Manage Products</h2>
                            <div class="form-group col-md-12">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_SanPham" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        ID_SanPham:
                                        <asp:Label ID="ID_SanPhamLabel1" runat="server" Text='<%# Eval("ID_SanPham") %>' />
                                        <br />
                                        ID_LoaiSanPham:
                                        <asp:TextBox ID="ID_LoaiSanPhamTextBox" runat="server" Text='<%# Bind("ID_LoaiSanPham") %>' />
                                        <br />
                                        TenSanPham:
                                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
                                        <br />
                                        GiaSanPham:
                                        <asp:TextBox ID="GiaSanPhamTextBox" runat="server" Text='<%# Bind("GiaSanPham") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        ID_SanPham:
                                        <asp:TextBox ID="ID_SanPhamTextBox" runat="server" Text='<%# Bind("ID_SanPham") %>' />
                                        <br />
                                        ID_LoaiSanPham:
                                        <asp:TextBox ID="ID_LoaiSanPhamTextBox" runat="server" Text='<%# Bind("ID_LoaiSanPham") %>' />
                                        <br />
                                        TenSanPham:
                                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
                                        <br />
                                        GiaSanPham:
                                        <asp:TextBox ID="GiaSanPhamTextBox" runat="server" Text='<%# Bind("GiaSanPham") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        ID_SanPham:
                                        <asp:Label ID="ID_SanPhamLabel" runat="server" Text='<%# Eval("ID_SanPham") %>' />
                                        <br />
                                        ID_LoaiSanPham:
                                        <asp:Label ID="ID_LoaiSanPhamLabel" runat="server" Text='<%# Bind("ID_LoaiSanPham") %>' />
                                        <br />
                                        TenSanPham:
                                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSanPham") %>' />
                                        <br />
                                        GiaSanPham:
                                        <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Bind("GiaSanPham") %>' />
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
