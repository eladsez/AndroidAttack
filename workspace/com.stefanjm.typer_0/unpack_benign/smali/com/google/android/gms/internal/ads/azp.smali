.class public final Lcom/google/android/gms/internal/ads/azp;
.super Lcom/google/android/gms/internal/ads/bac;

# interfaces
.implements Lcom/google/android/gms/internal/ads/azy;
.implements Lcom/google/android/gms/internal/ads/bae;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/bac<",
        "Lcom/google/android/gms/internal/ads/bbn;",
        ">;",
        "Lcom/google/android/gms/internal/ads/azy;",
        "Lcom/google/android/gms/internal/ads/bae;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bac;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/sp;

    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/sb;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/sp;-><init>(Lcom/google/android/gms/internal/ads/sb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sp;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    new-instance v1, Lcom/google/android/gms/internal/ads/azq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/azq;-><init>(Lcom/google/android/gms/internal/ads/azp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sm;->a(Lcom/google/android/gms/internal/ads/sr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    new-instance v1, Lcom/google/android/gms/internal/ads/azr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/azr;-><init>(Lcom/google/android/gms/internal/ads/azp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sm;->a(Lcom/google/android/gms/internal/ads/st;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    new-instance v1, Lcom/google/android/gms/internal/ads/azx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/azx;-><init>(Lcom/google/android/gms/internal/ads/bab;Lcom/google/android/gms/internal/ads/azw;)V

    const-string v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sm;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/qz;

    const-string v0, "Init failed."

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sp;->destroy()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/baf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    new-instance v1, Lcom/google/android/gms/internal/ads/azu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/azu;-><init>(Lcom/google/android/gms/internal/ads/baf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sm;->a(Lcom/google/android/gms/internal/ads/sv;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/azp;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->a(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->a(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->b(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/bbo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bbp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bbp;-><init>(Lcom/google/android/gms/internal/ads/bbn;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/azv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/azv;-><init>(Lcom/google/android/gms/internal/ads/azp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->a(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/azs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/azs;-><init>(Lcom/google/android/gms/internal/ads/azp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/azt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/azt;-><init>(Lcom/google/android/gms/internal/ads/azp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sm;->b(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sm;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic g(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/sp;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/sp;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic o()Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    return-object p0
.end method
