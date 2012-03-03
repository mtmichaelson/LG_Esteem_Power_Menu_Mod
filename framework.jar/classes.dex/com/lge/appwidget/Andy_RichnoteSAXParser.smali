.class public Lcom/lge/appwidget/Andy_RichnoteSAXParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Andy_RichnoteSAXParser.java"



# instance fields
.field private tempNote:Lcom/lge/appwidget/Note;

.field private tempVal:Ljava/lang/StringBuffer;



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    .line 26
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    move v0, p2

    .local v0, i:I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_f

    .line 72
    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_f
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "Note"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 82
    const-string v0, "SAXParser>>"

    const-string v1, "Note end Tag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 100
    return-void

    .line 84
    :cond_1c
    const-string v0, "Text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 85
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Note;->setText(Ljava/lang/String;)V

    goto :goto_f

    .line 87
    :cond_30
    const-string v0, "Image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 88
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Note;->setImagePath(Ljava/lang/String;)V

    goto :goto_f

    .line 89
    :cond_44
    const-string v0, "Uri"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 90
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Note;->setLocationUri(Ljava/lang/String;)V

    goto :goto_f

    .line 92
    :cond_58
    const-string v0, "addr"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 93
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Note;->setLocationAddress(Ljava/lang/String;)V

    goto :goto_f

    .line 95
    :cond_6c
    const-string v0, "filename"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempVal:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Note;->setLocationImagePath(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public parseDocument(Ljava/lang/String;)Lcom/lge/appwidget/Note;
    .registers 9
    .parameter "xml"

    .prologue
    .line 33
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 34
    .local v1, is:Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 37
    .local v5, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_e
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 38
    .local v4, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_15} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_15} :catch_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_24

    .line 48
    .end local v4       #sp:Ljavax/xml/parsers/SAXParser;,
    :goto_15
    iget-object v6, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    return-object v6

    .line 40
    :catch_18
    move-exception v6

    move-object v3, v6

    .line 41
    .local v3, se:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_15

    .line 42
    .end local v3       #se:Lorg/xml/sax/SAXException;,
    :catch_1e
    move-exception v6

    move-object v2, v6

    .line 43
    .local v2, pce:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_15

    .line 44
    .end local v2       #pce:Ljavax/xml/parsers/ParserConfigurationException;,
    :catch_24
    move-exception v6

    move-object v0, v6

    .line 45
    .local v0, ie:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "Note"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    new-instance v0, Lcom/lge/appwidget/Note;

    invoke-direct {v0}, Lcom/lge/appwidget/Note;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    .line 66
    :cond_f
    :goto_f
    return-void

    .line 60
    :cond_10
    const-string v0, "Location"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->tempNote:Lcom/lge/appwidget/Note;

    invoke-virtual {v0}, Lcom/lge/appwidget/Note;->initializeLocation()V

    goto :goto_f
.end method
