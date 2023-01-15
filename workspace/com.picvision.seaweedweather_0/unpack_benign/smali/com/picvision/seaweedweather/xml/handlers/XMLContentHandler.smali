.class public Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLContentHandler.java"


# instance fields
.field private final CITY:Ljava/lang/String;

.field private final CITYS:Ljava/lang/String;

.field private final EN_NAME:Ljava/lang/String;

.field private final ID:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field private final PROVINCE:Ljava/lang/String;

.field private final VALUE:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private city:Lcom/picvision/seaweedweather/model/Citys;

.field private citys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;"
        }
    .end annotation
.end field

.field private province:Lcom/picvision/seaweedweather/model/Province;

.field private provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Province;",
            ">;"
        }
    .end annotation
.end field

.field private tempString:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 15
    const-string v0, "version"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->VERSION:Ljava/lang/String;

    .line 18
    const-string v0, "value"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->VALUE:Ljava/lang/String;

    .line 20
    const-string v0, "province"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->PROVINCE:Ljava/lang/String;

    .line 23
    const-string v0, "city"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->CITY:Ljava/lang/String;

    .line 29
    const-string v0, "en_name"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->EN_NAME:Ljava/lang/String;

    .line 32
    const-string v0, "id"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->ID:Ljava/lang/String;

    .line 35
    const-string v0, "name"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->NAME:Ljava/lang/String;

    .line 38
    const-string v0, "citys"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->CITYS:Ljava/lang/String;

    .line 41
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->version:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    const-string v0, "citys"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->citys:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Province;->setCitys(Ljava/util/List;)V

    .line 109
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->citys:Ljava/util/List;

    .line 114
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->tempString:Ljava/lang/String;

    .line 116
    return-void

    .line 110
    :cond_1
    const-string v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->provinces:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    goto :goto_0
.end method

.method public getProvince()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Province;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->provinces:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->version:Ljava/lang/String;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v3, "name"

    .line 83
    const-string v0, "version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->provinces:Ljava/util/List;

    .line 85
    const-string v0, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->version:Ljava/lang/String;

    .line 99
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->tempString:Ljava/lang/String;

    .line 101
    return-void

    .line 86
    :cond_1
    const-string v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Lcom/picvision/seaweedweather/model/Province;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Province;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    .line 88
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    const-string v1, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Province;->setProvinceName(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    const-string v1, "en_name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Province;->setProvinceEnName(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "citys"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->citys:Ljava/util/List;

    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "city"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/picvision/seaweedweather/model/Citys;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Citys;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    .line 95
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    new-instance v1, Ljava/lang/Integer;

    const-string v2, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Citys;->setCityId(I)V

    .line 96
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    const-string v1, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Citys;->setCityName(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->citys:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/XMLContentHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
