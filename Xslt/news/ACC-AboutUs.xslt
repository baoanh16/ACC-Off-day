<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position() = 1 ">
			<section class="acc-about-1" id="acc-about-1">
				<div class="container">
					<div class="row no-gutters">
						<xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="acc-about-2">
				<div class="container">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>
						</div>
					</div>
					<div class="history-timeline">
						<div class="swiper-history-pagination"></div>
						<div class="swiper-navigation">
							<div class="swiper-prev"></div>
							<div class="swiper-next"></div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section class="acc-about-3" id="acc-about-2">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select='News' mode="ZoneNews3"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<!-- <xsl:if test="position() = 4 ">
			<section class="acc-about-4" id="acc-about-3">
				<div class="container">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<xsl:apply-templates select='News' mode="ZoneNews4"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 5 ">
			<section class="acc-about-5">
				<div class="container">
					<div class="relationship-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select='News' mode="ZoneNews5"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-navigation">
							<div class="swiper-prev"></div>
							<div class="swiper-next"></div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 6 ">
			<section class="acc-about-6" id="acc-about-4">
				<div class="container">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<div class="tab-list">
						<ul>
							<xsl:apply-templates select='News' mode="ZoneNews6Tab"></xsl:apply-templates>
						</ul>
					</div>
					<div class="panel-list">
						<xsl:apply-templates select='News' mode="ZoneNews6Content"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 7 ">
			<section class="acc-about-7" id="acc-about-5">
				<div class="container">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
					</h2>
					<p>
						<xsl:value-of select='Description'></xsl:value-of>
					</p>
					<div class="row list-quality">
						<xsl:apply-templates select='News' mode="ZoneNews7"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 8 ">
			<xsl:text disable-output-escaping='yes'>
				&lt;section class=&quot;acc-about-8&quot;&gt;&lt;div class=&quot;container&quot;&gt;
			</xsl:text>
			<xsl:apply-templates select='News' mode="ZoneNews8"></xsl:apply-templates>
		</xsl:if>
		<xsl:if test="position() = 9 ">
			<xsl:apply-templates select='News' mode="ZoneNews9"></xsl:apply-templates>
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/section&gt;
			</xsl:text>
		</xsl:if> -->
	</xsl:template>

	<xsl:template match='News' mode="ZoneNews1">
		<xsl:if test="position() = 1 ">
			<div class="col-lg-6">
				<div class="intro-text">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h2>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="intro-img">
					<img class="lazyload">
					<xsl:attribute name='data-src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode="ZoneNews2">
		<div class="swiper-slide">
			<div class="history-item">
				<div class="img">
					<img class="lazyload">
					<xsl:attribute name='data-src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="content">
					<h2>
						<xsl:attribute name='data-year'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h2>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode="ZoneNews3">
		<xsl:if test="position() = 1 ">
			<div class="col-lg-4">
				<div class="img">
					<img class="lazyload">
					<xsl:attribute name='data-src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</div>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<div class="col-lg-4">
				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</h2>
				<h3>
					<xsl:value-of select='SubTitle'></xsl:value-of>
				</h3>
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
			</div>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<div class="col-lg-4">
				<h3>
					<xsl:value-of select='Title'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</h3>
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				<div class="img-2">
					<img class="lazyload">
					<xsl:attribute name='data-src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode="ZoneNews4">
		<xsl:if test="position() = 1 ">
			<div class="img">
				<img class="lazyload">
				<xsl:attribute name='data-src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
				<div class="col-lg-6">
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<!-- <xsl:template match='News' mode="ZoneNews5">
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
	<xsl:template match='News' mode="ZoneNews6Tab">
		<li>
			<xsl:if test="position()=1">
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
	<xsl:template match='News' mode="ZoneNews6Content">
		<div class="tab-container">
			<xsl:if test="position()=1">
				<xsl:attribute name='class'>
					<xsl:text>tab-container show</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='data-tab-index'>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<div class="row">
				<div class="col-lg-6">
					<h3>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h3>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
				<div class="col-lg-6">
					<div class="img">
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode="ZoneNews7">
		<div class="col-sm-6 col-lg-3">
			<div class="item">
				<div class="img">
					<img class="lazyload">
					<xsl:attribute name='data-src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="caption">
					<span>
						<xsl:value-of select='Title'></xsl:value-of>
					</span>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode="ZoneNews8">
		<xsl:if test="position()=1">
			<div class="row" id="acc-about-6">
				<div class="col-lg-6">
					<div class="img">
						<img class="lazyload">
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="content">
						<h2>
							<xsl:value-of select='Title'></xsl:value-of>
						</h2>
						<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode="ZoneNews9">
		<xsl:if test="position()=1">
			<div class="row" id="acc-about-7">
				<div class="col-lg-6">
					<div class="img">
						<img class="lazyload">
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="content">
						<h2>
							<xsl:value-of select='Title'></xsl:value-of>
						</h2>
						<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template> -->
</xsl:stylesheet>