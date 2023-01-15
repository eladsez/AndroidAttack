.class final Lcom/google/android/gms/internal/ads/azc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ads/apn;

.field b:Lcom/google/android/gms/internal/ads/aqd;

.field c:Lcom/google/android/gms/internal/ads/aqh;

.field d:Lcom/google/android/gms/internal/ads/atl;

.field e:Lcom/google/android/gms/internal/ads/apk;

.field f:Lcom/google/android/gms/internal/ads/gn;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/ads/internal/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->a:Lcom/google/android/gms/internal/ads/apn;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/azd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azc;->a:Lcom/google/android/gms/internal/ads/apn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/azd;-><init>(Lcom/google/android/gms/internal/ads/apn;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apn;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->b:Lcom/google/android/gms/internal/ads/aqd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->b:Lcom/google/android/gms/internal/ads/aqd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aqd;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->c:Lcom/google/android/gms/internal/ads/aqh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->c:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aqh;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->d:Lcom/google/android/gms/internal/ads/atl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->d:Lcom/google/android/gms/internal/ads/atl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/atl;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->e:Lcom/google/android/gms/internal/ads/apk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->e:Lcom/google/android/gms/internal/ads/apk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apk;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->f:Lcom/google/android/gms/internal/ads/gn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->f:Lcom/google/android/gms/internal/ads/gn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/gn;)V

    :cond_5
    return-void
.end method
