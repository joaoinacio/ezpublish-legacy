{let current_user=fetch( user, current_user )
     maintainer_role_list=fetch( package, maintainer_role_list, hash( check_roles, true() ) )}
<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash}">

    <form method="post" action={'package/create'|ezurl}>

    {include uri="design:package/create/error.tpl"}

    {include uri="design:package/header.tpl"}

    <p>{'Please provide information on the maintainer of the package.'|i18n('design/standard/package')}</p>

    <div class="maintainer_person">
        <label>{'Name'|i18n('design/standard/package','Maintainer name')}</label>
        <input class="textline" type="text" name="PackageMaintainerPerson" value="{$persistent_data.maintainer_person|wash}" />
    </div>

    <div class="maintainer_email">
        <label>{'E-Mail'|i18n('design/standard/package')}</label>
        <input class="textline" type="text" name="PackageMaintainerEmail" value="{$persistent_data.maintainer_email|wash}" />
    </div>

    <div class="maintainer_role">
        <label>{'Role'|i18n( 'design/standard/package', 'Maintainer role' )}</label>
        <select class="combobox" name="PackageMaintainerRole">
        {section var=role loop=$maintainer_role_list}
            <option value="{$role.id|wash}">{$role.name|wash}</option>
        {/section}
        </select>
    </div>

    {include uri="design:package/navigator.tpl"}

    </form>

    </div>
</div>
{/let}
