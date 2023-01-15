.class public abstract Lcom/google/android/gms/internal/biq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/il;
.implements Lcom/google/android/gms/internal/pl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/il<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/pl;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/google/android/gms/internal/nu;

.field protected c:Lcom/google/android/gms/internal/bn;

.field private d:Lcom/google/android/gms/internal/bix;

.field private e:Lcom/google/android/gms/internal/gm;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bix;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/biq;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/biq;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/biq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-object p1, p0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-object p1, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iput-object p3, p0, Lcom/google/android/gms/internal/biq;->b:Lcom/google/android/gms/internal/nu;

    iput-object p4, p0, Lcom/google/android/gms/internal/biq;->d:Lcom/google/android/gms/internal/bix;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/biq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/biq;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(I)V
    .locals 43

    move-object/from16 v0, p0

    move/from16 v5, p1

    const/4 v1, -0x2

    if-eq v5, v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/bn;

    iget-object v2, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/bn;->j:J

    invoke-direct {v1, v5, v2, v3}, Lcom/google/android/gms/internal/bn;-><init>(IJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/biq;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->o()V

    iget-object v15, v0, Lcom/google/android/gms/internal/biq;->d:Lcom/google/android/gms/internal/bix;

    iget-object v1, v0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-object v11, v1, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    new-instance v14, Lcom/google/android/gms/internal/gl;

    move-object v1, v14

    iget-object v2, v11, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v3, v0, Lcom/google/android/gms/internal/biq;->b:Lcom/google/android/gms/internal/nu;

    iget-object v4, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v4, v4, Lcom/google/android/gms/internal/bn;->c:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v6, v6, Lcom/google/android/gms/internal/bn;->e:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v7, v7, Lcom/google/android/gms/internal/bn;->i:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget v8, v8, Lcom/google/android/gms/internal/bn;->k:I

    iget-object v9, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-wide v9, v9, Lcom/google/android/gms/internal/bn;->j:J

    iget-object v11, v11, Lcom/google/android/gms/internal/bj;->i:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-boolean v12, v12, Lcom/google/android/gms/internal/bn;->g:Z

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v41, v14

    move-object/from16 v14, v16

    move-object/from16 v42, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-wide v14, v13, Lcom/google/android/gms/internal/bn;->h:J

    move-wide/from16 v18, v14

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-object v13, v13, Lcom/google/android/gms/internal/gm;->d:Lcom/google/android/gms/internal/auh;

    move-object/from16 v20, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-wide v13, v13, Lcom/google/android/gms/internal/bn;->f:J

    move-wide/from16 v21, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-wide v13, v13, Lcom/google/android/gms/internal/gm;->f:J

    move-wide/from16 v23, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-wide v13, v13, Lcom/google/android/gms/internal/bn;->m:J

    move-wide/from16 v25, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v13, v13, Lcom/google/android/gms/internal/bn;->n:Ljava/lang/String;

    move-object/from16 v27, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-object v13, v13, Lcom/google/android/gms/internal/gm;->h:Lorg/json/JSONObject;

    move-object/from16 v28, v13

    const/16 v29, 0x0

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v13, v13, Lcom/google/android/gms/internal/bn;->A:Lcom/google/android/gms/internal/fk;

    move-object/from16 v30, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v13, v13, Lcom/google/android/gms/internal/bn;->B:Ljava/util/List;

    move-object/from16 v31, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v13, v13, Lcom/google/android/gms/internal/bn;->C:Ljava/util/List;

    move-object/from16 v32, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/bn;->D:Z

    move/from16 v33, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v13, v13, Lcom/google/android/gms/internal/bn;->E:Lcom/google/android/gms/internal/bp;

    move-object/from16 v34, v13

    const/16 v35, 0x0

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v13, v13, Lcom/google/android/gms/internal/bn;->H:Ljava/util/List;

    move-object/from16 v36, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->c:Lcom/google/android/gms/internal/bn;

    iget-object v13, v13, Lcom/google/android/gms/internal/bn;->L:Ljava/lang/String;

    move-object/from16 v37, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-object v13, v13, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    move-object/from16 v38, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-object v13, v13, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/bn;->O:Z

    move/from16 v39, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/biq;->e:Lcom/google/android/gms/internal/gm;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/gm;->j:Z

    move/from16 v40, v13

    move/from16 v5, p1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v40}, Lcom/google/android/gms/internal/gl;-><init>(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/nu;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bff;Lcom/google/android/gms/internal/bfz;Ljava/lang/String;Lcom/google/android/gms/internal/bfg;Lcom/google/android/gms/internal/bfi;JLcom/google/android/gms/internal/auh;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/azj;Lcom/google/android/gms/internal/fk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/bp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/asl;ZZ)V

    move-object/from16 v2, v41

    move-object/from16 v1, v42

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/bix;->b(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/nu;Z)V
    .locals 1

    const-string p1, "WebView finished loading."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/biq;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, -0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/biq;->a(I)V

    sget-object p1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/internal/biq;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/biq;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/biq;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    iget-object v0, p0, Lcom/google/android/gms/internal/biq;->b:Lcom/google/android/gms/internal/nu;

    invoke-static {v0}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/nu;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/biq;->a(I)V

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/biq;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 4

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/bir;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bir;-><init>(Lcom/google/android/gms/internal/biq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/biq;->f:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/biq;->f:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/axt;->bt:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/biq;->a()V

    const/4 v0, 0x0

    return-object v0
.end method
