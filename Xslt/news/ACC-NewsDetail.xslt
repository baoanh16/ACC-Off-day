<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="acc-news-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<time>
							<xsl:value-of select='/NewsDetail/CreatedDate'></xsl:value-of>
						</time>
						<h1>
							<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
							<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h1>
						<div class="fullcontent">
							<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
						</div>
						<div class="fb-like" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true"
						 data-share="true">
							<xsl:attribute name='data-href'>
								<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
							</xsl:attribute>
						</div>
					</div>
					<div class="col-md-8 col-lg-4">
						<div class="other-news">
							<h3>Latest news</h3>
							<div class="other-list">
								<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<a class="item">
			<xsl:attribute name='href'>
				<xsl:value-of select='Url'></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div class="news-img">
					<img class="lazyload">
					<xsl:attribute name='data-src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<time>
						<xsl:value-of select='CreatedDate'></xsl:value-of>
					</time>
					<h4>
						<xsl:value-of select='Title'></xsl:value-of>
					</h4>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

	<!--<xsl:template match="NewsAttributes" mode="tabs">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:text>#tab</xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
  <xsl:template match="NewsAttributes" mode="tabcontent">
    <div class="tab-content">
      <xsl:attribute name="id">
        <xsl:text>tab</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
    </div>
  </xsl:template>
  <xsl:template match="NewsImages">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <img width="80" height="71">
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </a>
    </li>
  </xsl:template>-->
</xsl:stylesheet>