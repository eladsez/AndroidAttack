.class public final Lcom/google/android/gms/internal/ads/axh;
.super Lcom/google/android/gms/internal/ads/awh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/g$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/g$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/awh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axh;->a:Lcom/google/android/gms/ads/b/g$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/avu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axh;->a:Lcom/google/android/gms/ads/b/g$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/avx;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/avx;-><init>(Lcom/google/android/gms/internal/ads/avu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/g$a;->a(Lcom/google/android/gms/ads/b/g;)V

    return-void
.end method
