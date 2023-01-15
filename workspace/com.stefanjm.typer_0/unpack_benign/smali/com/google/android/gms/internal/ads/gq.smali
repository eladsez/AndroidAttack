.class public final Lcom/google/android/gms/internal/ads/gq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/gc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gq;->a:Lcom/google/android/gms/internal/ads/gc;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gq;->a:Lcom/google/android/gms/internal/ads/gc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gq;->a:Lcom/google/android/gms/internal/ads/gc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gc;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Could not forward getType to RewardItem"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/mt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gq;->a:Lcom/google/android/gms/internal/ads/gc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gq;->a:Lcom/google/android/gms/internal/ads/gc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gc;->b()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "Could not forward getAmount to RewardItem"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/mt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
