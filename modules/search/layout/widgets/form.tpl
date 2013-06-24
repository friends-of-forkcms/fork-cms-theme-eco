<div id="searchFormWidget">
	{form:search}
		<fieldset>
			<label for="q_widget" class="accessibility">{$lblSearchTerm|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
			{$txtQWidget}
			<input id="submit" class="inputSubmit" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
		</fieldset>
	{/form:search}
</div>