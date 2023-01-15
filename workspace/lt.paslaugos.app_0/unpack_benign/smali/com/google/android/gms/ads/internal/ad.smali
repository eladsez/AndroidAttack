.class public final Lcom/google/android/gms/ads/internal/ad;
.super Lcom/google/android/gms/ads/internal/az;

# interfaces
.implements Lcom/google/android/gms/internal/azi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final j:Ljava/lang/Object;

.field private k:Z

.field private l:Lcom/google/android/gms/internal/lq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/lq<",
            "Lcom/google/android/gms/internal/azj;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/gms/internal/nu;

.field private n:Z

.field private o:I

.field private p:Lcom/google/android/gms/internal/p;

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/ad;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/az;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ad;->j:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/lq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/lq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ad;->l:Lcom/google/android/gms/internal/lq;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/ads/internal/ad;->o:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ad;->q:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/ad;->k:Z

    return-void
.end method

.method private final Y()Lcom/google/android/gms/internal/bfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gl;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->q:Lcom/google/android/gms/internal/bfg;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final Z()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ad;->G()Lcom/google/android/gms/internal/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/p;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/azj;)Lcom/google/android/gms/internal/azd;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/ad;->b(Lcom/google/android/gms/internal/azj;)Lcom/google/android/gms/internal/azd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/ads/internal/aw;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/ads/internal/aw;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/ads/internal/aw;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->w:Lcom/google/android/gms/internal/axc;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->w:Lcom/google/android/gms/internal/axc;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->w:Lcom/google/android/gms/internal/axc;

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->E:Lcom/google/android/gms/internal/gx;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->E:Lcom/google/android/gms/internal/gx;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->E:Lcom/google/android/gms/internal/gx;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->m:Lcom/google/android/gms/internal/auv;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->m:Lcom/google/android/gms/internal/auv;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->m:Lcom/google/android/gms/internal/auv;

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->k:Lcom/google/android/gms/internal/gm;

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/aw;->k:Lcom/google/android/gms/internal/gm;

    iput-object p0, p1, Lcom/google/android/gms/ads/internal/aw;->k:Lcom/google/android/gms/internal/gm;

    :cond_d
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ayw;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/ah;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/ah;-><init>(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/ayw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ayy;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/ai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/ai;-><init>(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/ayy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/azd;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bbw;->a(Lcom/google/android/gms/internal/bbz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onUnifiedNativeAdLoadedListener.onUnifiedNativeAdLoaded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/azj;)Lcom/google/android/gms/internal/azd;
    .locals 19

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/ayy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ayy;

    new-instance v1, Lcom/google/android/gms/internal/azd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->f()Lcom/google/android/gms/internal/baf;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->h()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->m()Lcom/google/android/gms/internal/ayt;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->i()Lcom/google/android/gms/internal/awd;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->o()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->c()Lcom/google/android/gms/b/a;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->d()Ljava/lang/String;

    move-result-object v18

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/azd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/baf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ayt;Lcom/google/android/gms/internal/awd;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->j()Lcom/google/android/gms/b/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayy;->j()Lcom/google/android/gms/b/a;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ayw;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ayw;

    new-instance v1, Lcom/google/android/gms/internal/azd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->e()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->f()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->m()Lcom/google/android/gms/internal/ayt;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->i()Lcom/google/android/gms/internal/awd;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->o()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->p()Lcom/google/android/gms/b/a;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->q()Ljava/lang/String;

    move-result-object v18

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/azd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/baf;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ayt;Lcom/google/android/gms/internal/awd;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->j()Lcom/google/android/gms/b/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayw;->j()Lcom/google/android/gms/b/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_1
    instance-of v0, v2, Lcom/google/android/gms/internal/azl;

    if-eqz v0, :cond_3

    check-cast v2, Lcom/google/android/gms/internal/azl;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/azd;->a(Lcom/google/android/gms/internal/azh;)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final F()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G()Lcom/google/android/gms/internal/p;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->p:Lcom/google/android/gms/internal/p;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final H()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/azj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->l:Lcom/google/android/gms/internal/lq;

    return-object v0
.end method

.method public final I()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gq;->g()Lcom/google/android/gms/internal/apf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/apf;->a(Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/internal/gl;Landroid/view/View;Lcom/google/android/gms/internal/nu;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ad;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ad;->n:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final J()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ad;->n:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gq;->g()Lcom/google/android/gms/internal/apf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/apf;->a(Lcom/google/android/gms/internal/gl;)V

    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final K()Landroid/support/v4/g/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bbq;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    return-object v0
.end method

.method public final L()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->b()Lcom/google/android/gms/internal/oj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    iget-object v0, v0, Lcom/google/android/gms/internal/azu;->f:Lcom/google/android/gms/internal/axc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->b()Lcom/google/android/gms/internal/oj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->v:Lcom/google/android/gms/internal/azu;

    iget-object v1, v1, Lcom/google/android/gms/internal/azu;->f:Lcom/google/android/gms/internal/axc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oj;->a(Lcom/google/android/gms/internal/axc;)V

    :cond_0
    return-void
.end method

.method public final N()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ad;->Y()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ad;->Y()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bfg;->o:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ad;->Y()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ad;->Y()Lcom/google/android/gms/internal/bfg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bfg;->p:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->y()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->P()V

    return-void
.end method

.method public final Q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->x()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->Q()V

    return-void
.end method

.method public final R()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->R()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    const/4 v1, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/internal/bfz;->h()Lcom/google/android/gms/internal/bgi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/bgi;->m()Lcom/google/android/gms/internal/awd;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/bfz;->i()Lcom/google/android/gms/internal/bgl;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/bgl;->l()Lcom/google/android/gms/internal/awd;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/bfz;->n()Lcom/google/android/gms/internal/bbc;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/bbc;->c()Lcom/google/android/gms/internal/awd;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/awd;->h()Lcom/google/android/gms/internal/awg;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/awg;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(IZ)V

    return-void
.end method

.method protected final a(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ad;->Z()V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/az;->a(IZ)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ayn;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/azf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/azf;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/azh;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gq;->g()Lcom/google/android/gms/internal/apf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    new-instance v3, Lcom/google/android/gms/internal/api;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/api;-><init>(Lcom/google/android/gms/internal/azh;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/apf;->a(Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/aqv;Lcom/google/android/gms/internal/nu;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/big;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/ayg;)V
    .locals 12

    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, p1, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/gm;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/ae;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/ae;-><init>(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/gm;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget v0, v0, Lcom/google/android/gms/internal/bj;->Y:I

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput v7, v0, Lcom/google/android/gms/ads/internal/aw;->G:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->d()Lcom/google/android/gms/internal/biw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/ad;->i:Lcom/google/android/gms/internal/bfw;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/biw;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/ayg;)Lcom/google/android/gms/internal/il;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    const-string p1, "AdRenderer: "

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "slots"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ads"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ad;->Z()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v0, :cond_6

    new-instance v11, Lcom/google/android/gms/ads/internal/af;

    move-object v1, v11

    move-object v2, p0

    move v3, v10

    move-object v4, p2

    move v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/af;-><init>(Lcom/google/android/gms/ads/internal/ad;ILorg/json/JSONArray;ILcom/google/android/gms/internal/gm;)V

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/hm;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p1

    if-ge v7, p1, :cond_7

    :try_start_1
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/lf;

    sget-object p2, Lcom/google/android/gms/internal/axt;->bt:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/lf;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/azj;

    sget-object p2, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/ag;

    invoke-direct {v0, p0, p1, v7, v9}, Lcom/google/android/gms/ads/internal/ag;-><init>(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/azj;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string p2, "Exception occurred while getting an ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, "Exception occurred while getting an ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    return-void

    :catch_2
    move-exception p1

    const-string p2, "Malformed native ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/nu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ad;->m:Lcom/google/android/gms/internal/nu;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ayg;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ad;->i_()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/ad;->o:I

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ayg;I)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Error initializing webview."

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/gl;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/ad;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/al;->e()Z

    move-result p1

    return p1
.end method

.method protected final a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/ad;->b(Ljava/util/List;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, v8, Lcom/google/android/gms/internal/gl;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/ad;->Z()V

    :try_start_0
    iget-object v1, v8, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bfz;->h()Lcom/google/android/gms/internal/bgi;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    iget-object v1, v8, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bfz;->i()Lcom/google/android/gms/internal/bgl;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    iget-object v1, v8, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v1, :cond_2

    iget-object v1, v8, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bfz;->n()Lcom/google/android/gms/internal/bbc;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/ad;->c(Lcom/google/android/gms/internal/gl;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_5

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    if-eqz v4, :cond_5

    new-instance v6, Lcom/google/android/gms/internal/ayw;

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->b()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->c()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v1

    move-object v13, v1

    goto :goto_3

    :cond_3
    move-object v13, v0

    :goto_3
    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->e()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->f()D

    move-result-wide v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->g()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->h()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->l()Landroid/os/Bundle;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->m()Lcom/google/android/gms/internal/awd;

    move-result-object v21

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->p()Lcom/google/android/gms/b/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->p()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_4
    move-object/from16 v22, v0

    invoke-interface {v5}, Lcom/google/android/gms/internal/bgi;->q()Lcom/google/android/gms/b/a;

    move-result-object v23

    move-object v9, v6

    move-object/from16 v24, v3

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/ayw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/baf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ayt;Landroid/os/Bundle;Lcom/google/android/gms/internal/awd;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/azg;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/azg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/azi;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/bgi;Lcom/google/android/gms/internal/azj;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ayw;->a(Lcom/google/android/gms/internal/azh;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/ayw;)V

    goto/16 :goto_6

    :cond_5
    if-eqz v6, :cond_8

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    if-eqz v4, :cond_8

    new-instance v5, Lcom/google/android/gms/internal/ayy;

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->b()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->c()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->d()Lcom/google/android/gms/internal/baf;

    move-result-object v1

    move-object v13, v1

    goto :goto_4

    :cond_6
    move-object v13, v0

    :goto_4
    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->e()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->f()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->j()Landroid/os/Bundle;

    move-result-object v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->l()Lcom/google/android/gms/internal/awd;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->n()Lcom/google/android/gms/b/a;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->n()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_7
    move-object/from16 v19, v0

    invoke-interface {v6}, Lcom/google/android/gms/internal/bgl;->o()Lcom/google/android/gms/b/a;

    move-result-object v20

    move-object v9, v5

    move-object/from16 v21, v3

    invoke-direct/range {v9 .. v21}, Lcom/google/android/gms/internal/ayy;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/baf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ayt;Landroid/os/Bundle;Lcom/google/android/gms/internal/awd;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/azg;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v9, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/azg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/azi;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/bgl;Lcom/google/android/gms/internal/azj;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ayy;->a(Lcom/google/android/gms/internal/azh;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/ayy;)V

    goto/16 :goto_6

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bbc;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/ak;

    invoke-direct {v2, v7, v1}, Lcom/google/android/gms/ads/internal/ak;-><init>(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/bbc;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_9
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/ads/internal/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_a
    iget-object v0, v8, Lcom/google/android/gms/internal/gl;->B:Lcom/google/android/gms/internal/azj;

    iget-boolean v1, v7, Lcom/google/android/gms/ads/internal/ad;->k:Z

    if-eqz v1, :cond_b

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->l:Lcom/google/android/gms/internal/lq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    instance-of v1, v0, Lcom/google/android/gms/internal/ayy;

    if-eqz v1, :cond_c

    iget-object v3, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    if-eqz v3, :cond_c

    :goto_5
    iget-object v0, v8, Lcom/google/android/gms/internal/gl;->B:Lcom/google/android/gms/internal/azj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/ad;->b(Lcom/google/android/gms/internal/azj;)Lcom/google/android/gms/internal/azd;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/azd;)V

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    if-eqz v1, :cond_d

    iget-object v0, v8, Lcom/google/android/gms/internal/gl;->B:Lcom/google/android/gms/internal/azj;

    check-cast v0, Lcom/google/android/gms/internal/ayy;

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/ayy;)V

    goto :goto_6

    :cond_d
    instance-of v1, v0, Lcom/google/android/gms/internal/ayw;

    if-eqz v1, :cond_e

    iget-object v3, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->s:Lcom/google/android/gms/internal/bbw;

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->q:Lcom/google/android/gms/internal/bbg;

    if-eqz v1, :cond_f

    iget-object v0, v8, Lcom/google/android/gms/internal/gl;->B:Lcom/google/android/gms/internal/azj;

    check-cast v0, Lcom/google/android/gms/internal/ayw;

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/ayw;)V

    goto :goto_6

    :cond_f
    instance-of v1, v0, Lcom/google/android/gms/internal/aza;

    if-eqz v1, :cond_10

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    if-eqz v1, :cond_10

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    check-cast v0, Lcom/google/android/gms/internal/aza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aza;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aza;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/aj;

    invoke-direct {v2, v7, v0, v8}, Lcom/google/android/gms/ads/internal/aj;-><init>(Lcom/google/android/gms/ads/internal/ad;Ljava/lang/String;Lcom/google/android/gms/internal/gl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result v0

    return v0

    :cond_10
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v2

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/bbm;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->t:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bbm;

    return-object p1
.end method

.method public final b(I)V
    .locals 1

    const-string v0, "setMaxNumberOfAds must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/ads/internal/ad;->o:I

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->D:Ljava/util/List;

    return-void
.end method

.method protected final d(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/az;->d(Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/ad;->n:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/axt;->bY:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ad;->I()V

    :cond_0
    return-void
.end method

.method public final h_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->q:Ljava/lang/String;

    return-object v0
.end method

.method final i_()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ad;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Initializing webview native ads utills"

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/t;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/ad;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/t;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ad;Ljava/lang/String;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ad;->p:Lcom/google/android/gms/internal/p;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final w()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->d(Z)V

    return-void
.end method
