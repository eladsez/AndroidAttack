.class final Lcom/google/android/gms/internal/ads/bcv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/bcr;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bco;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bcu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcu;Lcom/google/android/gms/internal/ads/bco;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcv;->b:Lcom/google/android/gms/internal/ads/bcu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcv;->a:Lcom/google/android/gms/internal/ads/bco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/bcr;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcv;->b:Lcom/google/android/gms/internal/ads/bcu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcu;->a(Lcom/google/android/gms/internal/ads/bcu;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcv;->b:Lcom/google/android/gms/internal/ads/bcu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bcu;->b(Lcom/google/android/gms/internal/ads/bcu;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcv;->a:Lcom/google/android/gms/internal/ads/bco;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcv;->b:Lcom/google/android/gms/internal/ads/bcu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bcu;->c(Lcom/google/android/gms/internal/ads/bcu;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bcv;->b:Lcom/google/android/gms/internal/ads/bcu;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bcu;->d(Lcom/google/android/gms/internal/ads/bcu;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bco;->a(JJ)Lcom/google/android/gms/internal/ads/bcr;

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

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bcv;->a()Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v0

    return-object v0
.end method
