{*
	variables that are available:
	- {$item}: contains data about the post
	- {$comments}: contains an array with the comments for the post, each element contains data about the comment.
	- {$commentsCount}: contains a variable with the number of comments for this blog post.
	- {$navigation}: contains an array with data for previous and next post
*}
<div id="blogDetail">
	<article class="article">
		<header class="hd">
			<h1>{$item.title}</h1>
			<ul class="meta">
				<li>
					{* Written by *}
					{$msgWrittenBy|ucfirst|sprintf:{$item.user_id|usersetting:'nickname'}}

					{* Written on *}
					{$lblOn} {$item.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}

					{* In the category *}
					{$lblIn} {$lblThe} {$lblCategory}
				</li>
				<li class="icon categoryIcon">
					{* Category *}
					<a href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a>.
				</li>
				<li class="icon commentsIcon">
					{* Comments *}
					{option:!comments}<a href="{$item.full_url}#{$actComment}">{$msgBlogNoComments|ucfirst}</a>{/option:!comments}
					{option:comments}
						{option:blogCommentsMultiple}
							<a href="{$item.full_url}#{$actComments}">
								{$msgBlogNumberOfComments|sprintf:{$commentsCount}}
							</a>
						{/option:blogCommentsMultiple}
						{option:!blogCommentsMultiple}
							<a href="{$item.full_url}#{$actComments}">
								{$msgBlogOneComment}
							</a>
						{/option:!blogCommentsMultiple}
					{/option:comments}
				</li>
			</ul>
		</header>
		<div class="bd content">
			{option:item.image}
				<div class="imageHolder">
					<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$item.image}" alt="{$item.title}" />
				</div>
			{/option:item.image}
			{$item.text}
		</div>
		<footer class="ft">
			{* Tags *}
			{option:item.tags}
				<ul class="tags">
					<li class="firstChild">{$lblTags}</li>
					{iteration:item.tags}
						<li>
							<a href="{$item.tags.full_url}" rel="tag" title="{$item.tags.name}">{$item.tags.name}</a>
						</li>
					{/iteration:item.tags}
				</ul>
			{/option:item.tags}

			<p class="footerNavigation">
				{option:navigation.previous}
					<a href="{$navigation.previous.url}" class="previousArticle" rel="prev">{$lblPreviousArticle|ucfirst}</a>
				{/option:navigation.previous}
				{option:navigation.next}
					<a href="{$navigation.next.url}" class="nextArticle" rel="next">{$lblNextArticle|ucfirst}</a>
				{/option:navigation.next}
			</p>
		</footer>
	</article>

	{option:comments}
		<section id="blogComments" class="comments">
			<header class="hd">
				<h2 id="{$actComments}">{$lblComments|ucfirst}</h2>
			</header>
			<div class="bd content">
				{iteration:comments}
					{* Do not alter the id! It is used as an anchor *}
					<div id="comment-{$comments.id}" class="comment">
						<div class="imageHolder">
							{option:comments.website}<a href="{$comments.website}">{/option:comments.website}
								<img src="{$FRONTEND_CORE_URL}/layout/images/default_author_avatar.gif" width="48" height="48" alt="{$comments.author}" class="replaceWithGravatar" data-gravatar-id="{$comments.gravatar_id}" />
							{option:comments.website}</a>{/option:comments.website}
						</div>
						<div class="commentContent">
							<p class="author">
								{option:comments.website}<a href="{$comments.website}">{/option:comments.website}{$comments.author}{option:comments.website}</a>{/option:comments.website}
								{$lblWrote}
								{$comments.created_on|timeago}
							</p>
							{$comments.text|cleanupplaintext}
						</div>
					</div>
				{/iteration:comments}
			</div>

		</section>
	{/option:comments}

	{option:item.allow_comments}
		<section id="blogCommentForm" class="commentForm">
			<header class="hd">
				<h2 id="{$actComment}">{$msgComment|ucfirst}</h2>
			</header>

			{option:commentIsInModeration}<div class="message warning"><p>{$msgBlogCommentInModeration}</p></div>{/option:commentIsInModeration}
			{option:commentIsSpam}<div class="message error"><p>{$msgBlogCommentIsSpam}</p></div>{/option:commentIsSpam}
			{option:commentIsAdded}<div class="message success"><p>{$msgBlogCommentIsAdded}</p></div>{/option:commentIsAdded}

			{form:commentsForm}
				<p class="bigInput{option:txtAuthorError} errorArea{/option:txtAuthorError}">
					<label for="author">{$lblName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtAuthor} {$txtAuthorError}
				</p>
				<p class="bigInput{option:txtEmailError} errorArea{/option:txtEmailError}">
					<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtEmail} {$txtEmailError}
				</p>
				<p class="bigInput{option:txtWebsiteError} errorArea{/option:txtWebsiteError}">
					<label for="website">{$lblWebsite|ucfirst}</label>
					{$txtWebsite} {$txtWebsiteError}
				</p>
				<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
					<label for="message">{$lblMessage|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtMessage} {$txtMessageError}
				</p>
				<p>
					<input class="inputSubmit" type="submit" name="comment" value="{$msgComment|ucfirst}" />
				</p>
			{/form:commentsForm}
		</section>
	{/option:item.allow_comments}
</div>