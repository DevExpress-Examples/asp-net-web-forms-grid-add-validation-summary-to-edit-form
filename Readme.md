<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128537681/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3982)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Grid View for ASP.NET Web Forms - How to add the ValidationSummary control to the grid's edit form 

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

