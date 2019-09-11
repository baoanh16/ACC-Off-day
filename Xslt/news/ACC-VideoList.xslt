<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h1>
				<xsl:value-of select='/NewsList/ZoneTitle'></xsl:value-of>
			</h1>
			<div class="row ajaxresponsewrap">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
		<xsl:if test="/NewsList/NextPageUrl!=''">
			<div class="btn-viewmore">
				<a class="ajaxpagerlink">
					<xsl:attribute name="href">
						<xsl:value-of select="/NewsList/NextPageUrl" />
					</xsl:attribute>
					View more
				</a>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-md-6 col-lg-4">
			<div class="video-item">
				<div class="video-img">
					<div class="video-wrapper">
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='BriefContent'></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name='src'>
								<xsl:value-of select='ImageUrl'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='alt'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="play-button"><img src="/Data/Sites/1/skins/default/img/play-button.png" alt="" /></div>
				</div>
				<time>
					<xsl:value-of select='CreatedDate'></xsl:value-of>
				</time>
				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
				</h2>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>