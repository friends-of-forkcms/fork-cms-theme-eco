{option:languages}
	<div id="language">
		<ul>
			{iteration:languages}
				<li class="{option:languages.first}firstChild{/option:languages.first} {option:languages.current}selected{/option:languages.current}">
					<a href="{$languages.url}">{$languages.label|uppercase}</a>
				</li>
			{/iteration:languages}
		</ul>
	</div>
{/option:languages}