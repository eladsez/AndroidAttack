.class final Lcom/google/android/gms/internal/ads/ayj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/azb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ayc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/azc;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/azc;->a:Lcom/google/android/gms/internal/ads/apn;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/azc;->a:Lcom/google/android/gms/internal/ads/apn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/apn;->f()V

    :cond_0
    return-void
.end method
