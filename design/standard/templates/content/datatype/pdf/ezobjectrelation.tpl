{section show=$attribute.content}
  {pdf(link, hash(url, concat('content/view/full/',$attribute.content.main_node_id)|ezurl(no),
                  text, $attribute.content.name|wash(pdf)))};
{section-else}
   {pdf(text, "No relation"|i18n("design/standard/content/datatype")|wash(pdf))}
{/section}