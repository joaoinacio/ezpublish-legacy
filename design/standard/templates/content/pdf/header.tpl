{* Footer options:
   Example, 
   hash( text, "Page: #page/#total #level1 - #levelIndex1",
               // #page is replaces by current page number
               // #total is replaced by total number of pagee
	       // #level<X> display header name of level X
	       // #levelIndex<X> display header index number of level X
	 page, "odd|even|all",
	 align, "left|right|center|",
	 size, 13,
	 font, Courier,

	 'line', hash( valign, "top|bottom",
                 thicknes, "1.5",
                 size, "full" ) )
         height', 80
	 leftMargin, 50,
	 rightMargin, 50,
	 // left and right margin are by default set to same values as the rest of the document
	 
*}


{pdf(frame_header, hash( text, "#level1 - #level2"|i18n( "design/standard/content/pdf" )|wash(pdf),
		   align, "left",
		   size, 10 ) ) }
{pdf(frame_header, hash( text, "#levelIndex1:#levelIndex2"|i18n( "design/standard/content/pdf" )|wash(pdf),
		   align, "right",
		   size, 10 ) ) }
{pdf(frame_header, hash( line, hash( valign, "bottom",
                               thicknes, 1,
			       size, "full" ) ) ) }