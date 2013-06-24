<footer id="footer" class="fullWidth">
	<div class="inner">
		<ul class="floatLeft">
			<li>&copy; {$now|date:'Y'} {$siteTitle}</li>
{*
			<li class="icon addressIcon">Street 01 &middot; 1000 City</li>
			<li class="icon phoneIcon">01/234 56 78</li>
*}
		</ul>
		<ul class="floatRight">
			{iteration:footerLinks}
				<li class="{option:page2}icon directionsIcon{/option:page2}{option:footerLinks.selected} selected{/option:footerLinks.selected}">
					<a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
						{$footerLinks.navigation_title}
					</a>
				</li>
			{/iteration:footerLinks}
			<li><a href="http://www.duoh.be" title="Duoh">Duoh</a></li>
			<li><a href="http://www.fork-cms.com" title="Fork CMS">Fork CMS</a></li>
		</ul>
		<span class="illustration">&nbsp;</span>
	</div>
</footer>