<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:t="http://www.tei-c.org/ns/1.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>
   <xsl:template match="/">
      <html>
         <head>
            <title><xsl:value-of select="t:TEI/t:teiHeader/t:fileDesc/t:titleStmt/t:title"/></title>
            <link href="style.css" rel="stylesheet" type="text/css"/>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
            <script src="script.js"></script>
         </head>

         <body>
         <header><img src = "img/title1.png" id="tit_img"/></header>
            <div class="navbar">
            <div class="left-links">
               <a href="#">Home</a>
               <a href="#legenda">Legenda</a>
               <div class="dropdown">
               <button class="dropbtn">Pagine</button>
               <div class="dropdown-content">
                  <a href="#page1">Pagina 168</a>
                  <a href="#page2">Pagina 169</a>
                  <a href="#page3">Pagina 170</a>
                  <a href="#page4">Pagina 171</a>
                  <a href="#page5">Pagina 172</a>
               </div>
               </div>
               <a href= "#approfondimenti">Approfondimenti</a>
            </div>
            <div class="right-links">
               <a href="#about">About</a>
            </div>
         </div>

          <div class="container" name="intro">
               <div class="info-box">
                  <h2>INFORMAZIONI</h2>
                  <p><h5>NOME PROGETTO:</h5> <b><xsl:value-of select="//t:titleStmt/t:title"/></b><br/>
                  <h5>PARTE DELLA SERIE:</h5><b><xsl:value-of select="//t:seriesStmt/t:title"/>.</b><br />
                  <b><xsl:value-of select="//t:editionStmt//t:edition"/>.</b><br />
                  <b><xsl:value-of select="//t:editionStmt//t:respStmt"/>.</b><br />
                  <b><xsl:value-of select="//t:publicationStmt/t:authority"/>, <xsl:value-of select="//t:publicationStmt/t:date"/>.<br /><xsl:value-of select="//t:publicationStmt/t:availability"/></b>.</p>
               </div>
               
               <div class="info-box">
                  <h2>INFO E FONTE</h2>
                  <p><b>Archivio: <xsl:value-of select="//t:sourceDesc//t:title"/>.</b><br />
                  <b>Autore: <xsl:value-of select="//t:sourceDesc//t:author"/>.</b><br />
                  <b>Data realizzazione dell'opera: <xsl:value-of select="//t:sourceDesc/t:bibl/t:date[@xml:id = 'scritti']"/>.</b><br />
                  <b>Lingua: <xsl:value-of select="//t:profileDesc//t:langUsage"/></b><br />
                  <b><xsl:value-of select="//t:sourceDesc//t:distributor"/>.</b><br />
                  <b><xsl:value-of select="//t:sourceDesc//t:publace"/></b><br />
                  <b><xsl:value-of select="//t:sourceDesc//t:pubPlace"/>, <xsl:value-of select="//t:sourceDesc//t:date[@xml:id = 'milano']"/></b><br />
                  <b><xsl:value-of select="//t:sourceDesc//t:availability"/></b></p>
               </div>
               
               <div class="info-box">
                  <h2>SUPPORTO</h2>
                  <p><b><xsl:value-of select="//t:sourceDesc/t:msDesc//t:msIdentifier/t:institution"/></b><br />
                  <b><xsl:value-of select="//t:sourceDesc/t:msDesc/t:msIdentifier/t:repository"/>.</b><br />
                  <b><xsl:value-of select="//t:sourceDesc/t:msDesc/t:physDesc/t:objectDesc/t:supportDesc"/>.</b><br />
                  <b><xsl:value-of select="//t:sourceDesc/t:msDesc/t:physDesc/t:objectDesc/t:layoutDesc"/>.</b></p>
               </div>
            </div>


            <div>
               <!--<h2>Chi era Emanuele Artom?</h2>-->
               <div class="about">
                  <div class="image-container">
                     <img src="img/emanuele.jpg" alt="Emanuele Artom" />
                  </div>
               <div></div>
               <div class="text-container-info">
                  <h2>CHI ERA EMANUELE ARTOM:</h2>
                  <p> Emanuele Artom è stato un partigiano e storico italiano di origine ebraica, combattente della resistenza. <br />
                  Nasce in una facoltosa famiglia di Torino e grazie ad <a href="https://it.wikipedia.org/wiki/Augusto_Monti">Augusto Monti</a> si avvicina alla cultura classica e alla filosofia. <br />
                  Nel 1937 si laureò presso l'Università degli Studi di Torino in Lettere.
                  Artom si avvicinò all'antifascismo e all'attivismo politico alla fine degli anni Trenta e nel 1943 aderisce al <a href="https://it.wikipedia.org/wiki/Partito_d%27Azione">P.d.A</a>.<br />
                  Nell'8 settembre del 1943 aderisce ai partigiani con il nome di copertura di Eugenio Ansaldi e per un primo periodo agì in qualità di delegato azionista nella <a href="https://it.wikipedia.org/wiki/Brigate_Garibaldi">formazione garibaldina</a> comandata da <a href="https://it.wikipedia.org/wiki/Pompeo_Colajanni">Pompeo Colajanni</a>.<br />
                  Nonostante il fisico non adatto alle fatiche dovute alla guerra in montagna, Emanuele Artom svolge i suoi incarichi in maniera instancabile, con devozione e rispetto per i suoi ideali democratici.<br />
                  Il 21 marzo 1944 i tedeschi cominciarono il grande rastrellamento contro i partigiani della zona dove Artom operava ed il giorno seguente una pattuglia delle <a href="https://it.wikipedia.org/wiki/29._Waffen-Grenadier-Division_der_SS_(italienische_Nr._1)">SS italiane</a> catturò lui ed un suo fedele compagno.
                  Artom essendo di origini ebraiche fu torturato, umiliato e sezviziato.<br />
                  Fu condotto alle Carceri Nuove di Torino ed una settimana dopo, il 7 aprile, morì per le torture subite.</p>
               </div>
            </div>
         </div>
         <br />

         <div class="box-shadow" id="legenda">
            <img src="img/legenda.png"/>
         </div>

         <!--PAGINA 168-->
         <h2 class="nPag">PAGINA 168</h2>
         <div class="container-info" id="page1">
            <div class="pages">
                  <xsl:element name="img">
                     <xsl:attribute name="src">
                        <xsl:value-of select="//t:graphic[@xml:id='p168']/@url"/>
                     </xsl:attribute>
                  </xsl:element>
            </div>
          
         <div class="info-text">
            <button class="custom-button" id="button-168" onclick="mostraNascondi('text-168', 'button-168', 'X-168', 'add-168', 'corr-168', 'abbr-168')">Mostra testo</button>
            <button class="custom-button highlight-button" id="X-168" style="display: none;" onclick="evidenziaCancellature('text-168')">❌</button>
            <button class="custom-button add-button" id="add-168" style="display: none;" onclick="evidenziaAggiunte('text-168')"><span class="add-icon fas fa-plus"></span></button>
            <button class="custom-button highlight-button" id="corr-168" style="display: none;" onclick="evidenziaCorrezioni('text-168', 'corr-168')"><i class="fa-regular fa-circle-check" style="color: #3cd73f;"></i></button>
            <button class="custom-button abbr-button" id="abbr-168" style="display: none;" onclick="evidenziaEspansioni('text-168')"><i class="fas fa-info-circle"></i> Abbreviazioni</button>
            <div class="encoded-text" id="text-168" style="display:none;">
               <xsl:apply-templates select="//t:text//t:body//t:ab[@xml:id = 'p-168']"/>
            </div>
      </div>
      </div>

         <!--PAGINA 169-->
         <h2 class="nPag">PAGINA 169</h2>
         <div class="container-info" id="page2">
            <div class="pages">
               <xsl:element name="img">
                  <xsl:attribute name="src">
                     <xsl:value-of select="//t:graphic[@xml:id='p169']/@url"/>
                  </xsl:attribute>
               </xsl:element>
            </div>
               <div class="info-text">
               <button class="custom-button" id="button-169" onclick="mostraNascondi('text-169', 'button-169', 'X-169', 'add-169', 'corr-169', 'abbr-169')">Mostra testo</button>
               <button class="custom-button highlight-button" id="X-169" style="display: none; background-color: white;" onclick="evidenziaCancellature('text-169')">❌</button>
               <button class="custom-button add-button" id="add-169" style="display: none; background-color: #3498db;" onclick="evidenziaAggiunte('text-169')"><span class="add-icon fas fa-plus"></span></button>
               <button class="custom-button highlight-button" id="corr-169" style="display: none; background-color: white;" onclick="evidenziaCorrezioni('text-169', 'corr-169')"><i class="fa-regular fa-circle-check" style="color: #3cd73f;"></i></button>
               <button class="custom-button abbr-button" id="abbr-169" style="display: none; background-color: #3498db; color: white;" onclick="evidenziaEspansioni('text-169', 'abbr-169')"><i class="fas fa-info-circle"></i> Abbreviazioni</button>
               <div class="encoded-text" id="text-169" style="display:none;">
                  <xsl:apply-templates select="//t:text//t:body//t:ab[@xml:id = 'p-169']"/>
            </div>
         </div>

         </div>

         <!--PAGINA 170-->
         <h2 class="nPag">PAGINA 170</h2>
         <div class="container-info" id="page3">
            <div class="pages">
               <xsl:element name="img">
                  <xsl:attribute name="src">
                     <xsl:value-of select="//t:graphic[@xml:id='p170']/@url"/>
                  </xsl:attribute>
               </xsl:element>
            </div>
            <div class="info-text">
               <button class="custom-button" id="button-170" onclick="mostraNascondi('text-170', 'button-170', 'X-170', 'add-170', 'corr-170', 'abbr-170')">Mostra testo</button>
               <button class="custom-button highlight-button" id="X-170" style="display: none; background-color: white;" onclick="evidenziaCancellature('text-170')">❌</button>
               <button class="custom-button add-button" id="add-170" style="display: none; background-color: #3498db;" onclick="evidenziaAggiunte('text-170')"><span class="add-icon fas fa-plus"></span></button>
               <button class="custom-button highlight-button" id="corr-170" style="display: none; background-color: white;" onclick="evidenziaCorrezioni('text-170', 'corr-170')"><i class="fa-regular fa-circle-check" style="color: #3cd73f;"></i></button>
               <button class="custom-button abbr-button" id="abbr-170" style="display: none; background-color: #3498db; color: white;" onclick="evidenziaEspansioni('text-170', 'abbr-170')"><i class="fas fa-info-circle"></i> Abbreviazioni</button>
               <div class="encoded-text" id="text-170" style="display:none;">
                  <xsl:apply-templates select="//t:text//t:body//t:ab[@xml:id = 'p-170']"/>
               </div>
            </div>
         </div>

         <!--PAGINA 171-->
         <h2 class="nPag">PAGINA 171</h2>
         <div class="container-info" id="page4">
            <div class="pages">
               <xsl:element name="img">
                  <xsl:attribute name="src">
                     <xsl:value-of select="//t:graphic[@xml:id='p171']/@url"/>
                  </xsl:attribute>
               </xsl:element>

            
            </div>
            <div class="info-text">
               <button class="custom-button" id="button-171" onclick="mostraNascondi('text-171', 'button-171', 'X-171', 'add-171', 'corr-171', 'abbr-171')">Mostra testo</button>
               <button class="custom-button highlight-button" id="X-171" style="display: none; background-color: white;" onclick="evidenziaCancellature('text-171')">❌</button>
               <button class="custom-button add-button" id="add-171" style="display: none; background-color: #3498db;" onclick="evidenziaAggiunte('text-171')"><span class="add-icon fas fa-plus"></span></button>
               <button class="custom-button highlight-button" id="corr-171" style="display: none; background-color: white;" onclick="evidenziaCorrezioni('text-171', 'corr-171')"><i class="fa-regular fa-circle-check" style="color: #3cd73f;"></i></button>
               <button class="custom-button abbr-button" id="abbr-171" style="display: none; background-color: #3498db; color: white;" onclick="evidenziaEspansioni('text-171', 'abbr-171')"><i class="fas fa-info-circle"></i> Abbreviazioni</button>
               <div class="encoded-text" id="text-171" style="display:none;">
                  <xsl:apply-templates select="//t:text//t:body//t:ab[@xml:id = 'p-171']"/>
               </div>
         </div>
         </div>

         <!--PAGINA 172-->
         <h2 class="nPag">PAGINA 172</h2>
         <div class="container-info" id="page5">
            <div class="pages">
               <xsl:element name="img">
                  <xsl:attribute name="src">
                     <xsl:value-of select="//t:graphic[@xml:id='p172']/@url"/>
                  </xsl:attribute>
               </xsl:element>
            </div>
            <div class="info-text">
               <button class="custom-button" id="button-172" onclick="mostraNascondi('text-172', 'button-172', 'X-172', 'add-172', 'corr-172', 'abbr-172')">Mostra testo</button>
               <button class="custom-button highlight-button" id="X-172" style="display: none; background-color: white;" onclick="evidenziaCancellature('text-172')">❌</button>
               <button class="custom-button add-button" id="add-172" style="display: none; background-color: #3498db;" onclick="evidenziaAggiunte('text-172')"><span class="add-icon fas fa-plus"></span></button>
               <button class="custom-button highlight-button" id="corr-172" style="display: none; background-color: white;" onclick="evidenziaCorrezioni('text-172', 'corr-172')"><i class="fa-regular fa-circle-check" style="color: #3cd73f;"></i></button>
               <button class="custom-button abbr-button" id="abbr-172" style="display: none; background-color: #3498db; color: white;" onclick="evidenziaEspansioni('text-172', 'abbr-172')"><i class="fas fa-info-circle"></i> Abbreviazioni</button>
               <div class="encoded-text" id="text-172" style="display:none;">
                  <xsl:apply-templates select="//t:text//t:body//t:ab[@xml:id = 'p-172']"/>
               </div>
            </div>
         </div>

         <div class="approfondimenti" id="approfondimenti">
            <h2>APPROFONDIMENTI</h2>
            <p> All'interno di questa sezione del sito ci sono degli approfondimenti riguardanti persone, luoghi, opere ed associazioni citate all'interno delle pagine del diario.</p>
            <br />
            <h4>OPERE:</h4>
               <xsl:apply-templates select="//t:listBibl/t:bibl"/>
            <h4>PERSONAGGI:</h4>
                <xsl:apply-templates select="//t:listPerson"/>
            <h4>LUOGHI:</h4>
               <xsl:apply-templates select="//t:listPlace/t:place"/>
            <h4>ASSOCIAZIONI:</h4>
               <xsl:apply-templates select="//t:listOrg/t:org"/>
            <h4>TERMINOLOGIA:</h4>
               <xsl:apply-templates select="//t:list[@type='Terminologia']"/>
         </div>


         <footer id="about">
            <p>
               <b><xsl:value-of select="//t:titleStmt//t:title"/>.</b><br />
               <b><xsl:value-of select="//t:titleStmt//t:respStmt"/>.</b><br />
               <br />
            <b>email: m.molnar@studenti.unipi.it, i.poli5@studenti.unipi.it</b></p>
         </footer>

        </body>
      </html>
   </xsl:template>

   <!-- TEMPLATE ELEMENTI-->

   <!--Template righe stampate-->
   <xsl:template match="//t:ab//t:lb">
    <xsl:for-each select="current()">
      <xsl:element name="ol">
        </xsl:element>
    </xsl:for-each>
   </xsl:template>

   <xsl:template match="t:ab/add[xml:id='addLaterale']//t:lb">
   <xsl:element name ="br"/>
   <xsl:for-each select="current()">
      <xsl:element name="ol">
      </xsl:element>
   </xsl:for-each>
   </xsl:template>

   <!--Template cancellature-->
   <xsl:template match="//t:del">
      <span class="del">
         <xsl:value-of select="current()"/>
      </span>
   </xsl:template>

   <!--Template aggiunte-->
   <xsl:template match="//t:add">
      <xsl:choose>
         <!--Aggiunte sopra-->
         <xsl:when test="@place ='above'" >
            <xsl:copy>
               <span class="add-a">
                  <xsl:apply-templates select="node()" />
                  <!-- Applica lo stile di choice all'elemento choice -->
                  <xsl:apply-templates select="choice" />
               </span>
            </xsl:copy>
         </xsl:when>
         
         <!--Aggiunte sotto-->
         <xsl:when test="@place ='below'">
            <span class="add-b"><xsl:apply-templates select="node()" /></span>
         </xsl:when> 
         <!--Aggiunte in linea-->
         <xsl:when test="@place ='inline'">
            <span class="add-i"><xsl:apply-templates select="node()" /></span>
         </xsl:when>
         <!--Aggiunte a fondo pagina-->
         <xsl:when test="@place ='bottom'">
            <span class="add-bot">
               <xsl:apply-templates select="node()" />
               <!-- Applica lo stile di choice all'elemento choice -->
               <xsl:apply-templates select="choice" />
            </span>
         </xsl:when>
         <!--Aggiunte sopra ma in linea-->
         <xsl:when test="@place ='above inline'">
            <span class="add-ai"><xsl:value-of select="current()"/></span>
         </xsl:when>
         <xsl:when test="@place ='margin right'">
            <span class="add-mr">
               <xsl:apply-templates select="node()" />
               <!-- Applica lo stile di choice all'elemento choice -->
               <xsl:apply-templates select="choice" />
            </span>
         </xsl:when>
      </xsl:choose>  
   </xsl:template>

   <!-- Template sostituzioni per correzioni-->
   <xsl:template match="//t:choice">
      <xsl:if test="t:sic">
         <xsl:element name="span">
            <xsl:attribute name="style">display: none;</xsl:attribute>
            <xsl:attribute name="class">sic</xsl:attribute>
            <xsl:value-of select="t:sic" />
         </xsl:element>
         <xsl:element name="span">
            <xsl:attribute name="class">corr</xsl:attribute>
            <xsl:value-of select="t:corr" />
         </xsl:element>
      </xsl:if>
      <xsl:if test="t:abbr">
         <xsl:element name="span">
            <xsl:attribute name="style">display: none;</xsl:attribute>
            <xsl:attribute name="class">expan</xsl:attribute>
            <xsl:value-of select="t:expan" />
         </xsl:element>
         <xsl:element name="span">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:value-of select="t:abbr" />
         </xsl:element>
      </xsl:if>
      <xsl:if test="t:orig and t:reg">
         <div style="display: inline-block; background-color: white; padding: 5px; border: 1px solid #ccc;">
            <span style="color: darkred;">
               <xsl:value-of select="t:orig" />
            </span>
            <xsl:text> (contenuto corretto in italiano: </xsl:text>
            <span style="color: darkgreen;">
               <xsl:value-of select="t:reg" />
            </span>
            <xsl:text>)</xsl:text>
         </div>
      </xsl:if>
   </xsl:template>

   <!-- Template parole modificate-->
   <xsl:template match="//t:subst">
      <xsl:element name="span">
         <xsl:attribute name="class">del</xsl:attribute>
         <xsl:value-of select="t:del"/>
      </xsl:element>
      <xsl:element name="span">
         <xsl:choose>  
            <xsl:when test="t:add/@place='above'">
               <xsl:attribute name="class">add-a</xsl:attribute>
               <xsl:value-of select="t:add" />
            </xsl:when>
            <xsl:when test="t:add/@place='below'">
               <xsl:attribute name="class">add-b</xsl:attribute>
               <xsl:value-of select="t:add" />
            </xsl:when>
            <xsl:when test="t:add/@place='bottom'">
               <xsl:attribute name="class">add-bot</xsl:attribute>
               <xsl:value-of select="t:add" />
            </xsl:when>
            <xsl:when test="t:add/@place='inline'">
               <xsl:attribute name="class">add-i</xsl:attribute>
               <xsl:value-of select="t:add" />
            </xsl:when>
            <xsl:when test="t:add/@place='above inline'">
               <xsl:attribute name="class">add-ai</xsl:attribute>
               <xsl:value-of select="t:add" />
            </xsl:when>
            <xsl:when test="t:add/@place='margin right'">
               <xsl:attribute name="class">add-mr</xsl:attribute>
               <xsl:value-of select="t:add" />
            </xsl:when>
         </xsl:choose>
         
      </xsl:element>
   </xsl:template>

   <!--Template space-->
   <xsl:template match="//t:space">
      <xsl:element name="span">
         <xsl:attribute name="class">left-space</xsl:attribute>
         <xsl:value-of select="current()" />
      </xsl:element>
   </xsl:template>

   <!-- Template gap illegible  -->
   <xsl:template match="//t:gap[@reason='illegible']">
      <span class="gap-symbol">
         <xsl:text>❗</xsl:text>
      </span>
   </xsl:template>

   <!--Template unclear-->
   <xsl:template match="//t:unclear">
      <span class="unclear">
         <xsl:apply-templates select="node()" />
      </span>
   </xsl:template>

   <!--TEMPLATE LIST-->
  <xsl:template match="t:list">
    <div>
      <ol>
        <xsl:apply-templates select="t:item"/>
      </ol>
    </div>
  </xsl:template>

  <xsl:template match="t:item">
    <li>
      <xsl:value-of select="t:gloss"/>
      <p><a href="{t:gloss/@source}">Fonte</a></p>
    </li>
  </xsl:template>

  <!--TEMPLATE LIST PERSON-->
   <xsl:template match="t:person">
    <p>
        <a href="{t:persName/t:ref/@target}" target="_blank">
            <xsl:value-of select="concat(t:persName/t:forename, ' ', t:persName/t:surname)"/>
            <xsl:if test="t:persName/t:addName[@type='nickname']">
               <xsl:text> - </xsl:text>
               <xsl:value-of select="t:persName/t:addName[@type='nickname']"/>
            </xsl:if>
        </a>
    </p>
   </xsl:template>

   <!--TEMPLATE LUOGHI-->
   <xsl:template match="t:place">
      <div>
         <strong><xsl:value-of select="t:placeName"/></strong> - <xsl:value-of select="t:settlement"/>, <xsl:value-of select="t:country"/>
      </div>
   </xsl:template>

   <!-- TEMPLATE OPERE-->
   <xsl:template match="t:listBibl/t:bibl">
      <div>
         <strong><xsl:value-of select="t:author/t:surname"/>, <xsl:value-of select="t:author/t:forename"/></strong>: 
         <em><xsl:value-of select="t:title[@type='main']"/></em>,
         <xsl:text> </xsl:text><xsl:value-of select="t:pubPlace/t:placeName"/>: <xsl:value-of select="t:publisher"/>,
         <xsl:text> </xsl:text><xsl:value-of select="t:date/@when"/>
      </div>
   </xsl:template>

   <!-- TEMPLATE ASSOCIAZIONI-->
      <xsl:template match="t:org">
      <p>
         <strong><xsl:value-of select="t:orgName"/></strong>
         <br/>
         <xsl:value-of select="t:desc"/>
      </p>
   </xsl:template>


</xsl:stylesheet>

