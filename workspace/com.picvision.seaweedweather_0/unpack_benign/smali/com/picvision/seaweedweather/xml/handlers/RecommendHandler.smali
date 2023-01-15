.class public Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RecommendHandler.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PIC:Ljava/lang/String; = "pic"

.field private static final POSITION:Ljava/lang/String; = "position"

.field private static final SP:Ljava/lang/String; = "sp"

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private recommend:Lcom/picvision/seaweedweather/model/Recommend;

.field private recommends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;"
        }
    .end annotation
.end field

.field private rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

.field private rpics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend$RPic;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Lcom/picvision/seaweedweather/model/Sp;

.field private sps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Sp;",
            ">;"
        }
    .end annotation
.end field

.field private temp:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sps:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->temp:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sp:Lcom/picvision/seaweedweather/model/Sp;

    .line 34
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommend:Lcom/picvision/seaweedweather/model/Recommend;

    .line 35
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommends:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

    .line 37
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpics:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 54
    if-lez p3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->temp:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->temp:Ljava/lang/String;

    .line 59
    :cond_0
    return-void

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->temp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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

    const-string v3, "xml"

    .line 67
    const-string v0, "url"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Recommend$RPic;->setUrl(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->temp:Ljava/lang/String;

    .line 89
    return-void

    .line 69
    :cond_1
    const-string v0, "text"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Recommend$RPic;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "pic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpics:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommend:Lcom/picvision/seaweedweather/model/Recommend;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpics:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Recommend;->setPics(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommends:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommend:Lcom/picvision/seaweedweather/model/Recommend;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpics:Ljava/util/List;

    goto :goto_0

    .line 79
    :cond_4
    const-string v0, "sp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sp:Lcom/picvision/seaweedweather/model/Sp;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommends:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Sp;->setRecommendList(Ljava/util/List;)V

    .line 81
    const-string v0, "xml"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set recommend in sp , recommends size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommends:Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sps:Ljava/util/List;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sp:Lcom/picvision/seaweedweather/model/Sp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v0, "xml"

    const-string v0, "ass sp to sps"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRecommends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommends:Ljava/util/List;

    return-object v0
.end method

.method public getSpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Sp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sps:Ljava/util/List;

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
    const-string v3, "xml"

    const-string v2, "id"

    .line 96
    const-string v0, "version"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sps:Ljava/util/List;

    .line 98
    const-string v0, "xml"

    const-string v0, "new sp"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->version:Ljava/lang/String;

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "sp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommends:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/picvision/seaweedweather/model/Sp;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Sp;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sp:Lcom/picvision/seaweedweather/model/Sp;

    .line 103
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sp:Lcom/picvision/seaweedweather/model/Sp;

    const-string v1, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Sp;->setId(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sp:Lcom/picvision/seaweedweather/model/Sp;

    const-string v1, "spname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Sp;->setSpName(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->sp:Lcom/picvision/seaweedweather/model/Sp;

    const-string v1, "logo"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Sp;->setLogoUrl(Ljava/lang/String;)V

    .line 106
    const-string v0, "xml"

    const-string v0, "set sp"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Lcom/picvision/seaweedweather/model/Recommend;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Recommend;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommend:Lcom/picvision/seaweedweather/model/Recommend;

    .line 109
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommend:Lcom/picvision/seaweedweather/model/Recommend;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Recommend;->setVersion(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommend:Lcom/picvision/seaweedweather/model/Recommend;

    const-string v1, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Recommend;->setRId(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->recommend:Lcom/picvision/seaweedweather/model/Recommend;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Recommend;->setRName(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpics:Ljava/util/List;

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "pic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/picvision/seaweedweather/model/Recommend$RPic;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Recommend$RPic;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

    .line 115
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->rpic:Lcom/picvision/seaweedweather/model/Recommend$RPic;

    const-string v1, "position"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Recommend$RPic;->setPosition(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
