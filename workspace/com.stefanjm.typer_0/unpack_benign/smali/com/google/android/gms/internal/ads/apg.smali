.class final Lcom/google/android/gms/internal/ads/apg;
.super Lcom/google/android/gms/internal/ads/aoy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/aoy$a<",
        "Lcom/google/android/gms/internal/ads/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoy;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apg;->b:Lcom/google/android/gms/internal/ads/aoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apg;->a:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aoy$a;-><init>(Lcom/google/android/gms/internal/ads/aoy;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apg;->b:Lcom/google/android/gms/internal/ads/aoy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoy;->f(Lcom/google/android/gms/internal/ads/aoy;)Lcom/google/android/gms/internal/ads/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apg;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apg;->b:Lcom/google/android/gms/internal/ads/aoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apg;->a:Landroid/app/Activity;

    const-string v2, "ad_overlay"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aoy;->a(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqk;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apg;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/aqk;->createAdOverlay(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/internal/ads/r;

    move-result-object p1

    return-object p1
.end method
