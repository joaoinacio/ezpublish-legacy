<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash}">

    <form method="post" action={'package/create'|ezurl}>

    {include uri="design:package/create/error.tpl"}

    {include uri="design:package/header.tpl"}

    <p>{'Please provide some basic information for your package.'|i18n('design/standard/package')}</p>

    <table>
    <tr>

    <td valign="top">
        <div class="name">
            <label>{'Package name'|i18n('design/standard/package')}</label>
            <input class="textline" type="text" name="PackageName" value="{$persistent_data.name|wash}" />
        </div>
    
        <div class="summary">
            <label>{'Summary'|i18n('design/standard/package')}</label>
            <input class="textline" type="text" name="PackageSummary" value="{$persistent_data.summary|wash}" />
        </div>
    
        <div class="description">
            <label>{'Description'|i18n('design/standard/package')}</label>
            <textarea class="description" name="PackageDescription">{$persistent_data.description|wash}</textarea>
        </div>
    
        <div class="version">
            <label>{'Version'|i18n('design/standard/package')}</label>
            <input class="shorttextline" type="text" name="PackageVersion" value="{$persistent_data.version|wash}" />
        </div>
    
        <div class="licence">
            <label>{'Licence'|i18n('design/standard/package')}</label>
            <input type="hidden" name="PackageLicence" value="{$persistent_data.licence|wash}" />
            <p>{$persistent_data.licence|wash}</p>
        </div>
    </td>

    <td valign="top">
        <div class="name">
            <label>{'Package host'|i18n('design/standard/package')}</label>
            <input class="textline" type="text" name="PackageHost" value="{$persistent_data.host|wash}" />
        </div>
    
        <div class="summary">
            <label>{'Packager'|i18n('design/standard/package')}</label>
            <input class="textline" type="text" name="PackagePackager" value="{$persistent_data.packager|wash}" />
        </div>
    </td>
    
    </tr>
    </table>

    {include uri="design:package/navigator.tpl"}

    </form>

    </div>
</div>
