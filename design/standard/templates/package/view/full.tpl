{let package=fetch( package,item,
                    hash( package_name, $package_name ) )}

<div id="package" class="viewfull">
    <div id="pn-{$package.name|wash}" class="pt-{$package.type|wash}">

    <form method="post" action={concat( 'package/view/full/', $package.name )|ezurl}>

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

        <table>
        <tr>
        <td>

        <div class="summary">
            <label>{'Summary'|i18n('design/standard/package')}</label>
            <p>{$package.summary|wash}</p>
        </div>

        <div class="state">
            <label>{'State'|i18n('design/standard/package')}</label>
            <p>{$package.state|wash}</p>
        </div>

        <div class="licence">
            <label>{'Licence'|i18n('design/standard/package')}</label>
            <p>{$package.licence|wash}</p>
        </div>

        <div class="maintainers">
            <label>{'Maintainers'|i18n('design/standard/package')}</label>
            <p>
                {section var=maintainer loop=$package.maintainers}
                    <a href="mailto:{$maintainer.item.email}" subject="{"Regarding eZ publish package '%packagename'"|i18n('design/standard/package',,hash( '%packagename', $package.name ) )}" title="{'Send E-Mail to the maintainer'|i18n('design/standard/package')}">{$maintainer.item.name|wash}</a> ({$maintainer.item.role|wash})
                {delimiter}, {/delimiter}
                {/section}
            </p>
        </div>

        <div class="description">
            <label>{'Description'|i18n('design/standard/package')}</label>
            <p>{$package.description}</p>
        </div>

        <div class="documents">
            <label>{'Documents'|i18n('design/standard/package')}</label>
            <p>
                {section var=document loop=$package.documents}
                {let document_path=$package|ezpackage( documentpath, $document.name )}
                    {section show=$document_path}<a href={$document_path|ezroot}>{/section}{$document.name|wash}{section show=$document_path}</a>{/section}
                {/let}
                {delimiter}, {/delimiter}
                {/section}
            </p>
        </div>

        <div class="changelog">
            <label>{'Changelog'|i18n('design/standard/package')}</label>
            <p>
                {section var=log loop=$package.changelog}
                    <h3><p class="byline"><em class="date">({$log.item.timestamp|l10n( shortdatetime )})</em> <a href="mailto:{$log.item.email}" subject="{"Regarding eZ publish package '%packagename'"|i18n('design/standard/package',,hash( '%packagename', $package.name ) )}" title="{'Send E-Mail to the maintainer'|i18n('design/standard/package')}">{$log.item.person|wash}</a></p></h3>
                    <ul>
                    {section var=change loop=$log.item.changes}
                    <li>
                        {$change.item|wash}
                    </li>
                    {/section}
                    </ul>
                {delimiter}<hr/> {/delimiter}
                {/section}
            </p>
        </div>
        
        </td>

        <td valign="top">
            {let thumbnail_list=$package.thumbnail-list}
            {section show=$thumbnail_list}
            <div class="thumbnail">
                <img src={concat( $package|ezpackage( fileitempath, $thumbnail_list[0] ) )|ezroot} alt="{$thumbnail_list[0].name|wash}" />
            </div>
            {/section}
            {/let}
        </td>

        </tr>
        </table>

    </div>
    
    <div class="links">
        {section show=$package.file-count|gt( 0 )}
        <p>[ <a href={concat( "package/view/files/", $package.name )|ezurl}>{'File list'|i18n('design/standard/package')}</a> ]</p>
        {/section}
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
