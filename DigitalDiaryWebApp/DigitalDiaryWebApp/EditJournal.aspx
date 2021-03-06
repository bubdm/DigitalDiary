<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditJournal.aspx.cs" Inherits="DigitalDiaryWebApp.EditJournal" %>

<!DOCTYPE HTML>
<html>

<head>
  <title>Digital Diary</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
  <link rel="apple-touch-icon" sizes="180x180" href="style/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="style/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="style/favicon-16x16.png">
  <link rel="manifest" href="style/site.webmanifest">
</head>

<body>
<form id="formDiary" runat="server">
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1>Digital Diary</h1>
          <h2>User friendly. Contemporary. Write your thoughts.</h2>
        </div>
      </div>

      <div id="menubar">
        
      </div>
   </div>

    <div id="site_content">            
        
        <div>
            <table style="height: 100%; width: 100%;">
                <tr>
                    <td><h3><asp:Label ID="lblFullname" runat="server" Text=""></asp:Label></h3></td>
                </tr>            
            </table>            
        </div>

        <table style="height: 100%; width: 100%;">
            <tr>
                <td>
                    <asp:Table runat="server" Height="100%" Width="100%">
                        <asp:TableRow><asp:TableCell><h3><asp:Label ID="lblEditJournal" runat="server" Text="Edit journal entry"></asp:Label></h3></asp:TableCell></asp:TableRow>
                        <asp:TableRow><asp:TableCell><asp:Label ID="lblDate" runat="server" Text=""></asp:Label></asp:TableCell></asp:TableRow>
                        <asp:TableRow><asp:TableCell><asp:Label ID="lblCountCharacters" runat="server" Text=""></asp:Label></asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Width="100%"><asp:TextBox ID="txtEditJournal" BackColor="White" runat="server" ToolTip="Type here to add or edit your journal entry!" Height="300px"  Width="100%" TextMode="MultiLine"></asp:TextBox></asp:TableCell>            
                        </asp:TableRow>
                    </asp:Table> 
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Table runat="server" Height="100%" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="btnConfirmEdit" runat="server" Text="Confirm and make changes" Width="100%" CssClass="myButtons" OnClick="btnConfirmEdit_Click"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="100%" CssClass="myButtons" OnClick="btnCancel_Click"/></asp:TableCell>
                        </asp:TableRow>                       
                        <asp:TableRow><asp:TableCell><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></asp:TableCell></asp:TableRow>
                    </asp:Table> 
                </td>
            </tr>
        </table>
        <script>
            var inputBox = document.getElementById('txtEditJournal');            

            inputBox.onkeyup = function () {
                var noOfCharacters = inputBox.value.length;
                var string = 'No of characters typed are: ' + noOfCharacters + ' out of 8000. <br> Remaining characters: ' + (8000 - noOfCharacters);
                document.getElementById('lblCountCharacters').innerHTML = string;
            }            

        </script>
    </div>
    <div id="footer">      
        <table style="width: 100%">
         <tr>
            <td colspan="2"><h2>Contact: Freddy Jilson</h2></td>            
        </tr>
            
        <tr>
            <td>Address: 430B Yishun Avenue 11, Singapore, 762430</td>
            <td><a href="https://uk.linkedin.com/in/freddyjilson" target="_blank">LinkedIn</a></td>
        </tr>
        <tr>
            <td>Email: jilsonfreddy@hotmail.com</td>
            <td><a href="https://github.com/FreddyJilson" target="_blank">GitHub</a></td>
        </tr>
        <tr>
            <td>Contact: +6581725085</td>
            <td><a href="https://github.com/FreddyJilson/DigitalDiary" target="_blank">Source code</a></td>
        </tr>
        </table>
   </div>
  </div>
</form>
</body>
</html>

