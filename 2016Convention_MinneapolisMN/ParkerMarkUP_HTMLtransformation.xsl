<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head><title>HTML Transformation of Parker's Markup of "At the Moment"</title>
                <link rel="stylesheet" type="text/css" href="parkerMarkup.css"/>
            </head>
            <body>
                <h1><xsl:apply-templates select="//title"/></h1>
                <h2><xsl:apply-templates select="//byline"/></h2>
                <h3><xsl:text>Published by: </xsl:text><xsl:apply-templates select="//pubSource"/></h3>
                <xsl:apply-templates select="//body"/>
            </body>
        </html>        
    </xsl:template>
    <xsl:template match="lb">
        <xsl:text> (line: </xsl:text><xsl:value-of select="count(preceding::lb) + 1"/><xsl:text>)</xsl:text><br/><xsl:apply-templates/>
    </xsl:template>
   <!-- <xsl:template match="stanzaEnd">
        <br/>
        <hr class="stanzaEnd"/>
        <br/>
    </xsl:template>-->
    <xsl:template match="stanzaEnd">
        <br/>
    </xsl:template>
    <xsl:template match="sent">
        <xsl:text>  |   </xsl:text><xsl:apply-templates/><xsl:text>  |   </xsl:text>
    </xsl:template>
    <xsl:template match="w[@id='love']">
        <span class="love"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="w[@id='death']">
        <span class="death"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person">
        <span class="person"><xsl:apply-templates/></span>
    </xsl:template>
</xsl:stylesheet>