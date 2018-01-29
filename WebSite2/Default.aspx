<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Some examples from the ASP.NET</h1>
            <br />
            <h4>Standart Controls</h4>
            <asp:Label ID="Label1" runat="server" Text="Simple Controls"></asp:Label>
            <br />
            <br />

            <%--checkbox--%>
            <asp:Label ID="LabelCheckBox1" runat="server" Text="Here is the Check Box:"></asp:Label><br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Please check this checkbox and click the button" /><br />
            <asp:Button ID="btnCheckBox1" runat="server" Text="Check Box Button" OnClick="btnCheckBox1_Click" /><br />
            <asp:Label ID="lbCheckBox1" runat="server"></asp:Label>
            <br />
            <br />

            <%--link button and hyperlink--%>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="https://www.justit.co.uk">Link Button which is just a link</asp:LinkButton><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.justit.co.uk" Target="_blank">Here is a link to another webside</asp:HyperLink><br />
            <br />

            <%--image link--%>
            <asp:Label ID="LabelImageLink" runat="server" Text="Click on the image to open the link"></asp:Label><br />
            <asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="https://www.justit.co.uk" ImageAlign="Middle" ImageUrl="~/img/starwars.jpg" Width="50px" /><br />
            <br />

            <%--image map circle hotspot--%>
         <asp:Label ID="LabelImageMap1" runat="server" Text="This is an Image Map. Click on the Earth or Moon for a little bit of information about them. This can also be used for links."></asp:Label><br />
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/img/moon.jpg" ImageAlign="Middle" Width="165px" HotSpotMode="PostBack" OnClick="ImageMap1_Click">
                <asp:CircleHotSpot Radius="20" X="50" Y="50" PostBackValue="You clicked the Earth" />
                <asp:CircleHotSpot Radius="10" X="150" Y="10" PostBackValue="You clicked the Moon" />
            </asp:ImageMap>
            <br />
            <asp:Label ID="lbImageMap1" runat="server"></asp:Label><br />
            <br />

            <%--image map--%>
            <asp:Label ID="LabelImageMap2" runat="server" Text="Here is another image map, this time using rectagular hotspots. Click on the right or left tower of the main building (the Petronas Towers in Kuala Lumpur) to see a message."></asp:Label><br />
            <asp:ImageMap ID="ImageMap2" runat="server" ImageUrl="~/img/towers.jpg" ImageAlign="Middle" HotSpotMode="PostBack" Width="219px" OnClick="ImageMap2_Click">
                <asp:RectangleHotSpot PostBackValue="You clicked on the right tower" Bottom="5" Left="30" Right="30" Top="60" />
                <asp:RectangleHotSpot PostBackValue="You clicked on the left tower" Bottom="5" Left="90" Right="30" Top="60" />
            </asp:ImageMap><br />
            <asp:Label ID="lbImageMap2" runat="server"></asp:Label>
            <br />
            <br />

            <%-- multiple text box--%>
            <asp:Label ID="LabelTextBox1" runat="server" Text="This is a multiline text box - please type something and click the button below:"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <asp:Button ID="btnTextBox1" runat="server" Text="Text Box Button" OnClick="btnTextBox1_Click" /><br />
            <asp:Label ID="lbTextBox1" runat="server"></asp:Label>
            <br />
            <br />

            <%-- email text box--%>
            <asp:Label ID="LabelTextBox2" runat="server" Text="This is a text box that accepts email addresses - please type an email address and click the button below:"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="Email" runat="server" ControlToValidate="TextBox2" ValidationExpression="(\w)+@(\w)+.com(.(\w)+)*" ErrorMessage="Please enter a valid Email" /><br />
            <asp:Button ID="btnTextBox2" runat="server" Text="Text Box Button" OnClick="btnTextBox2_Click" /><br />
            <asp:Label ID="lbTextBox2" runat="server"></asp:Label>
            <br />
            <br />

            <%--calender control--%>
            <asp:Label ID="LabelCalender1" runat="server" Text="Here is a calendar control."></asp:Label><br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="241px" OnSelectionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt"></DayHeaderStyle>

                <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" ForeColor="#333333"></NextPrevStyle>

                <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>

                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399"></TitleStyle>

                <TodayDayStyle BackColor="#CCCCCC"></TodayDayStyle>
            </asp:Calendar>
            <br />
            <asp:Label ID="lbCalender1" runat="server"></asp:Label>
            <br />
            <br />
            <br />

            <%--dropdown list--%>
            <asp:Label ID="Label2" runat="server" Text="List Controls" Font-Size="Medium"></asp:Label><br />
            <br />
            <asp:Label ID="LabelDropDownList1" runat="server" Text="Choose your favourite programming language:"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>VB</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button ID="btnDropDownList1" runat="server" Text="Confirm Language" OnClick="btnDropDownList1_Click" /><br />
            <asp:Label ID="lbDropDownList1" runat="server"></asp:Label><br />
            <br />

           <%-- checkbox list--%>
            <asp:Label ID="LabelCheckBoxList1" runat="server" Text="Label"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem >Vanila</asp:ListItem>
                <asp:ListItem >Chocolate</asp:ListItem>
                <asp:ListItem >Strawberry</asp:ListItem>
                <asp:ListItem >Cherry</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="btnCheckBoxList1" runat="server" Text="Confirm ice-cream"  OnClick="btnCheckBoxList1_Click" /><br />
            <asp:Label ID="lbCheckBoxList1" runat="server"></asp:Label><br /><br />

            <%--radiobutton list--%>
            <asp:Label ID="LabelRadioButtonList1" runat="server" Text="Here is a radio button list. Which kind of music do you prefer:"></asp:Label><br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Jazz</asp:ListItem>
                <asp:ListItem>Rock</asp:ListItem>
                <asp:ListItem>Hip-Hop</asp:ListItem>
                <asp:ListItem>Blues</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="btnradioButtonList1" runat="server" Text="RadioButtonList Button" OnClick="btnradioButtonList1_Click" /><br />
            <asp:Label ID="lbRadioButtonList1" runat="server"></asp:Label><br /><br />

          <%--  bulleted list--%>
            <asp:Label ID="LabelBulletedList1" runat="server" Text="This is a bulleted list of Marilyn Monroe movies. An image is used for the bullets:"></asp:Label><br />
            <asp:BulletedList ID="BulletedList1" runat="server" BulletImageUrl="~/img/monroe.jpg" BulletStyle="CustomImage" Font-Size="Medium">
                <asp:ListItem>Some Like it Hot</asp:ListItem>
                <asp:ListItem>Gentlemen Prefer Blondes</asp:ListItem>
                <asp:ListItem>Niagara</asp:ListItem>
            </asp:BulletedList><br /><br />

            <%--list box--%>
            <asp:Label ID="LabelListBox1" runat="server" Text="From the list box, choose your preferred candidate for Chelsea manager. If you think they should do a jobshare, you can pick more than one:"></asp:Label><br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Pep Guardiola</asp:ListItem>
                <asp:ListItem>Diego Simeone</asp:ListItem>
                <asp:ListItem>Antonio Conte</asp:ListItem>
                <asp:ListItem>John Terry</asp:ListItem>
            </asp:ListBox><br />
            <asp:Button ID="btnListBox1" runat="server" Text="Choose the next Chelsea Manager" OnClick="btnListBox1_Click" /><br />
            <asp:Label ID="lbListBox1" runat="server"></asp:Label><br />

        </div>

    </form>
</body>
</html>
