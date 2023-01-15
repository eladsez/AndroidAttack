.class final Lcom/google/android/gms/internal/ads/ape;
.super Lcom/google/android/gms/internal/ads/aoy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/aoy$a<",
        "Lcom/google/android/gms/internal/ads/gh;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bda;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/aoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Lcom/google/android/gms/internal/ads/bda;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ape;->c:Lcom/google/android/gms/internal/ads/aoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ape;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ape;->b:Lcom/google/android/gms/internal/ads/bda;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aoy$a;-><init>(Lcom/google/android/gms/internal/ads/aoy;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ape;->c:Lcom/google/android/gms/internal/ads/aoy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoy;->e(Lcom/google/android/gms/internal/ads/aoy;)Lcom/google/android/gms/internal/ads/gr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ape;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ape;->b:Lcom/google/android/gms/internal/ads/bda;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gr;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bda;)Lcom/google/android/gms/internal/ads/gh;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ape;->c:Lcom/google/android/gms/internal/ads/aoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ape;->a:Landroid/content/Context;

    const-string v2, "rewarded_video"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aoy;->a(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/aru;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aru;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqk;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ape;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ape;->b:Lcom/google/android/gms/internal/ads/bda;

    const v2, 0xbdfcb8

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/aqk;->createRewardedVideoAd(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/bda;I)Lcom/google/android/gms/internal/ads/gh;

    move-result-object p1

    return-object p1
.end method
