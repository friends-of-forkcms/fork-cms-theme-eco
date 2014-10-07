{include:Core/Layout/Templates/Head.tpl}

<body id="home">
	<div id="container" class="fullWidth">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}

		{* Top wrapper *}
		{include:Core/Layout/Templates/TopWrapper.tpl}

		<div id="main" class="fullWidth">
			<div class="inner twoColumns">
				<div class="eyecatcher">
					<div class="bigImageHolder">
						<img src="{$THEME_URL}/Core/Layout/images/home_placeholder.jpg" alt="Placeholder" />
					</div>

					<div class="content">
						{* Main position *}
						{iteration:positionMain}
							{option:positionMain.blockIsHTML}
								{$positionMain.blockContent}
							{/option:positionMain.blockIsHTML}
							{option:!positionMain.blockIsHTML}
								{$positionMain.blockContent}
							{/option:!positionMain.blockIsHTML}
						{/iteration:positionMain}
					</div>
				</div>

				<div class="columns">
					<div class="column">
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
					<div class="column">
						{* Middle position *}
						{iteration:positionMiddle}
							{option:positionMiddle.blockIsHTML}
								{$positionMiddle.blockContent}
							{/option:positionMiddle.blockIsHTML}
							{option:!positionMiddle.blockIsHTML}
								{$positionMiddle.blockContent}
							{/option:!positionMiddle.blockIsHTML}
						{/iteration:positionMiddle}
					</div>
					<div class="column lastColumn">
						{* Right position *}
						{iteration:positionRight}
							{option:positionRight.blockIsHTML}
								{$positionRight.blockContent}
							{/option:positionRight.blockIsHTML}
							{option:!positionRight.blockIsHTML}
								{$positionRight.blockContent}
							{/option:!positionRight.blockIsHTML}
						{/iteration:positionRight}
					</div>
				</div>

				<noscript>
					<div class="message notice">
						<h4>{$lblEnableJavascript|ucfirst}</h4>
						<p>{$msgEnableJavascript}</p>
					</div>
				</noscript>
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