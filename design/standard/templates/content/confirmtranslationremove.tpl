<form action={concat($module.functions.translations.uri)|ezurl} method="post" name="TranlationRemove">

<div class="warning">
<h2>{"Are you sure you want to remove this translation?"|i18n("design/standard/content")}</h2>
<ul>
{section name=Result loop=$confirm_list}
    <li>
      {"Removing '%1' will remove the translation itself and %2 translated versions!"|
       i18n("design/standard/content",,hash("%1",$:item.translation.name|gt(0)|choose(concat($:item.translation.locale_object.language_name," ",$:item.translation.locale_object.language_comment),$:item.translation.name|wash),
                                            "%2",$:item.count))}
      <input type="hidden" name="ConfirmTranlationID[]" value="{$Result:item.translation.id}" />
    </li>
{/section}
</ul>
</div>

<div class="buttonblock">
{include uri="design:gui/button.tpl" name=Store id_name=ConfirmButton value="Confirm"|i18n("design/standard/content")}
{include uri="design:gui/button.tpl" name=Discard id_name=CancelButton value="Cancel"|i18n("design/standard/content")}
</div>

</form>
