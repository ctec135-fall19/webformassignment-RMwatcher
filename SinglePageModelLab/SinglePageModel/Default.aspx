<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SinglePageModel.Default" %>
<%@ Import Namespace="AutoLotDAL.Models" %>
<%@ Import Namespace="AutoLotDAL.DataOperations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script runat="server">
        public IEnumerable<AutoLotDAL.Models.Car> GetData()
        {
            return new InventoryDAL().GetAllInventory();
        }

        public IEnumerable<AutoLotDAL.Models.Order> GetOrder()
        {
            return new InventoryDAL().GetAllOrder();
        }

        public IEnumerable<AutoLotDAL.Models.Customers> GetInfo()
        {
            return new InventoryDAL().GetAllInfo();
        }

    </script>
    <form id="form1" runat="server">
        <div>
            <h2>Inventory</h2>
            <asp:GridView ID="GridView1" runat="server" ItemType="AutoLotDAL.Models.Car" SelectMethod="GetData">
            </asp:GridView>
            <br />
            <h2>Orders</h2>
            <asp:GridView ID="GridView2" runat="server" ItemType="AutoLotDAL.Models.Order" SelectMethod="GetOrder">
        </asp:GridView>
            <br />
            <h2>Contact Info</h2>
            <asp:GridView ID="GridView3" runat="server" ItemType="AutoLotDAL.Models.Customers" SelectMethod="GetInfo">
            </asp:GridView>
        </div>
        
    </form>
</body>
</html>
