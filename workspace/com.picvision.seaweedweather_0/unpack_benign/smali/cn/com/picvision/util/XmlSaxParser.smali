.class public Lcn/com/picvision/util/XmlSaxParser;
.super Ljava/lang/Object;
.source "XmlSaxParser.java"


# static fields
.field private static final BUFFER:I = 0x400

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcn/com/picvision/util/XmlSaxParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/XmlSaxParser;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final decryptParser(Ljava/io/BufferedInputStream;)Ljava/io/BufferedInputStream;
    .locals 9
    .param p0, "in"    # Ljava/io/BufferedInputStream;

    .prologue
    const/16 v8, 0x400

    .line 58
    sget-object v6, Lcn/com/picvision/util/XmlSaxParser;->TAG:Ljava/lang/String;

    const-string v7, "decryptParser"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v6, 0x1400

    invoke-direct {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 60
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    new-array v1, v8, [B

    .line 61
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 63
    .local v4, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 67
    const/4 p0, 0x0

    .line 68
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 69
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v7, 0x400

    .line 68
    invoke-direct {v3, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local p0    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sdcard/app/pvmobad/ad.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 71
    .local v5, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 72
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 73
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v3

    .line 77
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local p0    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    const/4 v1, 0x0

    check-cast v1, [B

    .line 78
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 79
    const/4 v0, 0x0

    .line 80
    return-object p0

    .line 64
    :cond_0
    :try_start_2
    invoke-static {v1}, Lcn/com/picvision/util/Decipher;->decipher([B)[B

    move-result-object v1

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 75
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    .end local p0    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v6

    move-object v2, v6

    move-object p0, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local p0    # "in":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static parser(Ljava/io/BufferedInputStream;Lcn/com/picvision/util/AdHandler;)Lcn/com/picvision/model/Config;
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .param p1, "handler"    # Lcn/com/picvision/util/AdHandler;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "config":Lcn/com/picvision/model/Config;
    :try_start_0
    invoke-static {p0}, Lcn/com/picvision/util/XmlSaxParser;->decryptParser(Ljava/io/BufferedInputStream;)Ljava/io/BufferedInputStream;

    move-result-object v2

    sget-object v3, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v2, v3, p1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 38
    invoke-virtual {p1}, Lcn/com/picvision/util/AdHandler;->getConfig()Lcn/com/picvision/model/Config;

    move-result-object v0

    .line 39
    sget-object v2, Lcn/com/picvision/util/XmlSaxParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 43
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 45
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0
.end method
