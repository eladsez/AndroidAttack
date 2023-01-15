.class final Lcom/google/android/gms/internal/bfr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/bfm;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bfj;

.field private synthetic b:Lcom/google/android/gms/internal/bfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bfp;Lcom/google/android/gms/internal/bfj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bfr;->b:Lcom/google/android/gms/internal/bfp;

    iput-object p2, p0, Lcom/google/android/gms/internal/bfr;->a:Lcom/google/android/gms/internal/bfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/bfm;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bfr;->b:Lcom/google/android/gms/internal/bfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bfp;->a(Lcom/google/android/gms/internal/bfp;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bfr;->b:Lcom/google/android/gms/internal/bfp;

    invoke-static {v1}, Lcom/google/android/gms/internal/bfp;->b(Lcom/google/android/gms/internal/bfp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bfr;->a:Lcom/google/android/gms/internal/bfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/bfr;->b:Lcom/google/android/gms/internal/bfp;

    invoke-static {v1}, Lcom/google/android/gms/internal/bfp;->c(Lcom/google/android/gms/internal/bfp;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/bfr;->b:Lcom/google/android/gms/internal/bfp;

    invoke-static {v3}, Lcom/google/android/gms/internal/bfp;->d(Lcom/google/android/gms/internal/bfp;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/bfj;->a(JJ)Lcom/google/android/gms/internal/bfm;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bfr;->a()Lcom/google/android/gms/internal/bfm;

    move-result-object v0

    return-object v0
.end method
