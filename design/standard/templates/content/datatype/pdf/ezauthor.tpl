{section name=Author loop=$attribute.content.author_list}
 {$Author:item.name|pdf}
 {" - "|pdf}
 {pdf(link, hash(text,$Author:item.email|wash(pdf),
                 url,concat("mailto:", $Author:item.email )))}
{delimiter}
{", "|pdf}
{/delimiter}
{/section}