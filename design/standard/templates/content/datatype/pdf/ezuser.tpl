hash( type, 2,
      text, "User account information"|i18n("design/standard/content/datatype")|wash(pdf),
      size, 26,
      align, center ) )}}

{pdf(text, concat( "<b>", "User ID"|i18n("design/standard/content/datatype"), "</b>")|wash(pdf))}
{pdf(text, $attribute.content.contentobject_id)}
{pdf(text, concat( "<b>", "Login"|i18n("design/standard/content/datatype"), "</b>" )|wash(pdf))}
{pdf(text, $attribute.content.login|wash(xhtml))}
{pdf(text, concat( "<b>", "Email"|i18n("design/standard/content/datatype"), "</b>" )|wash(pdf))}
{pdf(text, $attribute.content.email|wash(pdf))}
