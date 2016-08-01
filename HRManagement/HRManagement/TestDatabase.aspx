<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestDatabase.aspx.cs" Inherits="HRManagement.TestDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceHRManagement">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="EMBG" HeaderText="EMBG" SortExpression="EMBG" />
                <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                <asp:BoundField DataField="Start_employment_date" HeaderText="Start_employment_date" SortExpression="Start_employment_date" />
                <asp:BoundField DataField="End_employment_date" HeaderText="End_employment_date" SortExpression="End_employment_date" />
                <asp:BoundField DataField="Vacation_days" HeaderText="Vacation_days" SortExpression="Vacation_days" />
                <asp:CheckBoxField DataField="Status_present" HeaderText="Status_present" SortExpression="Status_present" />
                <asp:CheckBoxField DataField="Status_employed" HeaderText="Status_employed" SortExpression="Status_employed" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Job_id" HeaderText="Job_id" SortExpression="Job_id" />
                <asp:BoundField DataField="Department_id" HeaderText="Department_id" SortExpression="Department_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceHRManagement" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringHRManagement %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
