.class final Lcom/google/android/gms/ads/internal/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gm;

.field final synthetic b:Lcom/google/android/gms/internal/fx;

.field final synthetic c:Lcom/google/android/gms/ads/internal/be;

.field private synthetic d:Lcom/google/android/gms/internal/ayg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/be;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/ayg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/bh;->b:Lcom/google/android/gms/internal/fx;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/bh;->d:Lcom/google/android/gms/internal/ayg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iget-object v0, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bn;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->A:Lcom/google/android/gms/internal/ayn;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iget-object v0, v0, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ayh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iget-object v4, v4, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v4, v4, Lcom/google/android/gms/internal/bn;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/ayh;-><init>(Lcom/google/android/gms/ads/internal/f;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/ads/internal/aw;->G:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/be;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->A:Lcom/google/android/gms/internal/ayn;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ayn;->a(Lcom/google/android/gms/internal/ayj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/be;->c:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/bs;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bh;->b:Lcom/google/android/gms/internal/fx;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iget-object v4, v4, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v4, v4, Lcom/google/android/gms/internal/bn;->E:Lcom/google/android/gms/internal/bp;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/bs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/bp;)V

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bh;->b:Lcom/google/android/gms/internal/fx;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/ads/internal/be;->a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/nu;

    move-result-object v9
    :try_end_1
    .catch Lcom/google/android/gms/internal/oe; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lcom/google/android/gms/ads/internal/bj;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/bj;-><init>(Lcom/google/android/gms/ads/internal/bh;Lcom/google/android/gms/ads/internal/bs;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/nu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/bk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/bk;-><init>(Lcom/google/android/gms/ads/internal/bh;Lcom/google/android/gms/ads/internal/bs;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/nu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iput v1, v0, Lcom/google/android/gms/ads/internal/aw;->G:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->d()Lcom/google/android/gms/internal/biw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/bh;->a:Lcom/google/android/gms/internal/gm;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/be;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/aw;->d:Lcom/google/android/gms/internal/zk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/be;->i:Lcom/google/android/gms/internal/bfw;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/bh;->c:Lcom/google/android/gms/ads/internal/be;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/bh;->d:Lcom/google/android/gms/internal/ayg;

    invoke-static/range {v5 .. v12}, Lcom/google/android/gms/internal/biw;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/bix;Lcom/google/android/gms/internal/ayg;)Lcom/google/android/gms/internal/il;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not obtain webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/bi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/bi;-><init>(Lcom/google/android/gms/ads/internal/bh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
