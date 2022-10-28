<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMT.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="CNTT_Watch.Admin.QuanLySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Tên sản phẩm" SortExpression="Name" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="CategoryID" HeaderText="Mã danh mục" SortExpression="CategoryID" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
            <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
            <asp:BoundField DataField="GiamGia" HeaderText="Giảm giá" SortExpression="GiamGia" />
            <asp:BoundField DataField="HinhAnh" HeaderText="Ảnh" SortExpression="HinhAnh" />
            <asp:BoundField DataField="state" HeaderText="Trạng thái" SortExpression="state" />
            <asp:BoundField DataField="BaoHanh" HeaderText="Bảo hành" SortExpression="BaoHanh" />
            <asp:BoundField DataField="KieuMay" HeaderText="Kiểu máy" SortExpression="KieuMay" />
            <asp:BoundField DataField="XuatXu" HeaderText="Xuất xứ" SortExpression="XuatXu" />
            <asp:BoundField DataField="KichCo" HeaderText="Kích cỡ" SortExpression="KichCo" />
            <asp:BoundField DataField="DoDay" HeaderText="Độ dày" SortExpression="DoDay" />
            <asp:BoundField DataField="ChatLieuVo" HeaderText="Chất liệu vỏ" SortExpression="ChatLieuVo" />
            <asp:BoundField DataField="ChatLieuDay" HeaderText="Chất liệu dây" SortExpression="ChatLieuDay" />
            <asp:BoundField DataField="ChatLieuKinh" HeaderText="Chất liệu kính" SortExpression="ChatLieuKinh" />
            <asp:BoundField DataField="ChucNang" HeaderText="Chức năng" SortExpression="ChucNang" />
            <asp:BoundField DataField="ChongNuoc" HeaderText="Chống nước" SortExpression="ChongNuoc" />
            <asp:BoundField DataField="Mota" HeaderText="Mô tả" SortExpression="Mota" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
        </Columns>
    </asp:GridView>
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CNTTWATCHConnectionString %>" DeleteCommand="DELETE FROM [watch] WHERE [id] = @id" InsertCommand="INSERT INTO [watch] ([name], [categoryid], [soluong], [gia], [giamgia], [anh], [state], [baohanh], [kieumay], [gioitinh], [kichco], [doday], [chatlieuvo], [chatlieuday], [chatlieukinh], [chucnang], [dochiunuoc], [mota], [type]) VALUES (@name, @categoryid, @soluong, @gia, @giamgia, @anh, @state, @baohanh, @kieumay, @gioitinh, @kichco, @doday, @chatlieuvo, @chatlieuday, @chatlieukinh, @chucnang, @dochiunuoc, @mota, @type)" SelectCommand="SELECT * FROM [watch]" UpdateCommand="UPDATE [watch] SET [name] = @name, [categoryid] = @categoryid, [soluong] = @soluong, [gia] = @gia, [giamgia] = @giamgia, [anh] = @anh, [state] = @state, [baohanh] = @baohanh, [kieumay] = @kieumay, [gioitinh] = @gioitinh, [kichco] = @kichco, [doday] = @doday, [chatlieuvo] = @chatlieuvo, [chatlieuday] = @chatlieuday, [chatlieukinh] = @chatlieukinh, [chucnang] = @chucnang, [dochiunuoc] = @dochiunuoc, [mota] = @mota, [type] = @type WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="categoryid" Type="Int32" />
            <asp:Parameter Name="soluong" Type="Int32" />
            <asp:Parameter Name="gia" Type="Int32" />
            <asp:Parameter Name="giamgia" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="state" Type="Boolean" />
            <asp:Parameter Name="baohanh" Type="String" />
            <asp:Parameter Name="kieumay" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="kichco" Type="String" />
            <asp:Parameter Name="doday" Type="String" />
            <asp:Parameter Name="chatlieuvo" Type="String" />
            <asp:Parameter Name="chatlieuday" Type="String" />
            <asp:Parameter Name="chatlieukinh" Type="String" />
            <asp:Parameter Name="chucnang" Type="String" />
            <asp:Parameter Name="dochiunuoc" Type="String" />
            <asp:Parameter Name="mota" Type="String" />
            <asp:Parameter Name="type" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="categoryid" Type="Int32" />
            <asp:Parameter Name="soluong" Type="Int32" />
            <asp:Parameter Name="gia" Type="Int32" />
            <asp:Parameter Name="giamgia" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="state" Type="Boolean" />
            <asp:Parameter Name="baohanh" Type="String" />
            <asp:Parameter Name="kieumay" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="kichco" Type="String" />
            <asp:Parameter Name="doday" Type="String" />
            <asp:Parameter Name="chatlieuvo" Type="String" />
            <asp:Parameter Name="chatlieuday" Type="String" />
            <asp:Parameter Name="chatlieukinh" Type="String" />
            <asp:Parameter Name="chucnang" Type="String" />
            <asp:Parameter Name="dochiunuoc" Type="String" />
            <asp:Parameter Name="mota" Type="String" />
            <asp:Parameter Name="type" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
