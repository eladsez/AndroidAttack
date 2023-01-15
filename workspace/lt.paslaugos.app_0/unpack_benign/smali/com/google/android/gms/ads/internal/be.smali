.class public abstract Lcom/google/android/gms/ads/internal/be;
.super Lcom/google/android/gms/ads/internal/az;

# interfaces
.implements Lcom/google/android/gms/ads/internal/f;
.implements Lcom/google/android/gms/internal/bhx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/az;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->t()V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/nu;
    .locals 14

    move-object v12, p0

    move-object v13, p1

    iget-object v0, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/nu;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->destroy()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/ax;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->f()Lcom/google/android/gms/internal/oa;

    move-result-object v0

    iget-object v1, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v2, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    invoke-static {v2}, Lcom/google/android/gms/internal/pr;->a(Lcom/google/android/gms/internal/auh;)Lcom/google/android/gms/internal/pr;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v3, v3, Lcom/google/android/gms/internal/auh;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    iget-object v7, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v8, v12, Lcom/google/android/gms/ads/internal/be;->a:Lcom/google/android/gms/internal/ayg;

    iget-object v10, v12, Lcom/google/android/gms/ads/internal/be;->h:Lcom/google/android/gms/ads/internal/br;

    iget-object v11, v13, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    move-object v9, p0

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/oa;->a(Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)Lcom/google/android/gms/internal/nu;

    move-result-object v10

    iget-object v0, v12, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v0, v0, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    if-nez v0, :cond_2

    invoke-interface {v10}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V

    :cond_2
    invoke-interface {v10}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v7, p2

    move-object v8, p0

    move-object/from16 v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/ads/internal/gmsg/ae;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/bhx;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {p0, v10}, Lcom/google/android/gms/ads/internal/be;->a(Lcom/google/android/gms/internal/nu;)V

    iget-object v0, v13, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->v:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;)V

    return-object v10
.end method

.method public final a(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->v()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ayn;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->A:Lcom/google/android/gms/internal/ayn;

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/ayg;)V
    .locals 10

    iget v0, p1, Lcom/google/android/gms/internal/gm;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/bg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/bg;-><init>(Lcom/google/android/gms/ads/internal/be;Lcom/google/android/gms/internal/gm;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, p1, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bn;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bn;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/aw;->G:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->d()Lcom/google/android/gms/internal/biw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/be;->i:Lcom/google/android/gms/internal/bfw;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/biw;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/ayg;)Lcom/google/android/gms/internal/il;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->h:Lcom/google/android/gms/ads/internal/br;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/br;->c:Lcom/google/android/gms/internal/fy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v3, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/fy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/bn;)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/bh;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/ads/internal/bh;-><init>(Lcom/google/android/gms/ads/internal/be;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/ayg;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/nu;)V
    .locals 2

    const-string v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/ads/internal/bf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/bf;-><init>(Lcom/google/android/gms/ads/internal/be;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->a()Lcom/google/android/gms/internal/im;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/gl;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/im;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/google/android/gms/internal/gl;->m:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/google/android/gms/internal/gl;->J:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/axt;->cX:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->a:Lcom/google/android/gms/internal/aud;

    iget-object v0, v0, Lcom/google/android/gms/internal/aud;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "com.google.ads.mediation.AbstractAdViewAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->a:Lcom/google/android/gms/internal/aud;

    iget-object v0, v0, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    :try_start_1
    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->H()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v0, "Could not render test Ad label."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "Could not render test AdLabel."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result p1

    return p1
.end method

.method public final a_(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->F:Landroid/view/View;

    new-instance p1, Lcom/google/android/gms/internal/gl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/aw;->k:Lcom/google/android/gms/internal/gm;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/gl;-><init>(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bff;Lcom/google/android/gms/internal/bfz;Ljava/lang/String;Lcom/google/android/gms/internal/bfi;Lcom/google/android/gms/internal/azj;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/nu;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->g:Lcom/google/android/gms/internal/apf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/apf;->a(Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/internal/gl;Landroid/view/View;Lcom/google/android/gms/internal/nu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/be;->j:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/be;->j:Z

    const-string p1, "Request to enable ActiveView before adState is available."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final d_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    return-void
.end method

.method public final e_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/az;->X()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->n()V

    return-void
.end method

.method protected w()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/az;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/be;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/axt;->bY:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/be;->b(Lcom/google/android/gms/internal/nu;)V

    :cond_0
    return-void
.end method
