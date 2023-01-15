.class final Lcom/google/android/gms/ads/internal/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/it;

.field final synthetic b:Lcom/google/android/gms/internal/ads/id;

.field final synthetic c:Lcom/google/android/gms/ads/internal/bg;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ate;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bg;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/ate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/internal/ads/id;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/bj;->d:Lcom/google/android/gms/internal/ads/ate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dp;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->B:Lcom/google/android/gms/internal/ads/atl;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dp;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dp;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/atf;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dp;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/atf;-><init>(Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/ads/internal/ay;->I:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/bg;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->B:Lcom/google/android/gms/internal/ads/atl;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/atl;->a(Lcom/google/android/gms/internal/ads/ati;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/bg;->c:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/bv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/internal/ads/id;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dp;->E:Lcom/google/android/gms/internal/ads/dr;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/bv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/dr;)V

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/internal/ads/id;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/ads/internal/bg;->a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/ads/internal/bv;Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/qo;

    move-result-object v9
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/qz; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lcom/google/android/gms/ads/internal/bl;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/bl;-><init>(Lcom/google/android/gms/ads/internal/bj;Lcom/google/android/gms/ads/internal/bv;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/ads/qo;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/bm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/bm;-><init>(Lcom/google/android/gms/ads/internal/bj;Lcom/google/android/gms/ads/internal/bv;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/ads/qo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iput v1, v0, Lcom/google/android/gms/ads/internal/ay;->I:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->d()Lcom/google/android/gms/internal/ads/ao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/bg;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/ay;->d:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/bg;->j:Lcom/google/android/gms/internal/ads/bda;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/bj;->c:Lcom/google/android/gms/ads/internal/bg;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/bj;->d:Lcom/google/android/gms/internal/ads/ate;

    invoke-static/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/ao;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/kp;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not obtain webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/bk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/bk;-><init>(Lcom/google/android/gms/ads/internal/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
