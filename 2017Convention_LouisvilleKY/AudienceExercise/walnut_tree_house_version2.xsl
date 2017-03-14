<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Walnut Tree House - Version 2</title>
                <link rel="stylesheet" type="text/css" href="walnut_tree_house_version2.css"/>
            </head>
            <body>
                <h1>Walnut Tree House</h1>
                <div><xsl:apply-templates select="//body"/></div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//chapterTitle">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    <xsl:template match="//p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="//persName">
        <strong><span class="persName"><xsl:apply-templates/></span></strong>
    </xsl:template>
</xsl:stylesheet>