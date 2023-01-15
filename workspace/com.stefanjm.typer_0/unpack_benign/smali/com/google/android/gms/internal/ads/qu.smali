.class final Lcom/google/android/gms/internal/ads/qu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/n;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/qo;

.field private b:Lcom/google/android/gms/ads/internal/overlay/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/ads/internal/overlay/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qu;->a:Lcom/google/android/gms/internal/ads/qo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qu;->b:Lcom/google/android/gms/ads/internal/overlay/n;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qu;->b:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/n;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qu;->a:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->o()V

    return-void
.end method

.method public final t_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qu;->b:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/n;->t_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qu;->a:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->n()V

    return-void
.end method
