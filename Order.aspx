<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="TestWeb.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row"> 
            <div class="col-sm-12">    			   			
			    <h2 class="title text-center"><strong>Order</strong></h2>
                    <!-- Gird View -->
                    <div class="col-sm-8">
                            <div class="contact-form">
                                <h2 class="title text-center">Order</h2>
                                <div class="form-group col-md-12">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_HoaDon" DataSourceID="SqlDataSource1" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="ID_HoaDon" HeaderText="ID_HoaDon" ReadOnly="True" SortExpression="ID_HoaDon" />
                                            <asp:BoundField DataField="ID_KhachHang" HeaderText="ID_KhachHang" SortExpression="ID_KhachHang" />
                                            <asp:BoundField DataField="NgayLapHoaDon" HeaderText="NgayLapHoaDon" SortExpression="NgayLapHoaDon" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLDonHangConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [ID_HoaDon] = @ID_HoaDon" InsertCommand="INSERT INTO [HoaDon] ([ID_HoaDon], [ID_KhachHang], [NgayLapHoaDon]) VALUES (@ID_HoaDon, @ID_KhachHang, @NgayLapHoaDon)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [ID_KhachHang] = @ID_KhachHang, [NgayLapHoaDon] = @NgayLapHoaDon WHERE [ID_HoaDon] = @ID_HoaDon">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID_HoaDon" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ID_HoaDon" Type="Int32" />
                                            <asp:Parameter Name="ID_KhachHang" Type="Int32" />
                                            <asp:Parameter DbType="Date" Name="NgayLapHoaDon" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="ID_KhachHang" Type="Int32" />
                                            <asp:Parameter DbType="Date" Name="NgayLapHoaDon" />
                                            <asp:Parameter Name="ID_HoaDon" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    <!-- Form View -->
                    <div class="col-sm-4">
                            <h2 class="title text-center">Manage Order</h2>
                            <div class="form-group col-md-12">
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_HoaDon" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        ID_HoaDon:
                                        <asp:Label ID="ID_HoaDonLabel1" runat="server" Text='<%# Eval("ID_HoaDon") %>' />
                                        <br />
                                        ID_KhachHang:
                                        <asp:TextBox ID="ID_KhachHangTextBox" runat="server" Text='<%# Bind("ID_KhachHang") %>' />
                                        <br />
                                        NgayLapHoaDon:
                                        <asp:TextBox ID="NgayLapHoaDonTextBox" runat="server" Text='<%# Bind("NgayLapHoaDon") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        ID_HoaDon:
                                        <asp:TextBox ID="ID_HoaDonTextBox" runat="server" Text='<%# Bind("ID_HoaDon") %>' />
                                        <br />
                                        ID_KhachHang:
                                        <asp:TextBox ID="ID_KhachHangTextBox" runat="server" Text='<%# Bind("ID_KhachHang") %>' />
                                        <br />
                                        NgayLapHoaDon:
                                        <asp:TextBox ID="NgayLapHoaDonTextBox" runat="server" Text='<%# Bind("NgayLapHoaDon") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        ID_HoaDon:
                                        <asp:Label ID="ID_HoaDonLabel" runat="server" Text='<%# Eval("ID_HoaDon") %>' />
                                        <br />
                                        ID_KhachHang:
                                        <asp:Label ID="ID_KhachHangLabel" runat="server" Text='<%# Bind("ID_KhachHang") %>' />
                                        <br />
                                        NgayLapHoaDon:
                                        <asp:Label ID="NgayLapHoaDonLabel" runat="server" Text='<%# Bind("NgayLapHoaDon") %>' />
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
