<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="TestWeb.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row"> 
            <div class="col-sm-12">    			   			
			    <h2 class="title text-center"><strong>Order Item</strong></h2>
                    <!-- Gird View -->
                    <div class="col-sm-8">
                            <div class="contact-form">
                                <h2 class="title text-center">Order Item</h2>
                                <div class="form-group col-md-12">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_HoaDonChiTiet" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="ID_HoaDonChiTiet" HeaderText="ID_HoaDonChiTiet" ReadOnly="True" SortExpression="ID_HoaDonChiTiet" />
                                            <asp:BoundField DataField="ID_HoaDon" HeaderText="ID_HoaDon" SortExpression="ID_HoaDon" />
                                            <asp:BoundField DataField="ID_SanPham" HeaderText="ID_SanPham" SortExpression="ID_SanPham" />
                                            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                                            <asp:BoundField DataField="ThanhTien" HeaderText="ThanhTien" SortExpression="ThanhTien" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLDonHangConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [ID_HoaDonChiTiet] = @ID_HoaDonChiTiet" InsertCommand="INSERT INTO [ChiTietHoaDon] ([ID_HoaDonChiTiet], [ID_HoaDon], [ID_SanPham], [SoLuong], [ThanhTien]) VALUES (@ID_HoaDonChiTiet, @ID_HoaDon, @ID_SanPham, @SoLuong, @ThanhTien)" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [ID_HoaDon] = @ID_HoaDon, [ID_SanPham] = @ID_SanPham, [SoLuong] = @SoLuong, [ThanhTien] = @ThanhTien WHERE [ID_HoaDonChiTiet] = @ID_HoaDonChiTiet">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID_HoaDonChiTiet" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ID_HoaDonChiTiet" Type="Int32" />
                                            <asp:Parameter Name="ID_HoaDon" Type="Int32" />
                                            <asp:Parameter Name="ID_SanPham" Type="Int32" />
                                            <asp:Parameter Name="SoLuong" Type="Int32" />
                                            <asp:Parameter Name="ThanhTien" Type="Decimal" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="ID_HoaDon" Type="Int32" />
                                            <asp:Parameter Name="ID_SanPham" Type="Int32" />
                                            <asp:Parameter Name="SoLuong" Type="Int32" />
                                            <asp:Parameter Name="ThanhTien" Type="Decimal" />
                                            <asp:Parameter Name="ID_HoaDonChiTiet" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    <!-- Form View -->
                    <div class="col-sm-4">
                            <h2 class="title text-center">Manage Order Item</h2>
                            <div class="form-group col-md-12">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_HoaDonChiTiet" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        ID_HoaDonChiTiet:
                                        <asp:Label ID="ID_HoaDonChiTietLabel1" runat="server" Text='<%# Eval("ID_HoaDonChiTiet") %>' />
                                        <br />
                                        ID_HoaDon:
                                        <asp:TextBox ID="ID_HoaDonTextBox" runat="server" Text='<%# Bind("ID_HoaDon") %>' />
                                        <br />
                                        ID_SanPham:
                                        <asp:TextBox ID="ID_SanPhamTextBox" runat="server" Text='<%# Bind("ID_SanPham") %>' />
                                        <br />
                                        SoLuong:
                                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                                        <br />
                                        ThanhTien:
                                        <asp:TextBox ID="ThanhTienTextBox" runat="server" Text='<%# Bind("ThanhTien") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        ID_HoaDonChiTiet:
                                        <asp:TextBox ID="ID_HoaDonChiTietTextBox" runat="server" Text='<%# Bind("ID_HoaDonChiTiet") %>' />
                                        <br />
                                        ID_HoaDon:
                                        <asp:TextBox ID="ID_HoaDonTextBox" runat="server" Text='<%# Bind("ID_HoaDon") %>' />
                                        <br />
                                        ID_SanPham:
                                        <asp:TextBox ID="ID_SanPhamTextBox" runat="server" Text='<%# Bind("ID_SanPham") %>' />
                                        <br />
                                        SoLuong:
                                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                                        <br />
                                        ThanhTien:
                                        <asp:TextBox ID="ThanhTienTextBox" runat="server" Text='<%# Bind("ThanhTien") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        ID_HoaDonChiTiet:
                                        <asp:Label ID="ID_HoaDonChiTietLabel" runat="server" Text='<%# Eval("ID_HoaDonChiTiet") %>' />
                                        <br />
                                        ID_HoaDon:
                                        <asp:Label ID="ID_HoaDonLabel" runat="server" Text='<%# Bind("ID_HoaDon") %>' />
                                        <br />
                                        ID_SanPham:
                                        <asp:Label ID="ID_SanPhamLabel" runat="server" Text='<%# Bind("ID_SanPham") %>' />
                                        <br />
                                        SoLuong:
                                        <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                                        <br />
                                        ThanhTien:
                                        <asp:Label ID="ThanhTienLabel" runat="server" Text='<%# Bind("ThanhTien") %>' />
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
