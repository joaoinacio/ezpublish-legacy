<form method="post" action={'setup/templateoperator'|ezurl}>

<h1>{'Template operator wizard'|i18n('design/standard/setup')}</h1>

<h2>{'Basic information'|i18n('design/standard/setup')}</h2>

<div class="objectheader">
<h2>{'Name of operator'|i18n('design/standard/setup','Template operator')}</h2>
</div>
<div class="object">
<input type="text" name="Name" value="" />
</div>

<div class="objectheader">
<h2>{'Settings'|i18n('design/standard/setup','Template operator')}</h2>
</div>
<div class="object">
{*
<div class="block">
<input type="checkbox" name="SingleOperatorCheck" value="1" checked="checked" />
<label>{'One operator in class'|i18n('design/standard/setup','Template operator')}</label>
</div>
*}

<div class="block">
<input type="checkbox" name="InputCheck" value="1" checked="checked" />
<label>{'Handles operator input'|i18n('design/standard/setup','Template operator')}</label>
</div>

<div class="block">
<input type="checkbox" name="OutputCheck" value="1" checked="checked" />
<label>{'Generates operator output'|i18n('design/standard/setup','Template operator')}</label>
</div>
</div>

<div class="objectheader">
<h2>{'Parameter handling'|i18n('design/standard/setup','Template operator')}</h2>
</div>
<div class="object">
<select name="Parameter">
    <option value="1">No parameters</option>
    <option value="2">Named parameters</option>
    <option value="3">Sequential parameters</option>
    <option value="4">Custom</option>
</select>
</div>

<div class="buttonblock">
<input type="hidden" value="describe" name="OperatorStep" />
<input class="defaultbutton" type="submit" value="{'Next'|i18n('design/standard/setup','Template operator next')} {'>>'|wash}" name="TemplateOperatorStepButton" />
<input class="button" type="submit" value="{'Restart'|i18n('design/standard/setup','Template operator restart')}" name="TemplateOperatorRestartButton" />
</div>

{section name=Persistence loop=$persistent_data}
<input type="hidden" name="PersistentData[{$:key|wash}]" value="{$:item|wash}" />
{/section}

</form>
