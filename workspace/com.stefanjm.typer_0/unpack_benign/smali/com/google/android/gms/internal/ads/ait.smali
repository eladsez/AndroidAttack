.class public final Lcom/google/android/gms/internal/ads/ait;
.super Lcom/google/android/gms/internal/ads/ajk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ahz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aaa;II)V
    .locals 7

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ajk;-><init>(Lcom/google/android/gms/internal/ads/ahz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aaa;II)V

    return-void
.end method

.method private final c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ait;->a:Lcom/google/android/gms/internal/ads/ahz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahz;->m()Lcom/google/android/gms/ads/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a;->b()Lcom/google/android/gms/ads/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aih;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ait;->b:Lcom/google/android/gms/internal/ads/aaa;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ait;->b:Lcom/google/android/gms/internal/ads/aaa;

    iput-object v1, v3, Lcom/google/android/gms/internal/ads/aaa;->T:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ait;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aaa;->V:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ait;->b:Lcom/google/android/gms/internal/ads/aaa;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/aaa;->U:Ljava/lang/Integer;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ait;->a:Lcom/google/android/gms/internal/ads/ahz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahz;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ait;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ait;->b:Lcom/google/android/gms/internal/ads/aaa;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ait;->b:Lcom/google/android/gms/internal/ads/aaa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ait;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ait;->a:Lcom/google/android/gms/internal/ads/ahz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ahz;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aaa;->T:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ait;->a:Lcom/google/android/gms/internal/ads/ahz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ajk;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ait;->a:Lcom/google/android/gms/internal/ads/ahz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahz;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ait;->c()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajk;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
