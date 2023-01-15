.class public final Lcom/google/android/gms/ads/internal/js/z;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/km;

.field private e:Lcom/google/android/gms/internal/iw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/iw<",
            "Lcom/google/android/gms/ads/internal/js/o;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/iw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/iw<",
            "Lcom/google/android/gms/ads/internal/js/o;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/ads/internal/js/f;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/z;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/z;->d:Lcom/google/android/gms/internal/km;

    new-instance p1, Lcom/google/android/gms/ads/internal/js/al;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/js/al;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->e:Lcom/google/android/gms/internal/iw;

    new-instance p1, Lcom/google/android/gms/ads/internal/js/al;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/js/al;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->f:Lcom/google/android/gms/internal/iw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Ljava/lang/String;Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/km;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/iw<",
            "Lcom/google/android/gms/ads/internal/js/o;",
            ">;",
            "Lcom/google/android/gms/internal/iw<",
            "Lcom/google/android/gms/ads/internal/js/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/js/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/js/z;->e:Lcom/google/android/gms/internal/iw;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/js/z;->f:Lcom/google/android/gms/internal/iw;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/js/z;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;)Lcom/google/android/gms/ads/internal/js/f;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/js/z;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/z;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/js/z;)Lcom/google/android/gms/ads/internal/js/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/js/z;)Lcom/google/android/gms/internal/iw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/z;->e:Lcom/google/android/gms/internal/iw;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/internal/js/z;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    return p0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/f;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/internal/js/f;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/z;->f:Lcom/google/android/gms/internal/iw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/js/f;-><init>(Lcom/google/android/gms/internal/iw;)V

    sget-object v1, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/ads/internal/js/aa;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/ads/internal/js/aa;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/ads/internal/js/f;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/js/ai;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/ads/internal/js/ai;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/js/aj;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/js/aj;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lv;Lcom/google/android/gms/internal/lt;)V

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/ads/internal/js/f;Lcom/google/android/gms/ads/internal/js/o;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lw;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lw;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lw;->d()V

    sget-object p1, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/js/ad;->a(Lcom/google/android/gms/ads/internal/js/o;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/ads/internal/js/f;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/z;->d:Lcom/google/android/gms/internal/km;

    new-instance v2, Lcom/google/android/gms/ads/internal/js/q;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/gms/ads/internal/js/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/ads/internal/br;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/ads/internal/js/ab;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/ads/internal/js/ab;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;Lcom/google/android/gms/ads/internal/js/o;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/ads/internal/js/o;->a(Lcom/google/android/gms/ads/internal/js/p;)V

    const-string v0, "/jsLoaded"

    new-instance v1, Lcom/google/android/gms/ads/internal/js/ae;

    invoke-direct {v1, p0, p2, v2}, Lcom/google/android/gms/ads/internal/js/ae;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;Lcom/google/android/gms/ads/internal/js/o;)V

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/ads/internal/js/o;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    new-instance v0, Lcom/google/android/gms/internal/jq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jq;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/internal/js/af;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/google/android/gms/ads/internal/js/af;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/ads/internal/js/o;Lcom/google/android/gms/internal/jq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jq;->a(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/ads/internal/js/o;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->c:Ljava/lang/String;

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->c:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/ads/internal/js/o;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->c:Ljava/lang/String;

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->c:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/ads/internal/js/o;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->c:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/ads/internal/js/o;->b(Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/js/ag;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/ads/internal/js/ag;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;Lcom/google/android/gms/ads/internal/js/o;)V

    sget p2, Lcom/google/android/gms/ads/internal/js/ak;->a:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error creating webview."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gq;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/lw;->d()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/b;
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/z;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lw;->e()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/f;->a()Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/js/z;->a(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/f;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/f;->a()Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/f;->a()Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/f;->a()Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_4
    :goto_0
    iput v2, p0, Lcom/google/android/gms/ads/internal/js/z;->h:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/js/z;->a(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/z;->g:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/f;->a()Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
