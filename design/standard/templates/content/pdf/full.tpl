{pdf(header, hash( type, 1,
                   text, $object.name|wash,
		   size, 26,
		   align, center ) )}

{section name=ContentObjectAttribute loop=$version_attributes}
  {attribute_pdf_gui attribute=$ContentObjectAttribute:item}
{/section}


{section name=Object loop=$related_contentobject_array show=$related_contentobject_array sequence=array(bglight,bgdark)}
  {content_pdf_gui view=text_linked content_object=$Object:item}
{/section}
