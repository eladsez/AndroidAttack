.class public abstract Lcom/google/android/gms/internal/ads/ak;
.super Lcom/google/android/gms/internal/ads/ji;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/ap;

.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/lang/Object;

.field protected final d:Ljava/lang/Object;

.field protected final e:Lcom/google/android/gms/internal/ads/it;

.field protected f:Lcom/google/android/gms/internal/ads/dp;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ji;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ak;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->f:Lcom/google/android/gms/internal/ads/dp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ak;->a:Lcom/google/android/gms/internal/ads/ap;

    return-void
.end method


# virtual methods
.method protected abstract a(I)Lcom/google/android/gms/internal/ads/is;
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AdRendererBackgroundTask started."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->e:Lcom/google/android/gms/internal/ads/it;

    iget v1, v1, Lcom/google/android/gms/internal/ads/it;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/ak;->a(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/an; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/an;->a()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/an;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/an;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->f:Lcom/google/android/gms/internal/ads/dp;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/dp;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dp;-><init>(I)V

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->f:Lcom/google/android/gms/internal/ads/dp;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/dp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ak;->f:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/dp;->j:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dp;-><init>(IJ)V

    goto :goto_2

    :goto_3
    sget-object v1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/al;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/al;-><init>(Lcom/google/android/gms/internal/ads/ak;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ak;->a(I)Lcom/google/android/gms/internal/ads/is;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/am;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/am;-><init>(Lcom/google/android/gms/internal/ads/ak;Lcom/google/android/gms/internal/ads/is;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract a(J)V
.end method

.method public b_()V
    .locals 0

    return-void
.end method
