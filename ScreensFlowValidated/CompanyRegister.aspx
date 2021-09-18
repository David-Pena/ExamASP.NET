<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyRegister.aspx.cs" Inherits="ScreensFlowValidated.CompanyRegister" %>

<!DOCTYPE html>

<style>

body {
    font-family: "Poppins", sans-serif;
    height: 100vh;
}

/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
  background-color: #56baed;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 950px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #56baed;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text], .fields {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: left;
  text-decoration: none;
  font-size: 16px;
   width: 100%;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Registration</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <div class="wrapper fadeInDown">
      <div id="formContent">
        <!-- Recover Form -->
        <form id="form1" runat="server">
            <div class="row container d-flex ml-0">
                <div class="col col-md-12 p-3 text-left">
                    <span class="font-weight-bold text-uppercase">Fill your company information</span><hr />
                </div>
     
                <div class="col col-md-6">
                    <asp:TextBox ID="txtCompanyName" runat="server" class="fadeIn first  fields" name="companyName" placeholder="Company Name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompanyName" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col col-md-6">
                    <asp:TextBox ID="txtEmail" runat="server" class="fadeIn first  fields" name="email" placeholder="Email" TextMode="Email" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col col-md-12">
                    <asp:TextBox ID="txtAddress" runat="server" class="fadeIn first  fields" name="address" placeholder="Address" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col col-md-6">
                    <asp:TextBox ID="txtCity" runat="server" class="fadeIn second  fields" name="city" placeholder="City" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col col-md-6">
                    <asp:TextBox ID="txtZipCode" runat="server" class="fadeIn third  fields" name="zipCode" placeholder="ZIP Code" TextMode="Number" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtZipCode" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col col-md-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="bg-light fields">
                        <asp:listitem text="Select country" value="default"></asp:listitem>
                        <asp:listitem text="Colombia" value="Colombia"></asp:listitem>
                        <asp:listitem text="Venezuela" value="Venezuela"></asp:listitem>
                        <asp:listitem text="Argentina" value="Argentina"></asp:listitem>
                        <asp:listitem text="Ecuador" value="Ecuador"></asp:listitem>
                        <asp:listitem text="Bolivia" value="Bolivia"></asp:listitem>
                    </asp:DropDownList>
                </div>
                <div class="col col-md-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="bg-light fields">
                        <asp:listitem text="Select department" value="default"></asp:listitem>
                        <asp:listitem text="Atlantico" value="Atlantico"></asp:listitem>
                        <asp:listitem text="Costa Sur" value="Costa Sur"></asp:listitem>
                        <asp:listitem text="Buenos Aires" value="Buenos Aires"></asp:listitem>
                        <asp:listitem text="Quito" value="Quito"></asp:listitem>
                        <asp:listitem text="Bogota" value="Bogota"></asp:listitem>
                    </asp:DropDownList>
                </div>
                <div class="col col-md-12 mt-5">
                    <asp:Button ID="btnSubmit" runat="server" class="fadeIn fourth" Text="Save Information" OnClick="BtnSaveInfo"/>
                </div>
            </div>
        </form>
      </div>
    </div>
</body>
</html>
