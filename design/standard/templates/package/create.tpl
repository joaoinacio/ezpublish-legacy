<div id="package">
<form method="post" action={'package/create'|ezurl}>

    <h1>{'Create package'|i18n('design/standard/package')}</h1>

    <h2>{'Available wizards'|i18n('design/standard/package')}</h2>
    <p>{'Choose one of the following wizards for creating a package'|i18n('design/standard/package')}</p>

    <div class="creatorlist">
    <ul>
    {section var=creator loop=$creator_list}
        <li><input type="radio" name="CreatorItemID" value="{$creator.item.id|wash}" {section show=$creator.index|eq( 0 )}checked="checked"{/section} />{$creator.item.name|wash} </li>
    {/section}
    </ul>
    </div>

    <div class="buttonblock">
        <input class="button" type="submit" name="CreatePackageButton" value="{'Create package'|i18n('design/standard/package')}" />
    </div>

</form>
</div>
