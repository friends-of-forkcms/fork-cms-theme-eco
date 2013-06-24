{*
	Variables that are available:
	- {$tagsModules}: contains all tags, grouped per module
*}

<div id="tagsDetail">
	<header class="pageTitle">
		<h1>{$lblItemsWithTag|sprintf:{$tag.name}|ucfirst}</h1>
	</header>
	<div class="bd">
		{option:tagsModules}
			{iteration:tagsModules}
				<header class="hd">
					<h3>{$tagsModules.label}</h3>
				</header>
				<div class="bd content">
					<ul>
						{iteration:tagsModules.items}
							<li><a href="{$tagsModules.items.full_url}">{$tagsModules.items.title}</a></li>
						{/iteration:tagsModules.items}
					</ul>
				</div>
			{/iteration:tagsModules}
		{/option:tagsModules}
		<p><a href="{$var|geturlforblock:'tags'}" title="{$lblToTagsOverview|ucfirst}">{$lblToTagsOverview|ucfirst}</a></p>
	</div>
</div>