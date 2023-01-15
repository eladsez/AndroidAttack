.class public final Lcom/google/android/gms/internal/dw;
.super Lcom/google/android/gms/internal/ee;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/km;

.field private final d:Lcom/google/android/gms/internal/dx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/dx;

    invoke-static {}, Lcom/google/android/gms/internal/auh;->a()Lcom/google/android/gms/internal/auh;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;)V

    invoke-direct {p0, p1, p4, v6}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/dx;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/dx;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ee;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/dw;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/dw;->c:Lcom/google/android/gms/internal/km;

    iput-object p3, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dx;->H()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/google/android/gms/b/a;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->o()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ej;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ej;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ep;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/ep;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->c(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/b/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Unable to extract updated context."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/a;->p()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dx;->I()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/b/a;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/b/a;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->j()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->b(Lcom/google/android/gms/b/a;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->c(Lcom/google/android/gms/b/a;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->d:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/az;->a()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
