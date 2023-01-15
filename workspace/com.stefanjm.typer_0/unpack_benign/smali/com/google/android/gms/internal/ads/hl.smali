.class public final Lcom/google/android/gms/internal/ads/hl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bdd;

.field private final b:Lcom/google/android/gms/internal/ads/he;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bdd;Lcom/google/android/gms/internal/ads/hd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hl;->a:Lcom/google/android/gms/internal/ads/bdd;

    new-instance p1, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/he;-><init>(Lcom/google/android/gms/internal/ads/hd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hl;->b:Lcom/google/android/gms/internal/ads/he;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/bdd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->a:Lcom/google/android/gms/internal/ads/bdd;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/he;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->b:Lcom/google/android/gms/internal/ads/he;

    return-object v0
.end method
