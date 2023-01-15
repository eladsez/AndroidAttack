.class public final Lcom/google/android/gms/internal/bcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/avq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/bck;

.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bcs;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/bcs;->c:Landroid/content/Context;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/bcl;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/bcl;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/bct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bct;-><init>(Lcom/google/android/gms/internal/bcs;)V

    new-instance v1, Lcom/google/android/gms/internal/bcu;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/bcu;-><init>(Lcom/google/android/gms/internal/bcs;Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/bcl;)V

    new-instance p1, Lcom/google/android/gms/internal/bcx;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/bcx;-><init>(Lcom/google/android/gms/internal/bcs;Lcom/google/android/gms/internal/lq;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bcs;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/bck;

    iget-object v4, p0, Lcom/google/android/gms/internal/bcs;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->t()Lcom/google/android/gms/internal/jm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/jm;->a()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/bck;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/bcs;->a:Lcom/google/android/gms/internal/bck;

    iget-object p1, p0, Lcom/google/android/gms/internal/bcs;->a:Lcom/google/android/gms/internal/bck;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/al;->o()V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bcs;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bcs;->a:Lcom/google/android/gms/internal/bck;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bcs;->a:Lcom/google/android/gms/internal/bck;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/bcs;->a:Lcom/google/android/gms/internal/bck;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bcs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bcs;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bcs;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bcs;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bcs;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bcs;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/bcs;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/bcs;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/bcs;)Lcom/google/android/gms/internal/bck;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bcs;->a:Lcom/google/android/gms/internal/bck;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/ayl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ban<",
            "*>;)",
            "Lcom/google/android/gms/internal/ayl;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/bcl;->a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/bcl;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/axt;->cA:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x34

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bcs;->a(Lcom/google/android/gms/internal/bcl;)Ljava/util/concurrent/Future;

    move-result-object p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance v0, Lcom/google/android/gms/internal/bz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bz;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object p1, Lcom/google/android/gms/internal/bco;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bz;->a(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/rk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bco;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/bco;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/bco;->e:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/bco;->f:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/bco;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/bco;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v6, p1, Lcom/google/android/gms/internal/bco;->f:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v9, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ayl;

    iget v7, p1, Lcom/google/android/gms/internal/bco;->c:I

    iget-object v8, p1, Lcom/google/android/gms/internal/bco;->d:[B

    iget-boolean v10, p1, Lcom/google/android/gms/internal/bco;->g:Z

    iget-wide v11, p1, Lcom/google/android/gms/internal/bco;->h:J

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ayl;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Http assets remote cache took "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/df;

    iget-object p1, p1, Lcom/google/android/gms/internal/bco;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/df;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Http assets remote cache took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    throw p1

    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    sub-long/2addr v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Http assets remote cache took "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    return-object v4
.end method
