<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical_04.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Form Registration</title>

    <style type="text/css">
        .auto-style1 {
            width: 138px;
        }

        .auto-style2 {
            width: 240px;
        }

        table {
            border-collapse: collapse;
        }

        td {
            padding: 8px;
        }

        .heading {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }

        .output {
            font-size: 16px;
            color: green;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

        <table style="width: 70%;">

            <!-- Heading -->
            <tr>
                <td colspan="3" class="heading">
                    Online Form Registration
                </td>
            </tr>

            <!-- Full Name -->
            <tr>
                <td class="auto-style1">
                    Full Name:
                </td>

                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>

                <td>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        runat="server"
                        ControlToValidate="TextBox1"
                        ErrorMessage="Name Cannot Be Empty"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

            <!-- Email -->
            <tr>
                <td class="auto-style1">
                    Email Id:
                </td>

                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>

                <td>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        runat="server"
                        ControlToValidate="TextBox2"
                        ErrorMessage="Email Cannot Be Empty"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidatorEmail"
                        runat="server"
                        ControlToValidate="TextBox2"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Invalid Email"
                        ForeColor="Red">
                    </asp:RegularExpressionValidator>

                </td>
            </tr>

            <!-- Contact Number -->
            <tr>
                <td class="auto-style1">
                    Contact No.:
                </td>

                <td class="auto-style2">
                    <asp:TextBox
                        ID="TextBox3"
                        runat="server"
                        MaxLength="10">
                    </asp:TextBox>
                </td>

                <td>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3"
                        runat="server"
                        ControlToValidate="TextBox3"
                        ErrorMessage="Contact No. Cannot Be Empty"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1"
                        runat="server"
                        ControlToValidate="TextBox3"
                        ValidationExpression="^[0-9]{10}$"
                        ErrorMessage="Contact No. must be exactly 10 digits"
                        ForeColor="Red">
                    </asp:RegularExpressionValidator>

                </td>
            </tr>

            <!-- College -->
            <tr>
                <td class="auto-style1">
                    College:
                </td>

                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>

                <td>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4"
                        runat="server"
                        ControlToValidate="TextBox4"
                        ErrorMessage="College Name Cannot Be Empty"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

            <!-- Department -->
            <tr>
                <td class="auto-style1">
                    Department:
                </td>

                <td class="auto-style2">

                    <asp:RadioButtonList
                        ID="RadioButtonListDepartment"
                        runat="server">

                        <asp:ListItem Value="">
                            --Select--
                        </asp:ListItem>

                        <asp:ListItem Value="Computer">
                            Computer
                        </asp:ListItem>

                        <asp:ListItem Value="Mechanical">
                            Mechanical
                        </asp:ListItem>

                        <asp:ListItem Value="Chemical">
                            Chemical
                        </asp:ListItem>

                        <asp:ListItem Value="Civil">
                            Civil
                        </asp:ListItem>

                    </asp:RadioButtonList>

                </td>

                <td>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidatorDepartment"
                        runat="server"
                        ControlToValidate="RadioButtonListDepartment"
                        InitialValue=""
                        ErrorMessage="Please select a Department"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>

            <!-- Event -->
            <tr>
                <td class="auto-style1">
                    Event:
                </td>

                <td class="auto-style2">

                    <asp:DropDownList
                        ID="DropDownList1"
                        runat="server">

                        <asp:ListItem Value="">
                            --Select--
                        </asp:ListItem>

                        <asp:ListItem Value="Sports">
                            Sports
                        </asp:ListItem>

                        <asp:ListItem Value="Music">
                            Music
                        </asp:ListItem>

                        <asp:ListItem Value="Drama">
                            Drama
                        </asp:ListItem>

                    </asp:DropDownList>

                </td>

                <td>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidatorEvent"
                        runat="server"
                        ControlToValidate="DropDownList1"
                        InitialValue=""
                        ErrorMessage="Please select an Event"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>

            <!-- Gender -->
            <tr>
                <td class="auto-style1">
                    Gender:
                </td>

                <td class="auto-style2">

                    <asp:RadioButtonList
                        ID="RadioButtonListGender"
                        runat="server">

                        <asp:ListItem Value="Male">
                            Male
                        </asp:ListItem>

                        <asp:ListItem Value="Female">
                            Female
                        </asp:ListItem>

                    </asp:RadioButtonList>

                </td>

                <td>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidatorGender"
                        runat="server"
                        ControlToValidate="RadioButtonListGender"
                        InitialValue=""
                        ErrorMessage="Please select Gender"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>

            <!-- Skills -->
            <tr>
                <td class="auto-style1">
                    Skills:
                </td>

                <td class="auto-style2">

                    <asp:CheckBox
                        ID="CheckBox2"
                        runat="server"
                        Text="C#" />

                    <asp:CheckBox
                        ID="CheckBox3"
                        runat="server"
                        Text="Python" />

                    <asp:CheckBox
                        ID="CheckBox1"
                        runat="server"
                        Text="AI" />

                </td>

                <td>
                </td>
            </tr>

            <!-- Address -->
            <tr>
                <td class="auto-style1">
                    Address:
                </td>

                <td class="auto-style2">

                    <asp:TextBox
                        ID="address"
                        runat="server"
                        TextMode="MultiLine"
                        Rows="3"
                        Columns="20">
                    </asp:TextBox>

                </td>

                <td>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator5"
                        runat="server"
                        ControlToValidate="address"
                        ErrorMessage="Address Cannot Be Empty"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>

            <!-- Terms -->
            <tr>
                <td class="auto-style1">
                    Terms:
                </td>

                <td class="auto-style2">

                    <asp:CheckBox
                        ID="CheckBox4"
                        runat="server"
                        Text="I accept Terms & Conditions" />

                </td>

                <td>
                </td>
            </tr>

            <!-- Submit -->
            <tr>
                <td colspan="3" style="text-align:center;">

                    <asp:Button
                        ID="Button1"
                        runat="server"
                        Text="Submit"
                        OnClick="Button1_Click" />

                </td>
            </tr>

        </table>

        <br />

        <!-- Output -->

        <asp:Label
            ID="Label1"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label2"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label3"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label4"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label5"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label6"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label7"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label8"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label9"
            runat="server"
            CssClass="output">
        </asp:Label>

        <br />

        <asp:Label
            ID="Label10"
            runat="server"
            CssClass="output">
        </asp:Label>

    </form>

</body>
</html>