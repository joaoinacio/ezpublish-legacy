{switch match=$attribute.contentclass_attribute.data_int1}

{case in=array(1,2,3,4,5)}

{$attribute.data_text|wash}

{/case}

{case match=6}

<textarea readonly="readonly" cols="97" rows="5">{$attribute.data_text|wash}</textarea>

{/case}

{/switch}