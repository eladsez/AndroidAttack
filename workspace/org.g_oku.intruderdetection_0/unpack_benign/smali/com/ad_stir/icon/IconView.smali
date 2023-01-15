.class public Lcom/ad_stir/icon/IconView;
.super Lcom/ad_stir/ad/BaseAdView;
.source "IconView.java"


# instance fields
.field private media:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private slot:Ljava/lang/String;

.field private spot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/ad_stir/ad/BaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/ad_stir/icon/IconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotNo"    # I
    .param p4, "slotNumber"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ad_stir/ad/BaseAdView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ad_stir/icon/IconView;->init(Landroid/content/Context;Ljava/lang/String;II)V

    .line 26
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, "mediaId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 31
    .local v6, "spot":I
    const/4 v4, 0x0

    .line 32
    .local v4, "slot":I
    if-eqz p2, :cond_3

    .line 33
    const-string v8, "media"

    invoke-interface {p2, v9, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    const-string v8, "spot"

    invoke-interface {p2, v9, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "spotString":Ljava/lang/String;
    const-string v8, "slot"

    invoke-interface {p2, v9, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "slotString":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 39
    :cond_0
    const-string v8, "IconView media param err"

    invoke-static {v8}, Lcom/ad_stir/common/Log;->e(Ljava/lang/String;)V

    .line 72
    .end local v5    # "slotString":Ljava/lang/String;
    .end local v7    # "spotString":Ljava/lang/String;
    :goto_0
    return-void

    .line 43
    .restart local v5    # "slotString":Ljava/lang/String;
    .restart local v7    # "spotString":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 49
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 55
    const-string v8, "center"

    invoke-interface {p2, v9, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "centerString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 58
    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/ad_stir/icon/IconView;->setCenter(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :cond_2
    :goto_1
    const-string v8, "interval"

    invoke-interface {p2, v9, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "intervalString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 66
    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/ad_stir/icon/IconView;->setInterval(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 71
    .end local v0    # "centerString":Ljava/lang/String;
    .end local v2    # "intervalString":Ljava/lang/String;
    .end local v5    # "slotString":Ljava/lang/String;
    .end local v7    # "spotString":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v3, v6, v4}, Lcom/ad_stir/icon/IconView;->init(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 44
    .restart local v5    # "slotString":Ljava/lang/String;
    .restart local v7    # "spotString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "IconView spot param err"

    invoke-static {v8}, Lcom/ad_stir/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 51
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "IconView slot param err"

    invoke-static {v8}, Lcom/ad_stir/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "centerString":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "IconView center param err"

    invoke-static {v8}, Lcom/ad_stir/common/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "intervalString":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 68
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "IconView interval param err"

    invoke-static {v8}, Lcom/ad_stir/common/Log;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotNo"    # I
    .param p4, "slotNumber"    # I

    .prologue
    .line 75
    const-string v0, "IconView init"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 76
    iput-object p2, p0, Lcom/ad_stir/icon/IconView;->media:Ljava/lang/String;

    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ad_stir/icon/IconView;->spot:Ljava/lang/String;

    .line 78
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ad_stir/icon/IconView;->slot:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ad_stir/icon/IconView;->origin:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://dist.bpc.ad-stir.com/adi2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "?symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ad_stir/icon/IconView;->media:Ljava/lang/String;

    invoke-static {v2}, Lcom/ad_stir/common/Http;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "&space_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ad_stir/icon/IconView;->spot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "&slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ad_stir/icon/IconView;->slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "&origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ad_stir/icon/IconView;->origin:Ljava/lang/String;

    invoke-static {v2}, Lcom/ad_stir/common/Http;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    if-eqz p1, :cond_0

    const-string v1, "&id=google"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/ad_stir/common/Http;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/ad_stir/ad/BaseAdView;->start()V

    .line 87
    return-void
.end method

.method protected stop()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/ad_stir/ad/BaseAdView;->stop()V

    .line 84
    return-void
.end method
