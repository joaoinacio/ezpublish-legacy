    {section name=ContentObjectAttribute loop=$content_attributes sequence=array(bglight,bgdark)}
    <div class="block">

    {* only show edit GUI if we can edit *}
    {section show=and(eq($ContentObjectAttribute:item.contentclass_attribute.can_translate,0),
                      ne($object.default_language,$ContentObjectAttribute:item.language_code) ) }
        <label>{$ContentObjectAttribute:item.contentclass_attribute.name|wash}</label><div class="labelbreak"></div>
        <input type="hidden" name="ContentObjectAttribute_id[]" value="{$ContentObjectAttribute:item.id}" />
        {attribute_view_gui attribute_base=$attribute_base attribute=$ContentObjectAttribute:item}
        </div>
    {section-else}
        <label>{$ContentObjectAttribute:item.contentclass_attribute.name|wash}</label><div class="labelbreak"></div>
        <input type="hidden" name="ContentObjectAttribute_id[]" value="{$ContentObjectAttribute:item.id}" />
        {attribute_edit_gui attribute_base=$attribute_base attribute=$ContentObjectAttribute:item}
        </div>

    {/section}

    {/section}
