.class public final Lcom/google/android/gms/internal/bje;
.super Lcom/google/android/gms/internal/ha;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/bix;

.field private final b:Lcom/google/android/gms/internal/bn;

.field private final c:Lcom/google/android/gms/internal/gm;

.field private final d:Lcom/google/android/gms/internal/bji;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/gl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/ayg;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/bji;

    new-instance v3, Lcom/google/android/gms/internal/jb;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/jb;-><init>(Landroid/content/Context;)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/bji;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/ayg;)V

    invoke-direct {p0, p3, p5, v7}, Lcom/google/android/gms/internal/bje;-><init>(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/bji;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/bji;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ha;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bje;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object p1, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iput-object p2, p0, Lcom/google/android/gms/internal/bje;->a:Lcom/google/android/gms/internal/bix;

    iput-object p3, p0, Lcom/google/android/gms/internal/bje;->d:Lcom/google/android/gms/internal/bji;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bje;)Lcom/google/android/gms/internal/bix;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bje;->a:Lcom/google/android/gms/internal/bix;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 44

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/bje;->e:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/bje;->d:Lcom/google/android/gms/internal/bji;

    sget-object v5, Lcom/google/android/gms/internal/hm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/hm;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/bje;->f:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/bje;->f:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, -0x2

    move-object v3, v0

    const/4 v8, -0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v8, 0x0

    goto :goto_0

    :catch_1
    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    const/4 v2, 0x2

    iget-object v0, v1, Lcom/google/android/gms/internal/bje;->f:Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v8, 0x2

    :goto_0
    if-eqz v3, :cond_0

    move-object v0, v3

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gl;

    move-object v4, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v5, v2, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iget v11, v2, Lcom/google/android/gms/internal/bn;->k:I

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v12, v2, Lcom/google/android/gms/internal/bn;->j:J

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v14, v2, Lcom/google/android/gms/internal/bj;->i:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/bn;->h:J

    move-wide/from16 v21, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    move-object/from16 v23, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/bn;->f:J

    move-wide/from16 v24, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-wide v2, v2, Lcom/google/android/gms/internal/gm;->f:J

    move-wide/from16 v26, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/bn;->m:J

    move-wide/from16 v28, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->n:Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->h:Lorg/json/JSONObject;

    move-object/from16 v31, v2

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bn;->D:Z

    move/from16 v36, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->E:Lcom/google/android/gms/internal/bp;

    move-object/from16 v37, v2

    const/16 v38, 0x0

    const/16 v39, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->b:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->L:Ljava/lang/String;

    move-object/from16 v40, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    move-object/from16 v41, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/bje;->c:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bn;->O:Z

    move/from16 v42, v2

    const/16 v43, 0x0

    invoke-direct/range {v4 .. v43}, Lcom/google/android/gms/internal/gl;-><init>(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/nu;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bff;Lcom/google/android/gms/internal/bfz;Ljava/lang/String;Lcom/google/android/gms/internal/bfg;Lcom/google/android/gms/internal/bfi;JLcom/google/android/gms/internal/auh;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/azj;Lcom/google/android/gms/internal/fk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/bp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/asl;ZZ)V

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/bjf;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/bjf;-><init>(Lcom/google/android/gms/internal/bje;Lcom/google/android/gms/internal/gl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bje;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bje;->f:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bje;->f:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
