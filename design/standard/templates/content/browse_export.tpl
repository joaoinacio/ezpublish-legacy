{let version=fetch(content,version,hash(object_id,$browse.content.object_id,version_id,$browse.content.object_version))}
<div class="maincontentheader">
<h1>
    {"Choose export node"|i18n("design/standard/rss")}
</h1>
</div>

<p>
    {"Please choose where to export from.

    Select your placements and click the %buttonname button.
    Using the recent and bookmark items for quick placement is also possible.
    Click on placement names to change the browse listing."
    |i18n("design/standard/rss",,
          hash('%buttonname','Select'|i18n("design/standard/rss")))
    |nl2br}
</p>
{/let}