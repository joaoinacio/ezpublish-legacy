<div id="package">

<form enctype="multipart/form-data" method="post" action={'package/upload'|ezurl}>

    <h2>{'Upload package'|i18n('design/standard/package')}</h2>
    
    {section show=$error_list}
    <div class="error">
    <ul>
        {section var=error loop=$error_list}
            <li>{$error.description|wash}</li>
        {/section}
    </ul>
    </div>
    {/section}

    <p>{'Select the file containing your package and click the upload button'|i18n('design/standard/package')}</p>

    <input type="hidden" name="MAX_FILE_SIZE" value="32000000" />
    <input class="file" name="PackageBinaryFile" type="file" />

    <div class="buttonblock">
        <input class="defaultbutton" type="submit" name="UploadPackageButton" value="{'Import package'|i18n('design/standard/package')}" />
    </div>

</form>

</div>
