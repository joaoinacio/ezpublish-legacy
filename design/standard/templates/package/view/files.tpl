{let package=fetch( package,item,
                    hash( package_name, $package_name ) )}

<div id="package" class="viewfiles">
    <div id="pn-{$package.name|wash}" class="pt-{$package.type|wash}">

    <form method="post" action={concat( 'package/view/files/', $package.name )|ezurl}>

    <div class="objectheader">
        <h2>{$package.name|wash}-{$package.version-number}-{$package.release-number}{section show=$package.release-timestamp}({$package.release-timestamp|l10n( shortdatetime )}){/section}{section show=$package.type|wash} [{$package.type}]{/section}
        - {section show=$package.install_type|eq( 'install' )}
            {section show=$package.is_installed}
                {'Installed'|i18n('design/standard/package')}
            {section-else}
                {'Not installed'|i18n('design/standard/package')}
            {/section}
        {section-else}
            {'Imported'|i18n('design/standard/package')}
        {/section}
        </h2>
    </div>

    <div class="object">
        <div class="summary">
            <label>{'Summary'|i18n('design/standard/package')}</label>
            <p>{$package.summary|wash}</p>
        </div>
    </div>

    {section var=collection loop=$package.file-list}
    <div class="objectheader">
        <h2>{'Files [%collectionname]'|i18n('design/standard/package',, hash( '%collectionname', $collection.key ))}</h2>
    </div>
    <div class="object">
        <div class="files">
        {section var=file loop=$collection}
        <p>
            <a href={concat( $package|ezpackage( fileitempath, $file ) )|ezroot}> {section show=$file.subdirectory}{$file.subdirectory|wash}/{/section}{$file.name|wash}</a>
            {section show=$file.variable-name}[{$file.variable-name|wash}]{/section}
            {section show=$file.md5}MD5: <em>{$file.md5|wash}</em>{/section}
        </p>
        {/section}
        </div>
    </div>
    {/section}
    
    <div class="links">
        <p>[ <a href={concat( "package/view/full/", $package.name )|ezurl}>{'Details'|i18n('design/standard/package')}</a> ]</p>
    </div>

    {section show=$package.can_export}
    <div class="buttonblock">
        {section show=$package.install_type|eq( 'install' )}
            {section show=$package.is_installed}
                <input class="button" type="submit" name="UninstallButton" value="{'Uninstall'|i18n( 'design/standard/package')}" />
            {section-else}
                <input class="button" type="submit" name="InstallButton" value="{'Install'|i18n( 'design/standard/package')}" />
            {/section}
        {/section}
        <input class="button" type="submit" name="ExportButton" value="{'Export to file'|i18n( 'design/standard/package')}" />
    </div>
    {/section}

    </form>

    </div>
</div>

{/let}
