.class public abstract Lcom/google/android/gms/internal/ads/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/kp;
.implements Lcom/google/android/gms/internal/ads/rx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/kp<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rx;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/google/android/gms/internal/ads/qo;

.field protected c:Lcom/google/android/gms/internal/ads/dp;

.field private final d:Lcom/google/android/gms/internal/ads/ap;

.field private final e:Lcom/google/android/gms/internal/ads/it;

.field private f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/ap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ai;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ai;->b:Lcom/google/android/gms/internal/ads/qo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ai;->d:Lcom/google/android/gms/internal/ads/ap;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ai;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ai;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(I)V
    .locals 73

    move-object/from16 v0, p0

    move/from16 v5, p1

    const/4 v1, -0x2

    if-eq v5, v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/dp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dp;->j:J

    invoke-direct {v1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/dp;-><init>(IJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qo;->p()V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/ai;->d:Lcom/google/android/gms/internal/ads/ap;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    new-instance v14, Lcom/google/android/gms/internal/ads/is;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ai;->b:Lcom/google/android/gms/internal/ads/qo;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dp;->c:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dp;->e:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dp;->i:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget v8, v8, Lcom/google/android/gms/internal/ads/dp;->k:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-wide v9, v9, Lcom/google/android/gms/internal/ads/dp;->j:J

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dl;->i:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/dp;->g:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    move-object/from16 v45, v14

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/dp;->h:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    move-wide/from16 v49, v13

    move-object/from16 v48, v15

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/dp;->f:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    move-wide/from16 v51, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/it;->f:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    move-wide/from16 v53, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/dp;->m:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/dp;->n:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->h:Lorg/json/JSONObject;

    const/16 v29, 0x0

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->A:Lcom/google/android/gms/internal/ads/hq;

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->B:Ljava/util/List;

    move-object/from16 v57, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->C:Ljava/util/List;

    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dp;->D:Z

    move/from16 v59, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->E:Lcom/google/android/gms/internal/ads/dr;

    const/16 v35, 0x0

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->H:Ljava/util/List;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->L:Ljava/lang/String;

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dp;->O:Z

    move/from16 v64, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/it;->j:Z

    move/from16 v65, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dp;->Q:Z

    move/from16 v66, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->c:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->R:Ljava/util/List;

    move-object/from16 v67, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dp;->S:Z

    move/from16 v68, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ai;->e:Lcom/google/android/gms/internal/ads/it;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->T:Ljava/lang/String;

    move-object/from16 v44, v1

    move-object/from16 v20, v47

    move-object/from16 v28, v55

    move-object/from16 v30, v56

    move-object/from16 v31, v57

    move-object/from16 v32, v58

    move/from16 v33, v59

    move-object/from16 v34, v60

    move-object/from16 v36, v61

    move-object/from16 v37, v62

    move-object/from16 v38, v63

    move/from16 v39, v64

    move/from16 v40, v65

    move/from16 v41, v66

    move-object/from16 v42, v67

    move/from16 v43, v68

    move-object/from16 v1, v45

    move-object/from16 v27, v13

    move-wide/from16 v21, v49

    const/4 v13, 0x0

    move-wide/from16 v23, v51

    move-wide/from16 v25, v53

    move-wide/from16 v71, v14

    move-object/from16 v15, v45

    move-wide/from16 v45, v71

    move-object/from16 v14, v16

    move-object/from16 v70, v15

    move-object/from16 v69, v48

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-wide/from16 v18, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v45

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/internal/ads/is;-><init>(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/qo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/bcj;Lcom/google/android/gms/internal/ads/bdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/bcn;JLcom/google/android/gms/internal/ads/aou;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/auk;Lcom/google/android/gms/internal/ads/hq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/dr;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/amx;ZZZLjava/util/List;ZLjava/lang/String;)V

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ap;->b(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const-string v0, "WebView finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, -0x2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/ai;->a(I)V

    sget-object p1, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kc;->a(Lcom/google/android/gms/internal/ads/qo;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ai;->a(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ai;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 4

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/aj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aj;-><init>(Lcom/google/android/gms/internal/ads/ai;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ai;->f:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ai;->f:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/asr;->bB:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ai;->a()V

    const/4 v0, 0x0

    return-object v0
.end method
