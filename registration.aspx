<%@ Page Title="" Language="C#"  MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Async="true"  Inherits="registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content3" ContentPlaceHolderID="pagecontents" runat="Server">

            <!-- Main content -->
            <section class="content">
      <div class="row">
        <!-- left column -->
                                         
              <div class="col-md-12">
                               
                                  <div class="box box-info">
<div class="box-header with-border">
  <h3 class="box-title">Registration for Enm</h3>
	<div class="box-tools pull-right">
    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
    </button>
    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
  </div>
</div>     
                                      
           <div class="row">
               
               <div class="col-md-4"></div>
               <div class="col-md-4">


                </div>      
    </div>

                  <br />
            
                   <br />
                <div class="box-body">
				 <div class="row">
                               
					  <div class="col-xs-4">
                            <label>Employee ID:</label>
			   
					  <div>	  
<asp:TextBox runat="server" autocomplete="off"   MaxLength="8" ID="txtEmpID" CssClass="form-control" placeholder="Employee ID"></asp:TextBox>
             
      <asp:requiredfieldvalidator display="Dynamic" style="color: red" id="RequiredFieldValidator1" controltovalidate="txtEmpID" runat="server" errormessage="Employee No is required. "></asp:requiredfieldvalidator>
       <asp:RegularExpressionValidator
                   Style="color: red"
                   ControlToValidate="txtEmpID"
                   Display="Dynamic"
                   ErrorMessage="Employee No. is not formatted correctly. "
                   ID="RegularExpressionValidator2"
                   runat="Server"
                   ValidationExpression="^([234])([0-9]{7})$" ></asp:RegularExpressionValidator>
			  </div>
                                                                   
                   
						  </div>
                    
               
                       <div class="col-xs-4">
       <label>Employee Name:</label>
      <asp:TextBox MaxLength="30" runat="server" autocomplete="off"  ID="txtName" CssClass="form-control" placeholder="First Name"></asp:TextBox>
       <asp:requiredfieldvalidator style="color: red" display="Dynamic" id="RequiredFieldValidation" controltovalidate="txtName" runat="server" errormessage="Name is required. "></asp:requiredfieldvalidator>
       <asp:regularexpressionvalidator style="color: red" controltovalidate="txtName" display="Dynamic" errormessage="First Name is not formatted correctly." id="RegularExpressionValidator29" runat="Server" validationexpression="^[A-Za-z]{2,50}$" ></asp:regularexpressionvalidator>
				  </div>
                    
                    <div class="col-xs-4">
                                <label>Employee Last Name:</label>
  <asp:TextBox MaxLength="30" autocomplete="off" runat="server" ID="txtLastName" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtLastName" style="color: red" Display="Dynamic"></asp:RequiredFieldValidator>
<asp:regularexpressionvalidator style="color: red" controltovalidate="txtLastName" display="Dynamic" errormessage="Last Name is not formatted correctly." id="RegularExpressionValidator4" runat="Server" validationexpression="^[A-Za-z]{2,50}$" /> 
  
						  </div>
                    

					 </div>

				 <br>
				
				<div class="row">

                    <div class="col-xs-4">
                      <label>Password:</label>
<asp:TextBox ID="txt_pas"  autocomplete="off" runat="server" CssClass="form-control" placeholder="Password" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txt_pas" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password must contain uppercase, lowercase, digit, special character, and be 8+ characters." ControlToValidate="txt_pas" ForeColor="Red"  ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>

				  </div>

                     


				  <div class="col-xs-4">
          <label>Mobile:</label>
          <asp:TextBox MaxLength="10" autocomplete="off" runat="server" ID="txtMobile" CssClass="form-control" placeholder="Mobile"></asp:TextBox>
          <asp:requiredfieldvalidator display="Dynamic" style="color: red" autocomplete="off" id="RequiredFieldValidator4" controltovalidate="txtMobile" runat="server" errormessage="Mobile is required. "></asp:requiredfieldvalidator>
           
            <asp:RegularExpressionValidator             Style="color: red"
                        ControlToValidate="txtMobile"
                        Display="Dynamic"
                        ErrorMessage="Contact no is not formatted correctly. "
                        ID="RegularExpressionValidator6"
                        runat="Server"
                        ValidationExpression="^\d{10}$"
                ></asp:RegularExpressionValidator>
					  </div>                                                  
                     
                                                                                                          
					 
					 <div class="col-xs-4">
                         <label>Joining Date:</label>
                         <asp:TextBox runat="server" autocomplete="off" ID="txtjoindate" CssClass="form-control" placeholder="Joining Date"></asp:TextBox>
                     <cc1:CalendarExtender ID="CalendarExtender3" runat="server" Format="dd/MM/yyyy" TargetControlID="txtjoindate"></cc1:CalendarExtender>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="txtjoindate" style="color: red" display="Dynamic"></asp:RequiredFieldValidator>
     <asp:CompareValidator
                  Style="color: red"
                  Display="Dynamic"
                  ID="CompareValidator1" runat="server"
                  Type="Date"
                  Operator="DataTypeCheck"
                  ControlToValidate="txtjoindate"
                  ErrorMessage="Please enter a valid date.">
              </asp:CompareValidator>
						  </div>		
                    </div>

              
				<br />
                  
				 <div class="row">

                            <div class="col-xs-4">
           <label>Category:</label>
           <asp:DropDownList ID="txtddlcategory" CssClass="form-control"  autocomplete="off" runat="server">
               <asp:ListItem>Please Select</asp:ListItem>
               <asp:ListItem>Employee</asp:ListItem>
               <asp:ListItem>Consultant</asp:ListItem>
           </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" InitialValue="Please Select" ControlToValidate="txtddlcategory" style="color: red" Display="Dynamic"></asp:RequiredFieldValidator>

				  </div>	


					  <div class="col-xs-4">
                         <label>Designation:</label>
                        <asp:TextBox runat="server" ID="txtdes" autocomplete="off" CssClass="form-control" placeholder="Designation"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="txtdes" style="color: red" Display="Dynamic"></asp:RequiredFieldValidator>
  <asp:regularexpressionvalidator style="color: red" controltovalidate="txtdes" display="Dynamic" errormessage="Designation is not formatted correctly." id="RegularExpressionValidator1" runat="Server" validationexpression="^[A-Za-z\s.&]{2,50}$"></asp:regularexpressionvalidator>

						  </div>	


                        <div class="col-xs-4">
        <label>Department:</label>
        <asp:TextBox runat="server" ID="txtdep" autocomplete="off" CssClass="form-control" placeholder="Department" ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="txtdep" style="color: red" Display="Dynamic"></asp:RequiredFieldValidator>
 <asp:regularexpressionvalidator style="color: red" controltovalidate="txtdep" display="Dynamic" errormessage="Designation is not formatted correctly." id="RegularExpressionValidator5" runat="Server" validationexpression="^[A-Za-z\s.&]{2,50}$"></asp:regularexpressionvalidator>

				  </div>
                    
			 </div>
         <br />


         				  <div class="row" align="left">
  <div class="col-xs-1" >
  <asp:Button ID="submitbtn" runat="server" Text="Submit" 
          class="btn btn-success " onclick="submitbtn_Click"/>  
    
  </div>
     
  </div>
  <asp:Label ID="lableerror" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                <br />

                
                   
				 <br/>
                                       </div>
      </div>
             
           </div>
          </div>
               
       
    </section>
</asp:Content>





