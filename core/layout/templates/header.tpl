<header id="header" class="fullWidth">
	<div class="inner">
		{* Logo *}
		{option:page1}<h1 id="logo"><a href="/">{$siteTitle}</a></h1>{/option:page1}
		{option:!page1}<p id="logo"><a href="/">{$siteTitle}</a></p>{/option:!page1}

		{* Navigation *}
		<nav id="navigation">
			{$var|getnavigation:'page':0:1}
		</nav>

		{* Top position *}
		{iteration:positionTop}
			{option:positionTop.blockIsHTML}
				{$positionTop.blockContent}
			{/option:positionTop.blockIsHTML}
			{option:!positionTop.blockIsHTML}
				{$positionTop.blockContent}
			{/option:!positionTop.blockIsHTML}
		{/iteration:positionTop}
	</div>
</header>