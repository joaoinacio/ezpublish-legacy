<div class="maincontentheader">
<h1>{"PDF Exports"|i18n("design/standard/pdf/list")}</h2>
</div>

<form action={"pdf/list"|ezurl} method="post" name="PDFList">

<table class="list" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <th>{"Name"|i18n("design/standard/pdf/list")}</th>
    <th>{"Creator"|i18n("design/standard/pdf/list")}</th>
    <th>{"Created"|i18n("design/standard/pdf/list")}</th>
    <th>{"Edit"|i18n("design/standard/pdf/list")}</th>
    <th>{"Remove"|i18n("design/standard/pdf/list")}</th>
</tr>

{section name=PDFExport loop=$pdfexport_list sequence=array(bglight,bgdark)}
<tr>
{* {$PDFExport:item|attribute(show)} *}
    <td class="{$PDFExport:sequence}">
    {section show=$PDFExport:item.status|eq(1)}
      <a href={$PDFExport:item.filepath|ezroot}>{$PDFExport:item.title|wash}</a></td>
    {section-else show=$PDFExport:item.status|eq(2)}
      <a href={concat("pdf/edit/", $PDFExport:item.id, "/generate")|ezurl}>{$PDFExport:item.title|wash}</a></td>
    {/section}
    <td class="{$PDFExport:sequence}">{content_view_gui view=text_linked content_object=$PDFExport:item.modifier.contentobject}</td>
    <td class="{$PDFExport:sequence}"><span class="small">{$PDFExport:item.modified|l10n(shortdatetime)}</span></td>
    <td class="{$PDFExport:sequence}" width="1"><div class="listbutton"><a href={concat("pdf/edit/",$PDFExport:item.id)|ezurl}><img class="button" src={"edit.png"|ezimage} width="16" height="16" alt="Edit" /></a></div></td>
    <td class="{$PDFExport:sequence}" width="1" align="right"><input type="checkbox" name="DeleteIDArray[]" value="{$PDFExport:item.id}"></td>
</tr>
{/section}
<tr>
  <td colspan="4">
    {include uri="design:gui/button.tpl" name=newgroup id_name=NewPDFExport value="New Export"|i18n("design/standard/pdf/list")}
  </td>
  <td align="right">
    <input type="image" name="RemoveExportButton" value="{'Remove'|i18n('design/standard/pdf/list')}" src={"trash.png"|ezimage} />
  </td>
</tr>
</table>

</form>

