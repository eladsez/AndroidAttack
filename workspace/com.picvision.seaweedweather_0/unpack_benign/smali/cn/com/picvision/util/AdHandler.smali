.class public Lcn/com/picvision/util/AdHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AdHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final adapter:Ljava/lang/String; = "adapter"

.field private static final bgmusic:Ljava/lang/String; = "bgmusic"

.field private static final errorCode:Ljava/lang/String; = "errorCode"

.field private static final id:Ljava/lang/String; = "ID"

.field private static final image:Ljava/lang/String; = "image"

.field private static final linkUrl:Ljava/lang/String; = "linkURL"

.field private static final logo:Ljava/lang/String; = "logo"

.field private static str:Ljava/lang/String; = null

.field private static final text:Ljava/lang/String; = "text"

.field private static final type:Ljava/lang/String; = "type"


# instance fields
.field private config:Lcn/com/picvision/model/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcn/com/picvision/util/AdHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/AdHandler;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    .line 16
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, ""

    sput-object v0, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    .line 54
    :cond_0
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
    .line 65
    sget-object v0, Lcn/com/picvision/util/AdHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/picvision/util/Help;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/com/picvision/model/Config;->setId(J)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v0, "errorCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/picvision/util/Help;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->setErrorCode(I)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "adapter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/picvision/util/Help;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->setAdapter(Z)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/picvision/util/Help;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->setType(I)V

    goto :goto_0

    .line 74
    :cond_4
    const-string v0, "linkURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_5
    const-string v0, "bgmusic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->setBgMusic(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_6
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->addMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_7
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->setImage(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_8
    const-string v0, "logo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    sget-object v1, Lcn/com/picvision/util/AdHandler;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/picvision/model/Config;->setLogo(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getConfig()Lcn/com/picvision/model/Config;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 93
    new-instance v0, Lcn/com/picvision/model/Config;

    invoke-direct {v0}, Lcn/com/picvision/model/Config;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/util/AdHandler;->config:Lcn/com/picvision/model/Config;

    .line 94
    return-void
.end method
