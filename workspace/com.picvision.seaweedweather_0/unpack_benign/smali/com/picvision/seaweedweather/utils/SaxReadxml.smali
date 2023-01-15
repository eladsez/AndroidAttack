.class public Lcom/picvision/seaweedweather/utils/SaxReadxml;
.super Ljava/lang/Object;
.source "SaxReadxml.java"


# static fields
.field private static sp:Ljavax/xml/parsers/SAXParser;

.field private static spf:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcom/picvision/seaweedweather/utils/SaxReadxml;->spf:Ljavax/xml/parsers/SAXParserFactory;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvince(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .param p0, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Province;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :try_start_0
    new-instance v2, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;

    invoke-direct {v2}, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .local v2, "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :try_start_1
    sget-object v3, Lcom/picvision/seaweedweather/utils/SaxReadxml;->spf:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    sput-object v3, Lcom/picvision/seaweedweather/utils/SaxReadxml;->sp:Ljavax/xml/parsers/SAXParser;

    .line 29
    sget-object v3, Lcom/picvision/seaweedweather/utils/SaxReadxml;->sp:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v3, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 31
    const/4 p0, 0x0

    .line 32
    const/4 v3, 0x0

    sput-object v3, Lcom/picvision/seaweedweather/utils/SaxReadxml;->sp:Ljavax/xml/parsers/SAXParser;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    if-eqz p0, :cond_2

    .line 45
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 46
    const/4 p0, 0x0

    move-object v1, v2

    .line 52
    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->getProvince()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 33
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 35
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 46
    const/4 p0, 0x0

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 38
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 46
    const/4 p0, 0x0

    goto :goto_0

    .line 48
    :catch_3
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 41
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 46
    const/4 p0, 0x0

    goto :goto_0

    .line 48
    :catch_5
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 44
    :goto_4
    if-eqz p0, :cond_1

    .line 45
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 46
    const/4 p0, 0x0

    .line 51
    :cond_1
    :goto_5
    throw v3

    .line 48
    :catch_6
    move-exception v0

    .line 49
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :catch_7
    move-exception v0

    .line 49
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    goto :goto_0

    .line 42
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    goto :goto_4

    .line 39
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :catch_8
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    goto :goto_3

    .line 36
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :catch_9
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    goto :goto_2

    .line 33
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    :catch_a
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
    goto :goto_1
.end method

.method public static getWeather(Ljava/io/InputStream;)Lcom/picvision/seaweedweather/model/Weather;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    :try_start_0
    new-instance v2, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;

    invoke-direct {v2}, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .local v2, "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    :try_start_1
    sget-object v3, Lcom/picvision/seaweedweather/utils/SaxReadxml;->spf:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    sput-object v3, Lcom/picvision/seaweedweather/utils/SaxReadxml;->sp:Ljavax/xml/parsers/SAXParser;

    .line 62
    sget-object v3, Lcom/picvision/seaweedweather/utils/SaxReadxml;->sp:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v3, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 73
    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    :goto_0
    invoke-virtual {v1}, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->getWeather()Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v3

    return-object v3

    .line 63
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 65
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 68
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_2
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 71
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    :catch_3
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    goto :goto_3

    .line 66
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    :catch_4
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    goto :goto_2

    .line 63
    .end local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .restart local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    :catch_5
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .restart local v1    # "handler":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    goto :goto_1
.end method
