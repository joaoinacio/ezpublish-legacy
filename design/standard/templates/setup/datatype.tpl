<form method="post" action={'/setup/datatype'|ezurl}>

<h1>{'Datatype wizard'|i18n('design/standard/setup')}</h1>
<p>
    Welcome to the wizard for creating a new datatypes.<br/>
    Everything you store in your content objects are called<br />
    attributes. These attributes is defined as a data type. <br />
    To be able to customize the storing and validation<br />
    of these attributes, you can create your own <br />
    data types.<br />
</p>

<div class="buttonblock">
<input type="hidden" value="basic" name="OperatorStep" />
<input class="defaultbutton" type="submit" value="{'Start'|i18n('design/standard/setup','Datatype start')}" name="DatatypeStepButton" />
</div>

</form>
