.class final Lcom/google/android/gms/internal/ads/ayn;
.super Lcom/google/android/gms/internal/ads/atm;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ayb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ayb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayn;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/atm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ati;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayn;->a:Lcom/google/android/gms/internal/ads/ayb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayb;->a(Lcom/google/android/gms/internal/ads/ayb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ayo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ayo;-><init>(Lcom/google/android/gms/internal/ads/ayn;Lcom/google/android/gms/internal/ads/ati;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
