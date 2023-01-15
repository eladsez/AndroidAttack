.class final Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXProvinceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/utils/SAXProvinceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SAXProvinceHandler"
.end annotation


# instance fields
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

.field private temp:Ljava/lang/String;

.field final synthetic this$0:Lcom/picvision/seaweedweather/utils/SAXProvinceService;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/picvision/seaweedweather/utils/SAXProvinceService;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->this$0:Lcom/picvision/seaweedweather/utils/SAXProvinceService;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 43
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->version:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/picvision/seaweedweather/utils/SAXProvinceService;Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;-><init>(Lcom/picvision/seaweedweather/utils/SAXProvinceService;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

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

    .line 99
    const-string v0, "citys"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->citys:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Province;->setCitys(Ljava/util/List;)V

    .line 101
    iput-object v2, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->citys:Ljava/util/List;

    .line 106
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->temp:Ljava/lang/String;

    .line 107
    return-void

    .line 102
    :cond_1
    const-string v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->provinces:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iput-object v2, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    goto :goto_0
.end method

.method public getProvinces()Ljava/util/List;
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
    .line 51
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->provinces:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->version:Ljava/lang/String;

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

    .line 74
    const-string v0, "version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->provinces:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/picvision/seaweedweather/model/Province;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Province;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    .line 77
    const-string v0, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->version:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->temp:Ljava/lang/String;

    .line 91
    const-string v0, "startElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->provinces:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "____"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->citys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 78
    :cond_1
    const-string v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    const-string v1, "en_name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Province;->setProvinceEnName(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    const-string v1, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Province;->setProvinceName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->provinces:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->province:Lcom/picvision/seaweedweather/model/Province;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->citys:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->citys:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/picvision/seaweedweather/model/Citys;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Citys;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    goto :goto_0

    .line 85
    :cond_3
    const-string v0, "city"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    new-instance v1, Ljava/lang/Integer;

    const-string v2, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Citys;->setCityId(I)V

    .line 87
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    const-string v1, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Citys;->setCityName(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->citys:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/SAXProvinceService$SAXProvinceHandler;->city:Lcom/picvision/seaweedweather/model/Citys;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
