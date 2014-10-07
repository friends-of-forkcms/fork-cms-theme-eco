{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}
	<div id="blogIndex" class="blogRecentArticlesFullWidget">
		{iteration:widgetBlogRecentArticlesFull}
			<article class="article">
				<header class="hd">
					<h2 class="linkedTitle">
						<a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a>
					</h2>
					<ul class="meta">
						<li>
							{* Written by *}
							{$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesFull.user_id|usersetting:'nickname'}}

							{* Writton on *}
							{$lblOn} {$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}

							{* In the category *}
							{$lblIn} {$lblThe} {$lblCategory}
						</li>

						<li class="icon categoryIcon">
							{* Category *}
							<a href="{$widgetBlogRecentArticlesFull.category_full_url}" title="{$widgetBlogRecentArticlesFull.category_title}">{$widgetBlogRecentArticlesFull.category_title}</a>.
						</li>

						<li class="icon commentsIcon">
							{* Comments *}
							{option:!widgetBlogRecentArticlesFull.comments}
								<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComment}">
									{$msgBlogNoComments|ucfirst}
								</a>
							{/option:!widgetBlogRecentArticlesFull.comments}
							{option:widgetBlogRecentArticlesFull.comments}
								{option:widgetBlogRecentArticlesFull.comments_multiple}
									<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">
										{$msgBlogNumberOfComments|sprintf:{$widgetBlogRecentArticlesFull.comments_count}}
									</a>
								{/option:widgetBlogRecentArticlesFull.comments_multiple}
								{option:!widgetBlogRecentArticlesFull.comments_multiple}
									<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">
										{$msgBlogOneComment}
									</a>
								{/option:!widgetBlogRecentArticlesFull.comments_multiple}
							{/option:widgetBlogRecentArticlesFull.comments}
						</li>
					</ul>
				</header>
				<div class="bd content">
					{option:!widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.text}{/option:!widgetBlogRecentArticlesFull.introduction}
					{option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction}{/option:widgetBlogRecentArticlesFull.introduction}
				</div>
			</article>
		{/iteration:widgetBlogRecentArticlesFull}
	</div>
{/option:widgetBlogRecentArticlesFull}