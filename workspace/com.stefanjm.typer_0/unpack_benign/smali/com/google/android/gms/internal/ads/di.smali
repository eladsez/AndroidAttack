.class public final Lcom/google/android/gms/internal/ads/di;
.super Lcom/google/android/gms/internal/ads/de;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/dc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/ob<",
            "Lcom/google/android/gms/internal/ads/dl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/de;-><init>(Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/dc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/di;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/di;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/di;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/et;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/et;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/eu;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/et;)Lcom/google/android/gms/internal/ads/eu;

    move-result-object v0

    return-object v0
.end method
