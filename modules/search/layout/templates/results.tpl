{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

{option:searchTerm}
	<div id="searchResults">
		{option:!searchResults}
			<p>{$msgSearchNoItems}</p>
		{/option:!searchResults}
		{option:searchResults}
			{iteration:searchResults}
				<article class="article">
					<header class="hd">
						<h2 class="linkedTitle">
							<a href="{$searchResults.full_url}" title="{$searchResults.title}">
								{$searchResults.title}
							</a>
						</h2>
					</header>
					<div class="bd content">
						{option:!searchResults.introduction}{$searchResults.text|truncate:200}{/option:!searchResults.introduction}
						{option:searchResults.introduction}{$searchResults.introduction}{/option:searchResults.introduction}
					</div>
				</article>
			{/iteration:searchResults}
		{/option:searchResults}
	</div>
	{include:core/layout/templates/pagination.tpl}
{/option:searchTerm}