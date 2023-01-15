.class final Lcom/google/android/gms/internal/ads/ayo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/azb;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ati;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ayn;Lcom/google/android/gms/internal/ads/ati;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ayo;->a:Lcom/google/android/gms/internal/ads/ati;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/azc;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/azc;->d:Lcom/google/android/gms/internal/ads/atl;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/azc;->d:Lcom/google/android/gms/internal/ads/atl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayo;->a:Lcom/google/android/gms/internal/ads/ati;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/atl;->a(Lcom/google/android/gms/internal/ads/ati;)V

    :cond_0
    return-void
.end method
