.class public final Lcom/google/android/gms/internal/ads/atw;
.super Lcom/google/android/gms/internal/ads/avv;

# interfaces
.implements Lcom/google/android/gms/internal/ads/aul;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/atv;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/avf;

.field private e:Ljava/lang/String;

.field private f:D

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/internal/ads/atr;

.field private j:Landroid/os/Bundle;

.field private k:Lcom/google/android/gms/internal/ads/aqv;

.field private l:Landroid/view/View;

.field private m:Lcom/google/android/gms/b/a;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Object;

.field private p:Lcom/google/android/gms/internal/ads/auh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/atv;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/avf;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/atr;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/ads/aqv;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/b/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/avv;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->o:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->b:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->d:Lcom/google/android/gms/internal/ads/avf;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->e:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/atw;->f:D

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->g:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->h:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->i:Lcom/google/android/gms/internal/ads/atr;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->j:Landroid/os/Bundle;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->k:Lcom/google/android/gms/internal/ads/aqv;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->l:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->m:Lcom/google/android/gms/b/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/atw;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/atw;)Lcom/google/android/gms/internal/ads/auh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/atw;Lcom/google/android/gms/internal/ads/auh;)Lcom/google/android/gms/internal/ads/auh;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    if-nez v1, :cond_0

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/auh;->b(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/auh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    if-nez v1, :cond_0

    const-string p1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/auh;->a(Landroid/os/Bundle;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    if-nez v1, :cond_0

    const-string p1, "#003 Attempt to report touch event before native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/auh;->c(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Lcom/google/android/gms/internal/ads/avf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->d:Lcom/google/android/gms/internal/ads/avf;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/atw;->f:D

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/aqv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->k:Lcom/google/android/gms/internal/ads/aqv;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->p:Lcom/google/android/gms/internal/ads/auh;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/atr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->i:Lcom/google/android/gms/internal/ads/atr;

    return-object v0
.end method

.method public final n()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->l:Landroid/view/View;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->m:Lcom/google/android/gms/b/a;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/ads/avb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->i:Lcom/google/android/gms/internal/ads/atr;

    return-object v0
.end method

.method public final s()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/atx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/atx;-><init>(Lcom/google/android/gms/internal/ads/atw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->d:Lcom/google/android/gms/internal/ads/avf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->e:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/atw;->f:D

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->i:Lcom/google/android/gms/internal/ads/atr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->j:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->o:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->k:Lcom/google/android/gms/internal/ads/aqv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw;->l:Landroid/view/View;

    return-void
.end method
