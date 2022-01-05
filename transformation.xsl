<?xml version="1.0" encoding="UTF-8" ?>
    <xsl:stylesheet version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format"
                                  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" indent="yes" />

    <xsl:template match="reservoirInfo">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master page-height="297mm" page-width="210mm"
                                       margin="5mm 25mm 5mm 25mm" master-name="PageMaster">
                    <fo:region-body margin="20mm 0mm 20mm 0mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-name="PageMaster">
                <fo:flow flow-name="xsl-region-body" >
                    <fo:block>
                        <xsl:apply-templates select="./reservoirs/reservoir"/>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template match="name">
        <fo:block>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>

    <xsl:template match="depth">
        <fo:block>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>

    <xsl:template match="damHeight">
        <fo:block>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>

    <xsl:template match="length">
        <fo:block>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>

    <xsl:template match="coordinates">
        <fo:block>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>

    <xsl:template match="area">
        <fo:block>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>

    <xsl:template match="water_capacity">
        <fo:block>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>
</xsl:stylesheet>