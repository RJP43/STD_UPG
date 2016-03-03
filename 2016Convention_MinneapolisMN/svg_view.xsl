<?xml version="1.0" encoding="UTF-8"?>

<!--FFDD99-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output indent="yes" method="xml"></xsl:output>
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(200,100)" alignment-baseline = "baseline">
                <circle cx="200" cy="175" r="275" fill="beige"/>
                <xsl:apply-templates select="//sent"/>
            </g>
        </svg>
    </xsl:template>
    <xsl:template match="sent">
        <xsl:variable name="y" select="./@n * 50"></xsl:variable>
        <xsl:variable name="x" select="string-length(.) * 2"></xsl:variable>
        <xsl:choose>

            <xsl:when test=".//w[@id='love'] and .//w[@id='thought']">
<!--          love and thought      -->
                <line stroke-linecap="round" stroke-dasharray="5,15" stroke="#D46A6A" stroke-width="10" x1="0" x2="{$x}" y1="{$y}" y2="{$y}"/>
            </xsl:when>
            <xsl:when test=".//w[@id='death'] and .//w[@id='thought']">
<!--           death and thought     -->
                <line stroke-linecap="round" stroke-dasharray="5,15" stroke="#1E023A" stroke-width="10" x1="0" x2="{$x}" y1="{$y}" y2="{$y}"/>
            </xsl:when>
            
            <xsl:when test=".//w[@id='death'] and .//w[@id='love']">
<!--                rule for death and love together-->
                <line stroke-linecap="round" stroke="#D46A6A" stroke-width="10" x1="0" x2="{$x}" y1="{$y}" y2="{$y}"/>
                <line stroke-linecap="round" stroke="#1E023A" stroke-width="10" x1="0" x2="{$x * .5}" y1="{$y}" y2="{$y}"/>
            </xsl:when>
            <xsl:when test=".//w[@id='thought']">
                <line stroke-linecap="round" stroke-dasharray="5,15" stroke="#689D99" stroke-width="10" x1="0" x2="{$x}" y1="{$y}" y2="{$y}"/>
            </xsl:when>
            <xsl:when test=".//w[@id='love']">
                <line stroke-linecap="round" stroke="#D46A6A" stroke-width="10" x1="0" x2="{$x}" y1="{$y}" y2="{$y}"/>
            </xsl:when>
            <xsl:when test=".//w[@id='death']">
                <line stroke-linecap="round" stroke="#1E023A" stroke-width="10" x1="0" x2="{$x}" y1="{$y}" y2="{$y}"/>
            </xsl:when>
            <xsl:otherwise>
                <line stroke-linecap="round" stroke="#689D99" stroke-width="10" x1="0" x2="{$x}" y1="{$y}" y2="{$y}"/>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
</xsl:stylesheet>