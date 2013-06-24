{*
	variables that are available:
	- {$widgetBlogRecentArticlesList}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesList}
	<aside class="widget blogRecentArticlesWidget">
		<header class="hd">
			<h3>{$lblRecentArticles|ucfirst}</h3>
		</header>
		<div class="bd">
			<ul>
				{iteration:widgetBlogRecentArticlesList}
					<li{cycle:'':' class="even"'}>
						<p class="title"><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></p>
						<ul class="meta">
							<li>{$widgetBlogRecentArticlesList.publish_on|date:'d M Y':{$LANGUAGE}}</li>
							<li class="icon commentsIcon">{$widgetBlogRecentArticlesList.comments_count} {$lblComments}</li>
							<li class="icon categoryIcon">{$widgetBlogRecentArticlesList.category_title}</li>
						</ul>
					</li>
				{/iteration:widgetBlogRecentArticlesList}
			</ul>
		</div>
		<footer class="ft">
			<ul class="meta">
				<li class="icon archiveIcon">
					<a href="{$var|geturlforblock:'blog'}">{$lblBlogArchive|ucfirst}</a>
				</li>
				<li class="icon rssIcon">
					<a id="RSSfeed" href="{$var|geturlforblock:'blog':'rss'}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
				</li>
			</ul>
		</footer>
	</aside>
{/option:widgetBlogRecentArticlesList}