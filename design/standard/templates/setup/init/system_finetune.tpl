{*?template charset=latin1?*}
{let has_warnings=false()}

  <form method="post" action="{$script}">

{section loop=$test.results}
{section-exclude match=true()}
{section-include match=is_set($:item.2.warnings)}
 {set has_warnings=true()}
{/section}

{section show=$has_warnings}
<div class="warning">
{section name=Result loop=$test.results}
{section-exclude match=true()}
{section-include match=is_set($Result:item.2.warnings)}
<h2>Warning</h2>
<ul>
 {section name=Warning loop=$Result:item.2.warnings}
  {section show=is_array($:item.text)}
 <li>{$:item.name}
 <ul>
  {section name=Text loop=$:item.text}
  <li>{$:item}</li>
  {/section}
 </ul>
  {section-else}
 <li>{$:item.text}</li>
  {/section}
 {/section}
</ul></li>
{/section}
</div>
{/section}

  <h1>{"System finetuning"|i18n("design/standard/setup/init")}</h1>
  <p>
{"There are some issues that should be resolved to get maximum performance and features. A list of issues is presented below. Each section contains a description and a suggested / recommended solution."|i18n("design/standard/setup/init")}
</p><p>
{"Once the issues are handled, you may click the <i>Finetune</i> button to continue. The system check will be run again. If everything is okay, the setup will go to the next stage. If the issues are not solved the system finetune page will reappear."|i18n("design/standard/setup/init")}
</p><p>
{"If you do not want to fix these issues just click <i>Next</i>."|i18n("design/standard/setup/init")}
</p>

  <h1>{"Issues"|i18n("design/standard/setup/init")}</h1>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
  {section name=Result loop=$test.results}
  {section-exclude match=$:item[0]|ne(2)}
  <tr>
    <td>{include uri=concat('design:setup/tests/',$:item[1],'_error.tpl') test_result=$:item result_number=$:number}</td>
  </tr>

  {delimiter}
  <tr><td>&nbsp;</td></tr>
  {/delimiter}

  {/section}
  </table>
    {include uri='design:setup/init/navigation.tpl' finetune=true()}
    {include uri='design:setup/persistence.tpl'}
  </form>

{/section}
{/let}
