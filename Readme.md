# Grid View for ASP.NET Web Forms - How to add the ValidationSummary control to the grid's edit form 
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3982/)**
<!-- run online end -->

This example demonstrates how to add the [ASPxValidationSummary](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxValidationSummary) control to the grid's edit form.

## Overview

Follow the steps below:

1. Specify a custom edit form template.
2. Use the [ASPxGridViewTemplateReplacement](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridViewTemplateReplacement) class to replace auto-generated edit form editors - set the [ReplacementType](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridViewTemplateReplacement.ReplacementType) property to `EditFormEditors`.
3. Add the `ASPxValidationSummary` control to collect edit form template validation errors.
4. Call the client-side [ASPxClientEdit.ValidateEditorsInContainer](https://docs.devexpress.com/AspNet/js-ASPxClientEdit.ValidateEditorsInContainer.static(container)) method to validate the edit form template.

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))

