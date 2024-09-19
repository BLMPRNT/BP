<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Sitemap</title>
                <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
                <style>
                    body { font-family: 'Poppins', sans-serif; background-color: #E7D4E7; margin: 20px; }
                    h1 { color: #D06FBC; }
                    table { width: 100%; border-collapse: collapse; }
                    th { background-color: #094610; color: white; padding: 10px; }
                    td { background-color: white; padding: 10px; border: 1px solid #A8B8A8; }
                    tr:nth-child(even) { background-color: #F9F9F9; }
                    tr:hover { background-color: #D06FBC; color: white; }
                </style>
            </head>
            <body>
                <h1>Sitemap</h1>
                <table>
                    <tr>
                        <th>URL</th>
                        <th>Last Modified</th>
                        <th>Change Frequency</th>
                        <th>Priority</th>
                    </tr>
                    <xsl:apply-templates select="urlset/url"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="url">
        <tr>
            <td><xsl:value-of select="loc"/></td>
            <td><xsl:value-of select="lastmod"/></td>
            <td><xsl:value-of select="changefreq"/></td>
            <td><xsl:value-of select="priority"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
