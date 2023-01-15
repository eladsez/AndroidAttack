.class public final Lcom/google/android/gms/internal/gq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/apf;

.field private final c:Lcom/google/android/gms/internal/gw;

.field private final d:Lcom/google/android/gms/internal/hg;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/internal/km;

.field private h:Lcom/google/android/gms/internal/axw;

.field private i:Lcom/google/android/gms/internal/arc;

.field private j:Lcom/google/android/gms/internal/aqx;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/String;

.field private final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final n:Lcom/google/android/gms/internal/gs;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gq;->c:Lcom/google/android/gms/internal/gw;

    new-instance v0, Lcom/google/android/gms/internal/hg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gq;->d:Lcom/google/android/gms/internal/hg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gq;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/gq;->h:Lcom/google/android/gms/internal/axw;

    iput-object v1, p0, Lcom/google/android/gms/internal/gq;->i:Lcom/google/android/gms/internal/arc;

    iput-object v1, p0, Lcom/google/android/gms/internal/gq;->j:Lcom/google/android/gms/internal/aqx;

    iput-object v1, p0, Lcom/google/android/gms/internal/gq;->k:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/gq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/internal/gs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/internal/gr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gq;->n:Lcom/google/android/gms/internal/gs;

    return-void
.end method

.method private final a(Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/arc;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/axt;->M:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/axt;->U:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/axt;->S:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    return-object v1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/gq;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_6

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/google/android/gms/internal/gq;->j:Lcom/google/android/gms/internal/aqx;

    if-nez p3, :cond_4

    new-instance p3, Lcom/google/android/gms/internal/aqx;

    invoke-direct {p3}, Lcom/google/android/gms/internal/aqx;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/gq;->j:Lcom/google/android/gms/internal/aqx;

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/gq;->i:Lcom/google/android/gms/internal/arc;

    if-nez p3, :cond_5

    new-instance p3, Lcom/google/android/gms/internal/arc;

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->j:Lcom/google/android/gms/internal/aqx;

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->g:Lcom/google/android/gms/internal/km;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ae;->a(Landroid/content/Context;Lcom/google/android/gms/internal/km;)Lcom/google/android/gms/internal/ai;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/google/android/gms/internal/arc;-><init>(Lcom/google/android/gms/internal/aqx;Lcom/google/android/gms/internal/ai;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/gq;->i:Lcom/google/android/gms/internal/arc;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/gq;->i:Lcom/google/android/gms/internal/arc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/arc;->a()V

    const-string p1, "start fetching content..."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gq;->i:Lcom/google/android/gms/internal/arc;

    monitor-exit p2

    return-object p1

    :cond_6
    :goto_0
    monitor-exit p2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/arc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->d:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hg;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->d:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hg;->d()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/gq;->a(Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/arc;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/google/android/gms/internal/gw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->c:Lcom/google/android/gms/internal/gw;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/km;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/gq;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gq;->g:Lcom/google/android/gms/internal/km;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->h()Lcom/google/android/gms/internal/aqy;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->j()Lcom/google/android/gms/internal/gy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aqy;->a(Lcom/google/android/gms/internal/arb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->d:Lcom/google/android/gms/internal/hg;

    iget-object v2, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hg;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->d:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/hg;->a(Lcom/google/android/gms/internal/hl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/gq;->g:Lcom/google/android/gms/internal/km;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ae;->a(Landroid/content/Context;Lcom/google/android/gms/internal/km;)Lcom/google/android/gms/internal/ai;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/gq;->l:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/apf;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->g:Lcom/google/android/gms/internal/km;

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/apf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gq;->b:Lcom/google/android/gms/internal/apf;

    new-instance p1, Lcom/google/android/gms/internal/axv;

    iget-object p2, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->g:Lcom/google/android/gms/internal/km;

    iget-object v1, v1, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/axv;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->n()Lcom/google/android/gms/internal/axy;

    invoke-static {p1}, Lcom/google/android/gms/internal/axy;->a(Lcom/google/android/gms/internal/axv;)Lcom/google/android/gms/internal/axw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gq;->h:Lcom/google/android/gms/internal/axw;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Cannot initialize CSI reporter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gq;->e:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content_vertical_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    const-string v1, "content_url_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "content_vertical_opted_out"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/gq;->a(Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/arc;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/gq;->k:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->g:Lcom/google/android/gms/internal/km;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Landroid/content/Context;Lcom/google/android/gms/internal/km;)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ai;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->n:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gs;->a(Z)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/axw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->h:Lcom/google/android/gms/internal/axw;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->k:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->n:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gs;->a()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->n:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gs;->b()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->n:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gs;->c()V

    return-void
.end method

.method public final g()Lcom/google/android/gms/internal/apf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->b:Lcom/google/android/gms/internal/apf;

    return-object v0
.end method

.method public final h()Landroid/content/res/Resources;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->g:Lcom/google/android/gms/internal/km;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/km;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->f:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Lcom/google/android/gms/dynamite/DynamiteModule$d;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$d;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final l()Lcom/google/android/gms/internal/hg;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gq;->d:Lcom/google/android/gms/internal/hg;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
