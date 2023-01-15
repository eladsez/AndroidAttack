.class public abstract Lcom/google/android/gms/ads/internal/bg;
.super Lcom/google/android/gms/ads/internal/bb;

# interfaces
.implements Lcom/google/android/gms/ads/internal/g;
.implements Lcom/google/android/gms/internal/ads/o;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/bb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    return-void
.end method


# virtual methods
.method protected final M()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dp;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->u()V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/ads/internal/bv;Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/qo;
    .locals 14

    move-object v11, p0

    move-object v12, p1

    iget-object v0, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/qo;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/az;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->f()Lcom/google/android/gms/internal/ads/qv;

    iget-object v0, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/sc;->a(Lcom/google/android/gms/internal/ads/aou;)Lcom/google/android/gms/internal/ads/sc;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/aou;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v6, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v7, v11, Lcom/google/android/gms/ads/internal/bg;->a:Lcom/google/android/gms/internal/ads/ate;

    iget-object v9, v11, Lcom/google/android/gms/ads/internal/bg;->i:Lcom/google/android/gms/ads/internal/bu;

    iget-object v10, v12, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    move-object v8, v11

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/qv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)Lcom/google/android/gms/internal/ads/qo;

    move-result-object v13

    iget-object v0, v11, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aou;->g:[Lcom/google/android/gms/internal/ads/aou;

    if-nez v0, :cond_2

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V

    :cond_2
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, v11

    move-object v3, v11

    move-object v4, v11

    move-object v5, v11

    move-object/from16 v8, p2

    move-object v9, v11

    move-object/from16 v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/aok;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/gmsg/m;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/ads/internal/gmsg/ai;Lcom/google/android/gms/ads/internal/bv;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/id;)V

    invoke-virtual {v11, v13}, Lcom/google/android/gms/ads/internal/bg;->a(Lcom/google/android/gms/internal/ads/qo;)V

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dl;->v:Ljava/lang/String;

    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;)V

    return-object v13
.end method

.method public final a(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->w()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/atl;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->B:Lcom/google/android/gms/internal/ads/atl;

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ate;)V
    .locals 10

    iget v0, p1, Lcom/google/android/gms/internal/ads/it;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/bi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/bi;-><init>(Lcom/google/android/gms/ads/internal/bg;Lcom/google/android/gms/internal/ads/it;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dp;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dp;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/ay;->I:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->d()Lcom/google/android/gms/internal/ads/ao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/bg;->j:Lcom/google/android/gms/internal/ads/bda;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/ao;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/kp;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->i:Lcom/google/android/gms/ads/internal/bu;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bu;->c:Lcom/google/android/gms/internal/ads/ie;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ie;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/dp;)Lcom/google/android/gms/internal/ads/id;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/bj;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/ads/internal/bj;-><init>(Lcom/google/android/gms/ads/internal/bg;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/ate;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 2

    const-string v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/ads/internal/bh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/bh;-><init>(Lcom/google/android/gms/ads/internal/bg;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->a()Lcom/google/android/gms/internal/ads/kq;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/is;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/kq;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/is;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/is;->M:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->dl:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->a:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->J()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "Could not render test Ad label."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "Could not render test AdLabel."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result p1

    return p1
.end method

.method public final a_(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ay;->H:Landroid/view/View;

    new-instance p1, Lcom/google/android/gms/internal/ads/is;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/is;-><init>(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bcj;Lcom/google/android/gms/internal/ads/bdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bcn;Lcom/google/android/gms/internal/ads/auk;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->g:Lcom/google/android/gms/internal/ads/aju;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Landroid/view/View;Lcom/google/android/gms/internal/ads/qo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bg;->k:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bg;->k:Z

    const-string p1, "Request to enable ActiveView before adState is available."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final e_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    return-void
.end method

.method public final f_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/bb;->ac()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->n()V

    return-void
.end method

.method protected x()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bb;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/bg;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->cg:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/bg;->b(Lcom/google/android/gms/internal/ads/qo;)V

    :cond_0
    return-void
.end method
