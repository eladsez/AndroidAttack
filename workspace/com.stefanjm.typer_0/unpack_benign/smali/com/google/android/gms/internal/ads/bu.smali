.class public final Lcom/google/android/gms/internal/ads/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/bq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bq<",
        "Lcom/google/android/gms/internal/ads/qo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/no;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/no<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/ads/internal/gmsg/c;

.field private final c:Lcom/google/android/gms/internal/ads/aun;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/mv;

.field private final f:Lcom/google/android/gms/ads/internal/ae;

.field private final g:Lcom/google/android/gms/internal/ads/ahi;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ae;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Webview loading for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bu;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bu;->f:Lcom/google/android/gms/ads/internal/ae;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bu;->g:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bu;->e:Lcom/google/android/gms/internal/ads/mv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu;->h:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->f()Lcom/google/android/gms/internal/ads/qv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bu;->d:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/bu;->e:Lcom/google/android/gms/internal/ads/mv;

    sget-object p5, Lcom/google/android/gms/internal/ads/asr;->bX:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->g:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->f:Lcom/google/android/gms/ads/internal/ae;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/a;->i()Lcom/google/android/gms/ads/internal/bu;

    move-result-object v1

    invoke-static {p1, p4, p5, v0, v1}, Lcom/google/android/gms/internal/ads/qv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/ads/internal/bu;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    new-instance p4, Lcom/google/android/gms/ads/internal/gmsg/c;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bu;->d:Landroid/content/Context;

    invoke-direct {p4, p5}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bu;->b:Lcom/google/android/gms/ads/internal/gmsg/c;

    new-instance p4, Lcom/google/android/gms/internal/ads/aun;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/aun;-><init>(Lcom/google/android/gms/internal/ads/auj;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bu;->c:Lcom/google/android/gms/internal/ads/aun;

    new-instance p2, Lcom/google/android/gms/internal/ads/bv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/bv;-><init>(Lcom/google/android/gms/internal/ads/bu;)V

    sget-object p3, Lcom/google/android/gms/internal/ads/nu;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/my;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    const-string p2, "WebViewNativeAdsUtil.constructor"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/nb;->a(Lcom/google/android/gms/internal/ads/no;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bu;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/no;
    .locals 12

    const-string v0, "Javascript has loaded for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bu;->f:Lcom/google/android/gms/ads/internal/ae;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bu;->f:Lcom/google/android/gms/ads/internal/ae;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bu;->f:Lcom/google/android/gms/ads/internal/ae;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bu;->f:Lcom/google/android/gms/ads/internal/ae;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bu;->f:Lcom/google/android/gms/ads/internal/ae;

    new-instance v9, Lcom/google/android/gms/ads/internal/bv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->d:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v9, v0, v7, v7}, Lcom/google/android/gms/ads/internal/bv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/dr;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/aok;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/gmsg/m;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/ads/internal/gmsg/ai;Lcom/google/android/gms/ads/internal/bv;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/id;)V

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->b:Lcom/google/android/gms/ads/internal/gmsg/c;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->c:Lcom/google/android/gms/internal/ads/aun;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/no;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/no<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/bw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Lcom/google/android/gms/internal/ads/bu;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/my;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/no;
    .locals 2

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleDownloadedImpressionPing"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/cf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cf;-><init>(Lcom/google/android/gms/internal/ads/bu;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/na;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/cb;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/cb;-><init>(Lcom/google/android/gms/internal/ads/bu;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/na;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/cd;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/cd;-><init>(Lcom/google/android/gms/internal/ads/bu;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/na;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/no;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/no<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/bx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bx;-><init>(Lcom/google/android/gms/internal/ads/bu;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/my;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/no;
    .locals 2

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleImpressionPing"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/cc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/cc;-><init>(Lcom/google/android/gms/internal/ads/bu;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/na;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/no;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/no<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/by;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/by;-><init>(Lcom/google/android/gms/internal/ads/bu;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/my;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/no;
    .locals 2

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleClickGmsg"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/no;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/no<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/bz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bz;-><init>(Lcom/google/android/gms/internal/ads/bu;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/my;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/no;
    .locals 3

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/google/android/gms/internal/ads/nz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/ca;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/ca;-><init>(Lcom/google/android/gms/internal/ads/bu;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/nz;)V

    const-string v2, "/nativeAdPreProcess"

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
