{*
	variables that are available:
	- {$widgetBlogCategories}:
*}

{option:widgetBlogCategories}
	<aside class="widget blogCategoryWidget">
		<header class="hd">
			<h3>{$lblCategories|ucfirst}</h3>
		</header>
		<div class="bd">
			<ul>
				{iteration:widgetBlogCategories}
					<li>
						<a href="{$widgetBlogCategories.url}">
							{$widgetBlogCategories.label}
						</a>
					</li>
				{/iteration:widgetBlogCategories}
			</ul>
		</div>
	</aside>
{/option:widgetBlogCategories}