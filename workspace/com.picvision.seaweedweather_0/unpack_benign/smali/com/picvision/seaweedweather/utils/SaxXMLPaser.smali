.class final Lcom/picvision/seaweedweather/utils/SaxXMLPaser;
.super Ljava/lang/Object;
.source "SaxXMLPaser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parser(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    .line 65
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 66
    .local v1, "isCorret":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 71
    .local v2, "saxPaser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2, p0, p1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 72
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 p0, 0x0

    .line 74
    const/4 v2, 0x0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 87
    const/4 p0, 0x0

    .line 94
    .end local v2    # "saxPaser":Ljavax/xml/parsers/SAXParser;
    :cond_0
    :goto_1
    return-object p1

    .line 65
    .end local v1    # "isCorret":Z
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 75
    .restart local v1    # "isCorret":Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 76
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    const/4 p0, 0x0

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 78
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 87
    const/4 p0, 0x0

    goto :goto_1

    .line 89
    :catch_3
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_6
    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 87
    const/4 p0, 0x0

    goto :goto_1

    .line 89
    :catch_5
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    move-object v0, v3

    .line 82
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 87
    const/4 p0, 0x0

    goto :goto_1

    .line 89
    :catch_7
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 85
    if-eqz p0, :cond_2

    .line 86
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 87
    const/4 p0, 0x0

    .line 92
    :cond_2
    :goto_2
    throw v3

    .line 89
    :catch_8
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "saxPaser":Ljavax/xml/parsers/SAXParser;
    :catch_9
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
