<div class="maincontentheader">
<h1>
    {'Choose customers'
     |i18n('design/standard/shop/view')}
</h1>
</div>

<p>
    {"Please choose the customers you want to add to discount group %groupname.

    Select your customers and click the %buttonname button.
    Using the recent and bookmark items for quick selection is also possible.
    Click on object names to change the browse listing."
    |i18n('design/standard/shop/view',,
          hash('%groupname',$browse.content.discountgroup_id,
               '%buttonname','Select'|i18n('design/standard/content/view')))
    |nl2br}
</p>
{/let}