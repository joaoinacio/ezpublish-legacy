{let page_limit=10
     col_count=2
     children=fetch('content','list',hash(parent_node_id,$node.node_id,limit,$page_limit,offset,$view_parameters.offset))
     child_count=fetch('content','list_count',hash(parent_node_id,$node.node_id))}

<div class="maincontentheader">
<h1>{"Site map"|i18n("design/standard/node/view")} {$node.name|wash}</h1>
</div>

<table width="100%" cellspacing="0" cellpadding="4">
<tr>
{section name=Child loop=$children}
    <td>
    <h2><a href={$Child:item.url_alias|ezurl}>{$Child:item.name}</a></h2>

    {let sub_children=fetch('content','list',hash(parent_node_id,$Child:item.node_id,limit,$page_limit))
         sub_child_count=fetch('content','list_count',hash(parent_node_id,$Child:item.node_id))}

    <ul>
    {section name=SubChild loop=$:sub_children}
    <li><a href={$:item.url_alias|ezurl}>{$:item.name}</a></li>
    {/section}
    </ul>

    {/let}

    </td>
    {delimiter modulo=$col_count}
</tr>
<tr>
    {/delimiter}
{/section}
</tr>
</table>
{/let}