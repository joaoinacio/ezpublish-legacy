<div id="package">

<form method="post" action={concat( 'package/install/', $package.name )|ezurl}>

    <h2>{'Install package'|i18n('design/standard/package')}</h2>

    <p>{'The package can be installed on your system, installing the package will copy files, create content classes etc. all depending on the package.
If you do not wish to install the package at this time you can do so later on the view page for the package.'|i18n('design/standard/package')|break}</p>

    <h3>{'Install items'|i18n('design/standard/package')|break}</h3>
    <ul>
    {section var=install loop=$install_elements}
        <li>{$install.description|wash}</li>
    {/section}
    </ul>

    <div class="buttonblock">
        <input class="defaultbutton" type="submit" name="InstallPackageButton" value="{'Install package'|i18n('design/standard/package')}" />
        <input class="button" type="submit" name="SkipPackageButton" value="{'Skip installation'|i18n('design/standard/package')}" />
    </div>

</form>

</div>
