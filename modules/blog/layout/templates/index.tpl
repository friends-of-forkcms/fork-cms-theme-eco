{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

<div id="blogIndex">
	{option:!items}
		<p>{$msgBlogNoItems}</p>
	{/option:!items}

	{option:items}
		{iteration:items}
			<article class="article">
				<header class="hd">
					<h2 class="linkedTitle">
						<a href="{$items.full_url}" title="{$items.title}">{$items.title}</a>
					</h2>
					<ul class="meta">
						<li>
							{* Written by *}
							{$msgWrittenBy|ucfirst|sprintf:{$items.user_id|usersetting:'nickname'}}

							{* Writton on *}
							{$lblOn} {$items.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}

							{* In the category *}
							{$lblIn} {$lblThe} {$lblCategory}
						</li>
						<li class="icon categoryIcon">
							{* Category *}
							<a href="{$items.category_full_url}" title="{$items.category_title}">{$items.category_title}</a>.
						</li>
						<li class="icon commentsIcon">
							{* Comments *}
							{option:!items.comments}
								<a href="{$items.full_url}#{$actComment}">
									{$msgBlogNoComments|ucfirst}
								</a>
							{/option:!items.comments}
							{option:items.comments}
								{option:items.comments_multiple}
									<a href="{$items.full_url}#{$actComments}">
										{$msgBlogNumberOfComments|sprintf:{$items.comments_count}}
									</a>
								{/option:items.comments_multiple}
								{option:!items.comments_multiple}
									<a href="{$items.full_url}#{$actComments}">
										{$msgBlogOneComment}
									</a>
								{/option:!items.comments_multiple}
							{/option:items.comments}
						</li>
					</ul>
				</header>
				<div class="bd content">
					{option:items.image}
						<div class="imageHolder">
							<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" />
						</div>
					{/option:items.image}
					{option:!items.introduction}{$items.text}{/option:!items.introduction}
					{option:items.introduction}{$items.introduction}{/option:items.introduction}
				</div>
			</article>
		{/iteration:items}

		{include:core/layout/templates/pagination.tpl}
	{/option:items}
</div>