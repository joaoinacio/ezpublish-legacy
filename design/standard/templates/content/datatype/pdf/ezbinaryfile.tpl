{pdf(link, hash( url, concat("content/download/",$attribute.contentobject_id,"/",$attribute.id,"/file/",$attribute.content.original_filename)|ezurl(no),
                 text, $attribute.content.original_filename|wash(pdf)))}
{pdf(text,$attribute.content.filesize|si(byte)|wash(pdf))}