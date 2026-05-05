<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
<head>
    <title>Student Marks Table</title>
</head>
<body>

<h2>Student Marks Details</h2>

<table border="1" cellpadding="5" cellspacing="0">
    <tr bgcolor="#cccccc">
        <th>Name</th>
        <th>Roll No</th>
        <th>Maths</th>
        <th>Science</th>
        <th>English</th>
        <th>Total</th>
    </tr>

    <xsl:for-each select="students/student">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="rollno"/></td>
            <td><xsl:value-of select="marks/maths"/></td>
            <td><xsl:value-of select="marks/science"/></td>
            <td><xsl:value-of select="marks/english"/></td>
            <td>
                <xsl:value-of select="marks/maths + marks/science + marks/english"/>
            </td>
        </tr>
    </xsl:for-each>

</table>

</body>
</html>
</xsl:template>

</xsl:stylesheet>
