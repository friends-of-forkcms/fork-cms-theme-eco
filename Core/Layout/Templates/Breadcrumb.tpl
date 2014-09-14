<nav id="breadcrumb">
	<ul>
		<li class="firstChild">{$lblYouAreHere|ucfirst}:</li>
		{iteration:breadcrumb}
			<li{option:breadcrumb.last} class="selected"{/option:breadcrumb.last}>
			{option:breadcrumb.url}<a href="{$breadcrumb.url}" title="{$breadcrumb.title}">{/option:breadcrumb.url}{$breadcrumb.title}{option:breadcrumb.url}</a>{/option:breadcrumb.url}
			</li>
		{/iteration:breadcrumb}
	</ul>
</nav>