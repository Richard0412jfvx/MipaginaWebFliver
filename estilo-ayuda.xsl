<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
    <title>Centro de Ayuda - Fliver</title>
    <link rel="icon" type="image/png" href="Imagenes/logo.png" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&amp;display=swap" rel="stylesheet" />
    <style>
      body {
        background-color: #111;
        color: white;
        font-family: 'Inter', sans-serif;
        margin: 0;
        padding: 0;
      }
      .contenedor {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
      }
      .cabecera {
        text-align: center;
        margin-bottom: 50px;
        padding-bottom: 20px;
        border-bottom: 1px solid #333;
      }
      h1 { font-size: 2.5rem; margin-bottom: 10px; }
      h2 { color: #8c8c8c; font-weight: 400; font-size: 1.2rem; }
      .categoria { margin-bottom: 40px; }
      h3 {
        color: #e11d48; /* Color Fliver */
        font-size: 1.5rem;
        border-left: 4px solid #e11d48;
        padding-left: 10px;
        margin-bottom: 20px;
      }
      .faq {
        background-color: rgba(255,255,255,0.05);
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 15px;
      }
      .pregunta { font-weight: bold; font-size: 1.1rem; margin-bottom: 10px; }
      .respuesta { color: #ccc; line-height: 1.5; margin: 0; }
      .btn-volver {
        display: inline-block;
        margin-top: 30px;
        color: white;
        text-decoration: none;
        background-color: #333;
        padding: 10px 20px;
        border-radius: 6px;
        transition: background 0.3s;
      }
      .btn-volver:hover { background-color: #555; }
    </style>
  </head>
  <body>
    <div class="contenedor">
      <div class="cabecera">
        <img src="Imagenes/logo.png" width="60" alt="Logo Fliver"/>
        <h1><xsl:value-of select="centroAyuda/encabezado/titulo"/></h1>
        <h2><xsl:value-of select="centroAyuda/encabezado/subtitulo"/></h2>
      </div>

      <xsl:for-each select="centroAyuda/categoria">
        <div class="categoria">
          <h3><xsl:value-of select="@nombre"/></h3>
          
          <xsl:for-each select="faq">
            <div class="faq">
              <div class="pregunta"><xsl:value-of select="pregunta"/></div>
              <p class="respuesta"><xsl:value-of select="respuesta"/></p>
            </div>
          </xsl:for-each>

        </div>
      </xsl:for-each>

      <a href="index.html" class="btn-volver">← Volver a Fliver</a>
    </div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>