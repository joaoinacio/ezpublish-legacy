{let version=fetch( content, version, hash( object_id, $object_id,
                                            version_id, $object_version ) )}
<form action={"content/removeeditversion"|ezurl} method="post" name="EditVersionRemove">

<div class="warning">
<h2>{"Are you sure you want to discard the draft %versionname?"
     |i18n( 'design/standard/content/edit',,
            hash( '%versionname', concat( '<i>', $version.version_name, '</i>' ) ) )}</h2>
</div>

<div class="buttonblock">
    {include uri="design:gui/button.tpl" name=Store id_name=ConfirmButton value="Confirm"|i18n("design/standard/content/edit")}
    {include uri="design:gui/defaultbutton.tpl" name=Discard id_name=CancelButton value="Cancel"|i18n("design/standard/content/edit")}
</div>

</form>

{/let}
