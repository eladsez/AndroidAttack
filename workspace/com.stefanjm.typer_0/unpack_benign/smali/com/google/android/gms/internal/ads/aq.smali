.class public Lcom/google/android/gms/internal/ads/aq;
.super Lcom/google/android/gms/internal/ads/ai;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/ap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ai;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/ap;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aq;->c:Lcom/google/android/gms/internal/ads/dp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dp;->d:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aq;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/rx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aq;->d()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aq;->b:Lcom/google/android/gms/internal/ads/qo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aq;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aq;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
