<div class="widget subscribeFormWidget">
	<header class="hd">
		<h3>{$lblSubscribe|ucfirst}</h3>
	</header>
	<div class="bd">
		<form action="{$var|geturlforblock:'mailmotor':'subscribe'}" method="post">
			<fieldset>
				<input type="hidden" name="form" value="subscribe" />
				<p class="bigInput">
					<label for="email" class="accessibility">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					<input type="text" value="" id="email" name="email" class="inputText" />
				</p>
				<p>
					<input id="send" class="inputSubmit" type="submit" name="send" value="{$lblSubscribe|ucfirst}" />
				</p>
			</fieldset>
		</form>
	</div>
</div>