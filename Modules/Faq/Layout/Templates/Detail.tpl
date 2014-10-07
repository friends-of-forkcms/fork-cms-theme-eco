{*
	variables that are available:
	- {$item}: contains data about the question
	- {$related}: the related items
*}
<div id="blogDetail">
	<article class="article">
		<header class="hd">
			<h1>{$item.question}</h1>
			<ul class="meta">
				<li>
					{* In the category *}
					{$lblIn|ucfirst} {$lblThe} {$lblCategory}
				</li>
				<li class="icon categoryIcon">
					{* Category *}
					<a href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a>
				</li>
			</ul>
		</header>
		<div class="bd content">
			{$item.answer}
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
		</footer>
	</article>

	{option:inSameCategory}
		<section class="blogRelatedItems">
			<header class="hd">
				<h2>{$msgQuestionsInSameCategory|ucfirst}</h2>
			</header>
			<div class="bd content">
				<ul>
					{iteration:inSameCategory}
						<li><a href="{$inSameCategory.full_url}" title="{$inSameCategory.question}">{$inSameCategory.question}</a></li>
					{/iteration:inSameCategory}
				</ul>
			</div>
		</section>
	{/option:inSameCategory}

	{option:related}
		<section class="blogRelatedItems">
			<header class="hd">
				<h2>{$msgRelatedQuestions|ucfirst}</h2>
			</header>
			<div class="bd content">
				<ul>
					{iteration:related}
						<li><a href="{$related.full_url}" title="{$related.question}">{$related.question}</a></li>
					{/iteration:related}
				</ul>
			</div>
		</section>
	{/option:related}

	{option:settings.allow_feedback}
		<section id="faqFeedbackForm" class="commentForm">
			<header class="hd">
				<h2 id="{$actFeedback}">{$msgFeedback|ucfirst}</h2>
			</header>
			<div class="bd">
				{option:success}<div class="message success"><p>{$msgFeedbackSuccess}</p></div>{/option:success}
				{option:spam}<div class="message error"><p>{$errFeedbackSpam}</p></div>{/option:spam}

				{form:feedback}
					{$hidQuestionId}
					<div class="inputList">
						<ul>
							{iteration:useful}
								<li>
									{$useful.rbtUseful}
									<label for="{$useful.id}">{$useful.label|ucfirst}</label>
								</li>
							{/iteration:useful}
						</ul>
					</div>

					<div id="feedbackNoInfo"{option:hideFeedbackNoInfo} style="display: none;"{/option:hideFeedbackNoInfo}>
						<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
							<label for="message">{$msgHowToImprove|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtMessage} {$txtMessageError}
						</p>
						<p>
							<input class="inputSubmit" type="submit" name="comment" value="{$lblSend|ucfirst}" />
						</p>
					</div>
				{/form:feedback}
			</div>
		</section>
	{/option:settings.allow_feedback}

	<p><a href="{$var|geturlforblock:'Faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>
</div>
