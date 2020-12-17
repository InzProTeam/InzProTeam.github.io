<%@ Page Title="Zarządzanie użytkownikiem" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebFormMemberManagement.aspx.cs" Inherits="InzProWeb.WebFormMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function() {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid" style="margin-top:20px">
      <div class="row">
         <div class="col-xl-6">
            <div class="card badge-light">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Szczegóły konta</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nazwa użytkownika</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBoxUser" runat="server" placeholder="Nazwa użytkownika"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButtonUser" runat="server" OnClick="LinkButtonUser_Click" Width="40px"><i class="fas fa-check-circle"></i></asp:LinkButton>                     
                            </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Status konta</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBoxAccount" runat="server" placeholder="Status konta" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButtonActivate" runat="server" OnClick="LinkButtonActivate_Click" Width="40px"><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButtonPending" runat="server" OnClick="LinkButtonPending_Click" Width="40px"><i class="far fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButtonDisactive" runat="server" OnClick="LinkButtonDisactive_Click" Width="40px"><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">

                  </div>
                  <div class="row">
                     <div class="col-md-7">
                        <label>Adres email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBoxEmail" runat="server" placeholder="Adres email" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Data urodzenia</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBoxDOB" runat="server" placeholder="Data urodzenia" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <asp:Button ID="ButtonDeletePerm" class="btn btn-lg btn-block btn-danger" runat="server" Text="Skasuj konto bezpowrotnie" OnClick="ButtonDeletePerm_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Powrót do strony głównej</a><br>
            <br>
         </div>
         <div class="col-xl-6">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Lista użytkowników</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSourceMember" runat="server" ConnectionString="<%$ ConnectionStrings:InzProConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridViewMemberList" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSourceMember">
                            <Columns>
                                <asp:BoundField DataField="Username" HeaderText="Nazwa użytkownika" ReadOnly="True" SortExpression="Username" />
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

</asp:Content>
