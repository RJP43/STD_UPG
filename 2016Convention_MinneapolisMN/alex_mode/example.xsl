<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:template match="/">
        <html>
            <head>
                <title>At The Moment</title>
                <link rel="stylesheet" type="text/css" href="example.css"></link>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="meta">
        <h1>
            <xsl:apply-templates select="title"/>
        </h1>
        <h2>
            <xsl:apply-templates select="author"/>
        </h2>
    </xsl:template>
    <xsl:template match="body">

        <xsl:apply-templates select="stanza"/>

    </xsl:template>
    <xsl:template match="stanza">
        <p>
            <xsl:apply-templates/>
            <xsl:apply-templates select="line"/>
        </p>
    </xsl:template>
    <!--<xsl:template match="line">
        <xsl:if test="not(./position() = last())">
            <br/>
        </xsl:if>
    </xsl:template>-->

    <xsl:template match="line">
        <xsl:if test="parent::sent">
            <br/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="anth">
        <span class="anth">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>
