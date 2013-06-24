{*
	variables that are available:
	- {$widgetFaqMostRead}: contains an array with all posts, each element contains data about the post
*}

{option:widgetFaqMostRead}
	<div class="widget blogRecentArticlesWidget">
		<header class="hd">
			<h3>{$lblMostReadQuestions|ucfirst}</h3>
		</header>
		<div class="bd content">
			<ul>
				{iteration:widgetFaqMostRead}
					<li{cycle:'':' class="even"'}>
						<p class="title">
							<a href="{$widgetFaqMostRead.full_url}" title="{$widgetFaqMostRead.question}">{$widgetFaqMostRead.question}</a>
						</p>
						<ul class="meta">
							<li>{$widgetFaqMostRead.publish_on|date:'d M Y':{$LANGUAGE}}</li>
							<li class="icon categoryIcon">{$widgetFaqMostRead.category_title}</li>
						</ul>
					</li>
				{/iteration:widgetFaqMostRead}
			</ul>
		</div>
	</div>
{/option:widgetFaqMostRead}