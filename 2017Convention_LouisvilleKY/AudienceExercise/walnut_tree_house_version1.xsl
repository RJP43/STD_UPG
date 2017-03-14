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
                <title>Walnut Tree House - Version 1</title>
               <link rel="stylesheet" type="text/css" href="walnut_tree_house_version1.css"/>
            </head>
            <body>
                <h1><xsl:apply-templates select="//title"/></h1>
                <hr/>
                <div id="toc">
                    <h2>Table of Contents</h2>
                    <ul><xsl:apply-templates select="//body//chapterTitle" mode="toc"/></ul>
                </div>
                <hr/>
                <div id="main">
                    <h2>Story</h2>
                    <xsl:apply-templates select="//body"/>
                </div>
            </body>
       </html>
    </xsl:template>
    <xsl:template match="chapterTitle" mode="toc">
        <li><strong><xsl:apply-templates/></strong></li>
    </xsl:template>
    <xsl:template match="//chapterTitle">
        <hr/>
        <h3><xsl:apply-templates/></h3>
    </xsl:template>
    <xsl:template match="//p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="descendant::q">
        <span class="dialogue">"<xsl:apply-templates/>"</span>
    </xsl:template>
</xsl:stylesheet>