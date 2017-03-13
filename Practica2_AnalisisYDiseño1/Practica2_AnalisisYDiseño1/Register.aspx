<%@ Page Title="Registrarse" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Practica2_AnalisisYDiseño1.Account.Register" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
   
     <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1> REGISTRATE </h1>
                
            </hgroup>
          
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Use el formulario siguiente para crear una cuenta nueva.</h2>
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <br />
                    <p class="message-info">
                        Es necesario que las contraseñas tengan al menos <%: Membership.MinRequiredPasswordLength %> caracteres.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Formulario de registro</legend>
                        <ol>

                            <li>
                                 <div class="form-group">
                                    <asp:Label runat="server" ID="Err" AssociatedControlID="Question">Nombre Completo</asp:Label>
                                    
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Question" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Question"
                                     CssClass="field-validation-error"  ErrorMessage="Introducir su nombre completo es obligatorio es obligatorio." />
                                        
                                

                                </div>
                                
                            </li>
                            <li>
                                <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="UserName">Nombre de usuario</asp:Label>
                                    </div>
                                <div class="form-group">
                                <asp:TextBox runat="server" ID="UserName" name="UserName"/>
                                    
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="El campo de nombre de usuario es obligatorio." />
                                    </div>
                               


                            </li>
                            <li>
                                <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Email">Dirección de correo electrónico</asp:Label>
                                    </div>
                                <div class="form-group">
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="El campo de dirección de correo es obligatorio." />
                                    </div>
                            </li>
                            <li>
                                <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Password">Contraseña</asp:Label>
                                    </div>
                                <div class="form-group">
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="El campo de contraseña es obligatorio." />
                                    </div>
                            </li>
                            <li>
                                <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirmar contraseña</asp:Label>
                                    </div>
                                    <div class="form-group">
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="El campo de confirmación de contraseña es obligatorio." />
                                        
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="La contraseña y la contraseña de confirmación no coinciden." />
                                        </div>
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="Registrarse" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>