<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match='Zone'>
		<xsl:if test='position() = 4'>
			<section class="acc-about-4" id="acc-about-3">
				<div class="container">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<div class="tabs">
						<ul>
							<xsl:apply-templates select='Zone' mode="Tab"></xsl:apply-templates>
						</ul>
					</div>
					<div class="tabs-container">
						<xsl:apply-templates select='Zone' mode="News"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match='Zone' mode="Tab">
		<li>
			<a>
				<xsl:attribute name='href'>
					<xsl:text>#tab-parent-</xsl:text>
					<xsl:value-of select='position()'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='title'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select='Title'></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match='Zone' mode="News">

		<xsl:choose>
			<xsl:when test="position() = 1">
				<div id="tab-parent-1">
					<xsl:apply-templates select='News' mode='ZoneNews-1'></xsl:apply-templates>
				</div>
			</xsl:when>
			<xsl:when test="position() = 2">
				<div id="tab-parent-2">
					<section class="acc-about-6">
						<h2>
							<xsl:value-of select='Title'></xsl:value-of>
						</h2>
						<div class="tab-list">
							<ul>
								<xsl:apply-templates select='News' mode='ZoneNews-2-Tab'></xsl:apply-templates>
							</ul>
						</div>
						<div class="panel-list">
							<xsl:apply-templates select='News' mode='ZoneNews-2-Content'></xsl:apply-templates>
						</div>
					</section>
				</div>
			</xsl:when>
			<xsl:when test="position() = 3">
				<div id="tab-parent-3">
					<section class="acc-about-7">
						<div class="container">
							<xsl:value-of select='Description' disable-output-escaping='yes'></xsl:value-of>
							<div class="row list-quality">
								<xsl:apply-templates select='News' mode='ZoneNews-3'></xsl:apply-templates>
							</div>
						</div>
					</section>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>




	<xsl:template match='News' mode='ZoneNews-1'>
		<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
		<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
		<section class="acc-about-5">
			<div class="container">
				<div class="relationship-slider">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select='NewsImages' mode='NewsImages-1'></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-navigation">
						<div class="swiper-prev"></div>
						<div class="swiper-next"></div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match='News' mode='ZoneNews-2-Tab'>
		<li>
			<xsl:if test='position()=1'>
				<xsl:attribute name='class'>
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='data-tab-index'>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select='Title'></xsl:value-of>
		</li>
	</xsl:template>

	<xsl:template match='News' mode='ZoneNews-2-Content'>
		<div class="tab-container">
			<xsl:if test='position()=1'>
				<xsl:attribute name='class'>
					<xsl:text>tab-container show</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='data-tab-index'>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<div class="row">
				<div class="col-lg-6">
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</div>
				<div class="col-lg-6">
					<div class="img">
						<xsl:choose>
							<xsl:when test="BriefContent != ''">
								<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
							</xsl:when>
							<xsl:otherwise>
								<img>
								<xsl:attribute name='src'>
									<xsl:value-of select='ImageUrl'></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name='alt'>
									<xsl:value-of select='Title'></xsl:value-of>
								</xsl:attribute>
								</img>
							</xsl:otherwise>
						</xsl:choose>

					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match='News' mode='ZoneNews-3'>
		<div class="col-12">
			<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
			<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
		</div>
		<!-- <div class="col-sm-6 col-lg-3">
			<div class="item">
				<div class="img">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="caption">
					<span>
						<xsl:value-of select='Title' disable-output-escaping='yes'></xsl:value-of>
					</span>
				</div>
			</div>
		</div> -->
	</xsl:template>



	<xsl:template match='NewsImages' mode='NewsImages-1'>
		<div class="swiper-slide">
			<div class="item">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
