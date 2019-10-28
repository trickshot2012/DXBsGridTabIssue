<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="DXWebApplication20._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <br />
    <dx:BootstrapGridView ID="BootstrapGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="CustomerID">
        <Settings ShowGroupPanel="True" />
        <SettingsEditing Mode="PopupEditForm" />
        <SettingsPopup>
            <HeaderFilter MinHeight="140px"></HeaderFilter>
        </SettingsPopup>
        <SettingsDataSecurity AllowEdit="True" />
        <Columns>
            <dx:BootstrapGridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
            </dx:BootstrapGridViewCommandColumn>
            <dx:BootstrapGridViewTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="1">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="CompanyName" VisibleIndex="2">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="ContactName" VisibleIndex="3">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="ContactTitle" VisibleIndex="4">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Address" VisibleIndex="5">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="City" VisibleIndex="6">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Region" VisibleIndex="7">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="PostalCode" VisibleIndex="8">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Country" VisibleIndex="9">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Phone" VisibleIndex="10">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Fax" VisibleIndex="11">
            </dx:BootstrapGridViewTextColumn>
        </Columns>
        <Templates>
            <EditForm>

                <dx:BootstrapPageControl runat="server" ID="pageControl" ClientInstanceName="pageControl" Width="100%" ActiveTabIndex="0">
                    <TabPages>
                        <dx:BootstrapTabPage Text="Details" Visible="true">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:BootstrapGridViewTemplateReplacement ID="Editors" ReplacementType="EditFormEditors" runat="server"></dx:BootstrapGridViewTemplateReplacement>

                                    <div style="text-align: center">
                                        no content
                                    </div>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>


                        <%-- Due to problems getting the Combobox.Selecteditem in this area, switch back to first method --%>

                        <dx:BootstrapTabPage Text="Weiterleitung" Visible="true">

                            <ContentCollection>

                                <dx:ContentControl runat="server">
                                    <dx:BootstrapFormLayout runat="server" ID="FormLayoutDataBinding">
                                        <Items>
                                            <dx:BootstrapLayoutGroup Caption="Weiterleiten an">
                                                <Items>
                                                    <dx:BootstrapLayoutItem Caption="anderen Mitarbeiter">
                                                        <ContentCollection>
                                                            <dx:ContentControl>
                                                            </dx:ContentControl>
                                                        </ContentCollection>
                                                    </dx:BootstrapLayoutItem>
                                                    <dx:BootstrapLayoutItem ShowCaption="False" ColSpanMd="3">
                                                        <ContentCollection>
                                                            <dx:ContentControl>
                                                                <dx:BootstrapButton ID="BootstrapButton2" Width="200" runat="server" AutoPostBack="false" Text="OK">
                                                                </dx:BootstrapButton>
                                                            </dx:ContentControl>
                                                        </ContentCollection>
                                                    </dx:BootstrapLayoutItem>
                                                </Items>
                                                <Items>
                                                    <dx:BootstrapLayoutItem Caption="andere Abteilung">
                                                        <ContentCollection>
                                                            <dx:ContentControl>
                                                            </dx:ContentControl>
                                                        </ContentCollection>
                                                    </dx:BootstrapLayoutItem>
                                                    <dx:BootstrapLayoutItem ShowCaption="False" ColSpanMd="3">
                                                        <ContentCollection>
                                                            <dx:ContentControl>
                                                            </dx:ContentControl>
                                                        </ContentCollection>
                                                    </dx:BootstrapLayoutItem>
                                                </Items>
                                            </dx:BootstrapLayoutGroup>
                                        </Items>
                                    </dx:BootstrapFormLayout>
                                    <div id="default-popup-control-12ddd" class="popup-target popup-target-md">
                                        <dx:BootstrapPopupControl runat="server" HeaderText="Weiterleiten an andere Abteilung" ID="BootstrapPopupControl2" PopupElementCssSelector="#default-popup-control-12" PopupAnimationType="Slide" CloseAnimationType="Slide" Width="300">
                                            <ContentCollection>
                                                <dx:ContentControl>
                                                    <br />
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:BootstrapPopupControl>
                                    </div>
                                    <div id="default-popup-control-1" class="popup-target popup-target-md">
                                        <dx:BootstrapPopupControl runat="server" HeaderText="Weiterleiten an anderen Mitarbeiter" ID="BootstrapPopupControl1" PopupElementCssSelector="#default-popup-control-1" PopupAnimationType="Slide" CloseAnimationType="Slide" Width="300">
                                            <ContentCollection>
                                                <dx:ContentControl>
                                                    <br />
                                                    <br />
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:BootstrapPopupControl>
                                    </div>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="Tab3" Visible="true">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                             
                                    <div style="text-align: center">
                                        ccccc
                                    </div>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>

                    </TabPages>

                </dx:BootstrapPageControl>

            </EditForm>
        </Templates>
    </dx:BootstrapGridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>

</asp:Content>
