<div class="block">

<div class="element">
  <label>{"Ini file"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <p>{$class_attribute.data_text1|wash}</p>
</div>

<div class="element">
  <label>{"Ini Section"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <p>{$class_attribute.data_text2|wash}</p>
</div>

<div class="element">
  <label>{"Ini Parameter"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <p>{$class_attribute.data_text3|wash}</p>
</div>

</div>

<div class="block">

<div class="element">
  <label>{"Ini setting type"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
<p>
{section show=$class_attribute.data_int1|eq(1)}{"Text"|i18n("design/standard/class/datatype")}{/section}
{section show=$class_attribute.data_int1|eq(2)}{"Enable/Disable"|i18n("design/standard/class/datatype")}{/section}
{section show=$class_attribute.data_int1|eq(3)}{"True/False"|i18n("design/standard/class/datatype")}{/section}
{section show=$class_attribute.data_int1|eq(4)}{"Integer"|i18n("design/standard/class/datatype")}{/section}
{section show=$class_attribute.data_int1|eq(5)}{"Float"|i18n("design/standard/class/datatype")}{/section}
{section show=$class_attribute.data_int1|eq(6)}{"Array"|i18n("design/standard/class/datatype")}{/section}
<p>
</div>

</div>
