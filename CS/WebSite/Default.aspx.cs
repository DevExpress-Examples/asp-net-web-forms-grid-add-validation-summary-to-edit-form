using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.Data;

public partial class _Default : System.Web.UI.Page {
    protected void hplkUpdate_Init(object sender, EventArgs e) {
        HyperLink hyperLink = sender as HyperLink;
        GridViewEditFormTemplateContainer container = hyperLink.NamingContainer as GridViewEditFormTemplateContainer;
        hyperLink.NavigateUrl = String.Format("javascript:hplkUpdate_Click({0})", container.Grid.ClientInstanceName);
    }

    protected void gvEmployees_RowValidating(object sender, ASPxDataValidationEventArgs e) {
        ASPxGridView gridView = sender as ASPxGridView;

        if(e.NewValues["LastName"].ToString() == e.OldValues["LastName"].ToString()) {
            e.Errors[gridView.Columns["LastName"]] = "Last Name value has not been changed!";
            e.RowError = "Server-side validation fails!";
        }
    }

    protected void gvEmployees_RowUpdating(object sender, ASPxDataUpdatingEventArgs e) {
        ASPxGridView gridView = sender as ASPxGridView;
        
        //Comment a line below to allow updating
        e.Cancel = true; gridView.CancelEdit();
    }
}
