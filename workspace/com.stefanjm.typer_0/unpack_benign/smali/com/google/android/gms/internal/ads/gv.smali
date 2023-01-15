.class public final Lcom/google/android/gms/internal/ads/gv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gh;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/gms/internal/ads/gs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/gh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gv;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/gs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/gs;-><init>(Lcom/google/android/gms/ads/reward/c;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gv;->d:Lcom/google/android/gms/internal/ads/gs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gv;->a:Lcom/google/android/gms/internal/ads/gh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gv;->b:Landroid/content/Context;

    return-void
.end method
