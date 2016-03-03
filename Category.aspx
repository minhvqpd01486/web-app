<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="TestWeb.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row"> 
            <div class="col-sm-12">    			   			
			    <h2 class="title text-center"><strong>Category</strong></h2>
                    <div class="col-sm-8">
                            <div class="contact-form">
                                <h2 class="title text-center">Category</h2>
                                <div class="form-group col-md-12">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_LoaiSanPham" DataSourceID="SqlDataSource1" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="ID_LoaiSanPham" HeaderText="ID_LoaiSanPham" ReadOnly="True" SortExpression="ID_LoaiSanPham" />
                                            <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLDonHangConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [ID_LoaiSanPham] = @ID_LoaiSanPham" InsertCommand="INSERT INTO [LoaiSanPham] ([ID_LoaiSanPham], [TenSanPham]) VALUES (@ID_LoaiSanPham, @TenSanPham)" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenSanPham] = @TenSanPham WHERE [ID_LoaiSanPham] = @ID_LoaiSanPham">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID_LoaiSanPham" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ID_LoaiSanPham" Type="Int32" />
                                            <asp:Parameter Name="TenSanPham" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="TenSanPham" Type="String" />
                                            <asp:Parameter Name="ID_LoaiSanPham" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    <div class="col-sm-4">
                            <h2 class="title text-center">Manage Category</h2>
                            <div class="form-group col-md-12">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_LoaiSanPham" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        ID_LoaiSanPham:
                                        <asp:Label ID="ID_LoaiSanPhamLabel1" runat="server" Text='<%# Eval("ID_LoaiSanPham") %>' />
                                        <br />
                                        TenSanPham:
                                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        ID_LoaiSanPham:
                                        <asp:TextBox ID="ID_LoaiSanPhamTextBox" runat="server" Text='<%# Bind("ID_LoaiSanPham") %>' />
                                        <br />
                                        TenSanPham:
                                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        ID_LoaiSanPham:
                                        <asp:Label ID="ID_LoaiSanPhamLabel" runat="server" Text='<%# Eval("ID_LoaiSanPham") %>' />
                                        <br />
                                        TenSanPham:
                                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSanPham") %>' />
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
