{*
	variables that are available:
	- {$widgetTagsRelated}: contains an array with all related items
*}

{option:widgetTagsRelated}
	<div class="widget tagRelatedWidget">
		<header class="hd">
			<h3>{$lblRelated|ucfirst}</h3>
		</header>
		<div class="bd">
			<ul>
				{iteration:widgetTagsRelated}
					<li>
						<a href="{$widgetTagsRelated.full_url}" title="{$widgetTagsRelated.title}">
							{$widgetTagsRelated.title}
						</a>
					</li>
				{/iteration:widgetTagsRelated}
			</ul>
		</div>
	</div>
{/option:widgetTagsRelated}