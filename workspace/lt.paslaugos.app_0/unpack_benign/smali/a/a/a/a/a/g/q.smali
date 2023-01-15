.class public La/a/a/a/a/g/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/g/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "La/a/a/a/a/g/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:La/a/a/a/a/g/s;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, La/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, La/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/g/q;->d:Z

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/a/g/q$1;)V
    .locals 0

    invoke-direct {p0}, La/a/a/a/a/g/q;-><init>()V

    return-void
.end method

.method public static a()La/a/a/a/a/g/q;
    .locals 1

    invoke-static {}, La/a/a/a/a/g/q$a;->a()La/a/a/a/a/g/q;

    move-result-object v0

    return-object v0
.end method

.method private a(La/a/a/a/a/g/t;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(La/a/a/a/i;La/a/a/a/a/b/p;La/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/g/q;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, v1, La/a/a/a/a/g/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, v1, La/a/a/a/a/g/q;->c:La/a/a/a/a/g/s;

    const/4 v9, 0x1

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, La/a/a/a/i;->q()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, La/a/a/a/a/b/g;

    invoke-direct {v4}, La/a/a/a/a/b/g;-><init>()V

    invoke-virtual {v4, v2}, La/a/a/a/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->i()Ljava/lang/String;

    move-result-object v4

    new-instance v5, La/a/a/a/a/b/t;

    invoke-direct {v5}, La/a/a/a/a/b/t;-><init>()V

    new-instance v6, La/a/a/a/a/g/k;

    invoke-direct {v6}, La/a/a/a/a/g/k;-><init>()V

    new-instance v7, La/a/a/a/a/g/i;

    invoke-direct {v7, v0}, La/a/a/a/a/g/i;-><init>(La/a/a/a/i;)V

    invoke-static {v2}, La/a/a/a/a/b/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, La/a/a/a/a/g/l;

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    invoke-direct {v8, v0, v12, v3, v10}, La/a/a/a/a/g/l;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;)V

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->k()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->b()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/b/p;->l()Ljava/lang/String;

    move-result-object v17

    new-array v10, v9, [Ljava/lang/String;

    invoke-static {v2}, La/a/a/a/a/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v13

    invoke-static {v10}, La/a/a/a/a/b/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v4}, La/a/a/a/a/b/l;->a(Ljava/lang/String;)La/a/a/a/a/b/l;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/a/a/b/l;->a()I

    move-result v21

    new-instance v4, La/a/a/a/a/g/w;

    move-object v10, v4

    move-object v13, v3

    move-object/from16 v19, p5

    move-object/from16 v20, p4

    invoke-direct/range {v10 .. v22}, La/a/a/a/a/g/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, La/a/a/a/a/g/j;

    move-object v2, v10

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, La/a/a/a/a/g/j;-><init>(La/a/a/a/i;La/a/a/a/a/g/w;La/a/a/a/a/b/k;La/a/a/a/a/g/v;La/a/a/a/a/g/g;La/a/a/a/a/g/x;)V

    iput-object v10, v1, La/a/a/a/a/g/q;->c:La/a/a/a/a/g/s;

    :cond_1
    iput-boolean v9, v1, La/a/a/a/a/g/q;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()La/a/a/a/a/g/t;
    .locals 3

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/g/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, La/a/a/a/a/g/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/g/t;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/g/q;->c:La/a/a/a/a/g/s;

    invoke-interface {v0}, La/a/a/a/a/g/s;->a()La/a/a/a/a/g/t;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/a/a/g/q;->a(La/a/a/a/a/g/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/g/q;->c:La/a/a/a/a/g/s;

    sget-object v1, La/a/a/a/a/g/r;->b:La/a/a/a/a/g/r;

    invoke-interface {v0, v1}, La/a/a/a/a/g/s;->a(La/a/a/a/a/g/r;)La/a/a/a/a/g/t;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/a/a/g/q;->a(La/a/a/a/a/g/t;)V

    if-nez v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
