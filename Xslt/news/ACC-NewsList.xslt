<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="acc-news-1">
			<div class="container">
				<h1>
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h1>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<div class="col-lg-6">
				<div class="hot-news">
					<a class="box-zoom">
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
					<div class="content">
						<time>
							<xsl:value-of select='CreatedDate'></xsl:value-of>
						</time>
						<h2>
							<a>
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select='Title'></xsl:value-of>
							</a>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h2>
						<a class="view-detail">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							Detail
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping='yes'>
				&lt;div class=&quot;col-lg-6&quot;&gt;&lt;div class=&quot;side-news&quot;&gt;
			</xsl:text>
			<div class="news-item">
				<figure class="box-item">
					<a class="box-img">
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<time>
							<xsl:value-of select='CreatedDate'></xsl:value-of>
						</time>
						<h2>
							<a>
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select='Title'></xsl:value-of>
							</a>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h2>
						<a class="view-detail">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							Detail
						</a>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position()=3">
			<div class="news-item">
				<figure class="box-item">
					<a class="box-img">
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<time>
							<xsl:value-of select='CreatedDate'></xsl:value-of>
						</time>
						<h2>
							<a>
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select='Title'></xsl:value-of>
							</a>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h2>
						<a class="view-detail">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							Detail
						</a>
					</figcaption>
				</figure>
			</div>
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/div&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()>3">
			<div class="col-sm-6 col-lg-3">
				<div class="news-small-item">
					<figure class="box-item">
						<a class="box-img">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<img class="lazyload">
							<xsl:attribute name='data-src'>
								<xsl:value-of select='ImageUrl'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='alt'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
						<figcaption>
							<time>
								<xsl:value-of select='CreatedDate'></xsl:value-of>
							</time>
							<h2>
								<a>
									<xsl:attribute name='href'>
										<xsl:value-of select='Url'></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select='Title'></xsl:value-of>
								</a>
								<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
							</h2>
							<a class="view-detail">
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								Detail
							</a>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>