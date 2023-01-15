.class final Lcom/google/android/gms/internal/ara;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/aqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aqz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ara;->a:Lcom/google/android/gms/internal/aqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ara;->a:Lcom/google/android/gms/internal/aqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/aqz;->a(Lcom/google/android/gms/internal/aqz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ara;->a:Lcom/google/android/gms/internal/aqz;

    invoke-static {v1}, Lcom/google/android/gms/internal/aqz;->b(Lcom/google/android/gms/internal/aqz;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ara;->a:Lcom/google/android/gms/internal/aqz;

    invoke-static {v1}, Lcom/google/android/gms/internal/aqz;->c(Lcom/google/android/gms/internal/aqz;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ara;->a:Lcom/google/android/gms/internal/aqz;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aqz;->a(Lcom/google/android/gms/internal/aqz;Z)Z

    const-string v1, "App went background"

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ara;->a:Lcom/google/android/gms/internal/aqz;

    invoke-static {v1}, Lcom/google/android/gms/internal/aqz;->d(Lcom/google/android/gms/internal/aqz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/arb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/arb;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "OnForegroundStateChangedListener threw exception."

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v1, "App is still foreground"

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
