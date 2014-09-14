{include:Core/Layout/Templates/Head.tpl}

<body>
	<div id="container" class="fullWidth">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}

		{* Top wrapper *}
		{include:Core/Layout/Templates/TopWrapper.tpl}

		<div id="main" class="fullWidth narrow">
			<div class="inner twoColumns">
				<div class="column">
					{* Page title *}
					{option:!hideContentTitle}
						<header class="pageTitle">
							<h1>{$page.title}</h1>
						</header>
					{/option:!hideContentTitle}

					{* Main position *}
					{iteration:positionMain}
						{option:positionMain.blockIsHTML}
							{$positionMain.blockContent}
						{/option:positionMain.blockIsHTML}
						{option:!positionMain.blockIsHTML}
							{$positionMain.blockContent}
						{/option:!positionMain.blockIsHTML}
					{/iteration:positionMain}

					<noscript>
						<div class="message notice">
							<h4>{$lblEnableJavascript|ucfirst}</h4>
							<p>{$msgEnableJavascript}</p>
						</div>
					</noscript>
				</div>

				<div class="narrowColumn">
					<nav class="subnavigation">
						{$var|getsubnavigation:'page':{$page.id}:2}
					</nav>

					{* Left position *}
					{iteration:positionLeft}
						{option:positionLeft.blockIsHTML}
							{$positionLeft.blockContent}
						{/option:positionLeft.blockIsHTML}
						{option:!positionLeft.blockIsHTML}
							{$positionLeft.blockContent}
						{/option:!positionLeft.blockIsHTML}
					{/iteration:positionLeft}
				</div>
			</div>
		</div>
	</div>

	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>