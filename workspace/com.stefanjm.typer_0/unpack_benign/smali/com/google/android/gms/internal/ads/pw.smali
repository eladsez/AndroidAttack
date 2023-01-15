.class public final Lcom/google/android/gms/internal/ads/pw;
.super Lcom/google/android/gms/internal/ads/ji;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/pn;

.field final b:Lcom/google/android/gms/internal/ads/pz;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pn;Lcom/google/android/gms/internal/ads/pz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ji;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pw;->a:Lcom/google/android/gms/internal/ads/pn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pw;->b:Lcom/google/android/gms/internal/ads/pz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pw;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->z()Lcom/google/android/gms/internal/ads/py;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/py;->a(Lcom/google/android/gms/internal/ads/pw;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->b:Lcom/google/android/gms/internal/ads/pz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pz;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/px;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/px;-><init>(Lcom/google/android/gms/internal/ads/pw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/px;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/px;-><init>(Lcom/google/android/gms/internal/ads/pw;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final b_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw;->b:Lcom/google/android/gms/internal/ads/pz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pz;->b()V

    return-void
.end method
