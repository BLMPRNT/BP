<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Sitemap</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #E7D4E7;
                        color: #094610;
                    }
                    h1 {
                        color: #9E1A50;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th {
                        background-color: #D06FBC;
                        color: white;
                        padding: 10px;
                    }
                    td {
                        border: 1px solid #A8B8A8;
                        padding: 10px;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Sitemap</h1>
                <table>
                    <tr>
                        <th>Location</th>
                        <th>Last Modified</th>
                        <th>Change Frequency</th>
                        <th>Priority</th>
                    </tr>
                    <xsl:for-each select="urlset/url">
                        <tr>
                            <td><xsl:value-of select="loc"/></td>
                            <td><xsl:value-of select="lastmod"/></td>
                            <td><xsl:value-of select="changefreq"/></td>
                            <td><xsl:value-of select="priority"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
