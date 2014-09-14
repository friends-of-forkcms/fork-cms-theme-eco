{*
	variables that are available:
	- {$faqCategories}: contains all categories, along with all questions inside a category
*}

<div id="faqIndex">
	{option:!faqCategories}
		<p>{$msgFaqNoItems}</p>
	{/option:!faqCategories}

	{option:faqCategories}
		<div class="content">
			<ul>
				{* Show linked category titles *}
				{iteration:faqCategories}
					<li>
						<a href="#{$faqCategories.url}" title="{$faqCategories.title}">{$faqCategories.title}</a>
					</li>
				{/iteration:faqCategories}
			</ul>
		</div>

		{iteration:faqCategories}
			{* Category title *}
			<header class="hd">
				<h2 id="{$faqCategories.url}" class="linkedTitle"><a href="{$faqCategories.full_url}" title="{$faqCategories.title}">{$faqCategories.title}</a></h2>
			</header>

			{* Category questions *}
			<div class="content">
				<ul>
					{iteration:faqCategories.questions}
						<li>
							<a href="{$faqCategories.questions.full_url}">{$faqCategories.questions.question}</a>
						</li>
					{/iteration:faqCategories.questions}
				</ul>
			</div>
		{/iteration:faqCategories}
	{/option:faqCategories}
</div>