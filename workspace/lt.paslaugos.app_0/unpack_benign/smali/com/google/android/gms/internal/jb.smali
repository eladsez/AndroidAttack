.class public final Lcom/google/android/gms/internal/jb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/bep;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/internal/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jh<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jb;->b:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/jc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jb;->c:Lcom/google/android/gms/internal/jh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/jb;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bep;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/internal/bep;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/jb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/bep;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/axt;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/axt;->cy:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/iv;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bep;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ij;

    new-instance v2, Lcom/google/android/gms/internal/qb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/qb;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ij;-><init>(Lcom/google/android/gms/internal/hi;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "volley"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/bep;

    new-instance v3, Lcom/google/android/gms/internal/lm;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/lm;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/bep;-><init>(Lcom/google/android/gms/internal/qj;Lcom/google/android/gms/internal/avq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bep;->a()V

    :goto_0
    sput-object p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/bep;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/bep;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/lf;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/lf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    new-instance v10, Lcom/google/android/gms/internal/ji;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ji;-><init>(Lcom/google/android/gms/internal/jc;)V

    new-instance v6, Lcom/google/android/gms/internal/jf;

    move-object v11, p0

    invoke-direct {v6, p0, v0, v10}, Lcom/google/android/gms/internal/jf;-><init>(Lcom/google/android/gms/internal/jb;Ljava/lang/String;Lcom/google/android/gms/internal/ji;)V

    new-instance v12, Lcom/google/android/gms/internal/kd;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/kd;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/internal/jg;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/jg;-><init>(Lcom/google/android/gms/internal/jb;ILjava/lang/String;Lcom/google/android/gms/internal/bij;Lcom/google/android/gms/internal/bhi;[BLjava/util/Map;Lcom/google/android/gms/internal/kd;)V

    invoke-static {}, Lcom/google/android/gms/internal/kd;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ban;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ban;->a()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/bep;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/bep;->a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/ban;

    return-object v10
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/jh;)Lcom/google/android/gms/internal/lf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/jh<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/lf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lq;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/internal/bep;

    new-instance v2, Lcom/google/android/gms/internal/jj;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/jj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/lq;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bep;->a(Lcom/google/android/gms/internal/ban;)Lcom/google/android/gms/internal/ban;

    new-instance p1, Lcom/google/android/gms/internal/je;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/je;-><init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/jh;)V

    sget-object v1, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/kq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/lf;

    move-result-object p1

    const-class v0, Ljava/lang/Throwable;

    new-instance v1, Lcom/google/android/gms/internal/jd;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/jd;-><init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/internal/jh;)V

    sget-object p2, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/Class;Lcom/google/android/gms/internal/kp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/lf;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/lf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/lf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/jb;->a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/lf;

    move-result-object p1

    return-object p1
.end method
