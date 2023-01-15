.class public Lcom/picvision/seaweedweather/utils/SAXProvinceService;
.super Ljava/lang/Object;
.source "SAXProvinceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProvince(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 28
    .local v1, "sfp":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 30
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    new-instance v0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;-><init>(Lcom/picvision/seaweedweather/utils/SAXProvinceService;Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;)V

    .line 32
    .local v0, "handler":Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;
    invoke-virtual {v2, p1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 34
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->getProvinces()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
