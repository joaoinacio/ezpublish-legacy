<div class="block">
<label>{"Package Type"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
<p>{$class_attribute.data_text1}</p>
</div>
<div class="block">
<label>{"View Mode"|i18n("design/standard/content/datatype")}</label><div class="labelbreak"></div>
<p>
{section show=eq($class_attribute.data_int1,0)}combobox{/section}
{section show=eq($class_attribute.data_int1,1)}icon view{/section}
</p>
</div>
