<form method="post" action={'setup/datatype'|ezurl}>

<h1>{'Datatype wizard'|i18n('design/standard/setup')}</h1>

<h2>{'Basic information'|i18n('design/standard/setup')}</h2>

<div class="objectheader">
<h2>{'Name of datatype'|i18n('design/standard/setup','Datatype')}</h2>
</div>
<div class="object">
<input type="text" name="Name" value="" />
</div>

<div class="objectheader">
<h2>{'Descriptive name of datatype'|i18n('design/standard/setup','Datatype')}</h2>
</div>
<div class="object">
<input type="text" name="DescName" value="" />
</div>

<div class="objectheader">
<h2>{'Settings'|i18n('design/standard/setup','Datatype')}</h2>
</div>
<div class="object">

<div class="block">
<input type="checkbox" name="ClassInput" value="1" />
<label>{'Handle input on class level'|i18n('design/standard/setup','Datatype')}</label>
</div>

<div class="buttonblock">
<input type="hidden" value="describe" name="OperatorStep" />
<input class="defaultbutton" type="submit" value="{'Next'|i18n('design/standard/setup','Datatype next')} {'>>'|wash}" name="DatatypeStepButton" />
<input class="button" type="submit" value="{'Restart'|i18n('design/standard/setup','Datatype restart')}" name="DatatypeRestartButton" />
</div>

{section name=Persistence loop=$persistent_data}
<input type="hidden" name="PersistentData[{$:key|wash}]" value="{$:item|wash}" />
{/section}

</form>
