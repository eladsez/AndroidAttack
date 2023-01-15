.class public Ljp/Adlantis/Android/AdlantisAd;
.super Ljava/util/HashMap;

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ADTYPE_BANNER:I = 0x1

.field public static final ADTYPE_TEXT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AdlantisAd"

.field private static final serialVersionUID:J = -0x56349af8f059L


# instance fields
.field private sendImpressionCountFailed:Z

.field private sendingCountExpand:Z

.field private sendingImpressionCount:Z

.field private sentCountExpand:Z

.field private sentImpressionCount:Z

.field private viewStartTime:J

.field private viewedTime:J


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sendImpressionCountFailed:Z

    return-void
.end method

.method static synthetic access$000(Ljp/Adlantis/Android/AdlantisAd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->setSendingImpressionCount(Z)V

    return-void
.end method

.method static synthetic access$100(Ljp/Adlantis/Android/AdlantisAd;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljp/Adlantis/Android/AdlantisAd;->sendRequestForProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljp/Adlantis/Android/AdlantisAd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->setSentImpressionCount(Z)V

    return-void
.end method

.method static synthetic access$300(Ljp/Adlantis/Android/AdlantisAd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->setSendImpressionCountFailed(Z)V

    return-void
.end method

.method static synthetic access$402(Ljp/Adlantis/Android/AdlantisAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisAd;->sendingCountExpand:Z

    return p1
.end method

.method static synthetic access$502(Ljp/Adlantis/Android/AdlantisAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisAd;->sentCountExpand:Z

    return p1
.end method

.method private buildURIFrom(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->getInstance()Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljp/Adlantis/Android/AdManager;->defaultRequestBuilder(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private buildURIFromProperty(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->buildURIFrom(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private currentOrientation(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private static expandedAdOrientationKey(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljp/Adlantis/Android/AdlantisAd;->orientationKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasHighResolutionDisplay(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Ljp/Adlantis/Android/AdlantisUtils;->hasHighResolutionDisplay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static iphone_orientationKey(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljp/Adlantis/Android/AdlantisAd;->orientationIsLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "iphone_landscape"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iphone_portrait"

    goto :goto_0
.end method

.method private static orientationIsLandscape(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static orientationKey(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljp/Adlantis/Android/AdlantisAd;->orientationIsLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "landscape"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method

.method private sendRequestForProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->buildURIFromProperty(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "AdlantisAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdlantisAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdlantisAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AdlantisAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OutOfMemoryError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSendImpressionCountFailed(Z)V
    .locals 1

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisAd;->sendImpressionCountFailed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sendingImpressionCount:Z

    return-void
.end method

.method private setSendingImpressionCount(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisAd;->sendingImpressionCount:Z

    return-void
.end method

.method private setSentImpressionCount(Z)V
    .locals 1

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisAd;->sentImpressionCount:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sendingImpressionCount:Z

    return-void
.end method


# virtual methods
.method public adType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "sp_banner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public altTextString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->bannerInfoForOrientation(I)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "alt"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public altTextString(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->bannerInfoForCurrentOrientation(Landroid/view/View;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "alt"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public bannerInfoForCurrentOrientation(Landroid/view/View;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->currentOrientation(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->bannerInfoForOrientation(I)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bannerInfoForOrientation(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Ljp/Adlantis/Android/AdlantisAd;->orientationKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljp/Adlantis/Android/AdlantisAd;->iphone_orientationKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    :goto_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public bannerURLForCurrentOrientation(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->currentOrientation(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp/Adlantis/Android/AdlantisAd;->hasHighResolutionDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljp/Adlantis/Android/AdlantisAd;->bannerURLForOrientation(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bannerURLForOrientation(IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->bannerInfoForOrientation(I)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "src_2x"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "src"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public countExpandUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "count_expand"

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->buildURIFromProperty(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public countImpressionUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "count_impression"

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->buildURIFromProperty(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public expandedContentForOrientation(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "has_expand"

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljp/Adlantis/Android/AdlantisAd;->expandedAdOrientationKey(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "expand_content"

    invoke-virtual {p0, v2}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public expandedContentImageURLForOrientation(IZ)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->expandedContentForOrientation(I)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    const-string v1, "src_2x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "src"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public expandedContentImageURLForView(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->currentOrientation(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp/Adlantis/Android/AdlantisAd;->hasHighResolutionDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljp/Adlantis/Android/AdlantisAd;->expandedContentImageURLForOrientation(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAdForOrientation(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->bannerInfoForOrientation(I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public hashMapRepresentation()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public iconURL(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->hasHighResolutionDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->iconURL(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iconURL(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "iphone_icon"

    invoke-virtual {p0, v1}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "src_2x"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "src"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public imageURL(IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p2}, Ljp/Adlantis/Android/AdlantisAd;->iconURL(Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Ljp/Adlantis/Android/AdlantisAd;->bannerURLForOrientation(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public imageURL(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAd;->currentOrientation(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp/Adlantis/Android/AdlantisAd;->hasHighResolutionDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljp/Adlantis/Android/AdlantisAd;->bannerURLForOrientation(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method sendCountExpandedAdOpened()V
    .locals 1

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sendingCountExpand:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sentCountExpand:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljp/Adlantis/Android/AdlantisAd$2;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisAd$2;-><init>(Ljp/Adlantis/Android/AdlantisAd;)V

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisAd$2;->start()V

    goto :goto_0
.end method

.method sendImpressionCount()V
    .locals 1

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sentImpressionCount:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sendingImpressionCount:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisAd;->sendImpressionCountFailed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljp/Adlantis/Android/AdlantisAd$1;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisAd$1;-><init>(Ljp/Adlantis/Android/AdlantisAd;)V

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisAd$1;->start()V

    goto :goto_0
.end method

.method public tapUrlString()Ljava/lang/String;
    .locals 1

    const-string v0, "href"

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public textAdString()Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->tapUrlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewingEnded()V
    .locals 6

    iget-wide v0, p0, Ljp/Adlantis/Android/AdlantisAd;->viewedTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/Adlantis/Android/AdlantisAd;->viewStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljp/Adlantis/Android/AdlantisAd;->viewedTime:J

    iget-wide v0, p0, Ljp/Adlantis/Android/AdlantisAd;->viewedTime:J

    const-wide/32 v2, 0x77359400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAd;->sendImpressionCount()V

    :cond_0
    return-void
.end method

.method public viewingStarted()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/Adlantis/Android/AdlantisAd;->viewStartTime:J

    return-void
.end method
