<div class="block">
<label>{"Media player type"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
<select name="ContentClass_ezmedia_type_{$class_attribute.id}">
    <option value="flash">{"Flash"|i18n("design/standard/class/datatype")}</option>
    <option value="quick_time">{"QuickTime"|i18n("design/standard/class/datatype")}</option>
    <option value="real_player">{"Real player"|i18n("design/standard/class/datatype")}</option>
    <option value="windows_media_player">{"Windows media player"|i18n("design/standard/class/datatype")}</option>
</select>
</div>

<div class="block">
<label>{"Max file size"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
<input type="text" name="ContentClass_ezmedia_max_filesize_{$class_attribute.id}" value="{$class_attribute.data_int1}" size="5" maxlength="5" />&nbsp;<span class="normal">MB</span>
</div>
