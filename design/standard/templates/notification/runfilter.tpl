<form method="post" action={"/notification/runfilter/"|ezurl}>

<h1>{'Notification admin'|i18n('design/standard/notification')}</h1>

{section show=$filter_proccessed}
<div class="feedback">
{'Notification filter proccessed all available notification events'|i18n('design/standard/notification')}
</div>
{/section}

{section show=$time_event_created}
<div class="feedback">
{'Time event was spawned'|i18n('design/standard/notification')}
</div>
{/section}

<h2>{'Run notification filter'|i18n('design/standard/notification')}</h2>

<input type="submit" name="RunFilterButton" value="{'Run'|i18n('design/standard/notification')}" />

<h2>{'Spawn time event'|i18n('design/standard/notification')}</h2>

<input type="submit" name="SpawnTimeEventButton" value="{'Spawn'|i18n('design/standard/notification')}" />
</form>