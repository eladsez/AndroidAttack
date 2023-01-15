.class public final Lcom/google/android/gms/internal/ads/bi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/ahi;

.field private final d:Lcom/google/android/gms/internal/ads/it;

.field private final e:Lcom/google/android/gms/internal/ads/ate;

.field private final f:Lcom/google/android/gms/ads/internal/ae;

.field private g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final i:Landroid/util/DisplayMetrics;

.field private j:Lcom/google/android/gms/internal/ads/lx;

.field private k:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private l:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/ae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bi;->a:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bi;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bi;->l:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bi;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bi;->c:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bi;->d:Lcom/google/android/gms/internal/ads/it;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bi;->e:Lcom/google/android/gms/internal/ads/ate;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bi;->f:Lcom/google/android/gms/ads/internal/ae;

    new-instance p2, Lcom/google/android/gms/internal/ads/lx;

    const-wide/16 p3, 0xc8

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/lx;-><init>(J)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bi;->j:Lcom/google/android/gms/internal/ads/lx;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bi;->i:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bi;)Lcom/google/android/gms/ads/internal/ae;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bi;->f:Lcom/google/android/gms/ads/internal/ae;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bi;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bi;->a(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private final a(Ljava/lang/ref/WeakReference;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/qo;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bi;->j:Lcom/google/android/gms/internal/ads/lx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lx;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bi;->i:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bi;->i:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bi;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/bi;->k:I

    if-ne v4, v0, :cond_3

    iget v4, p0, Lcom/google/android/gms/internal/ads/bi;->l:I

    if-eq v4, v1, :cond_4

    :cond_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/bi;->k:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/bi;->l:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/bi;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/bi;->l:I

    xor-int/2addr p2, v3

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/rw;->a(IIZ)V

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/qo;Z)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bi;->f:Lcom/google/android/gms/ads/internal/ae;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/ae;->R()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->f()Lcom/google/android/gms/internal/ads/qv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bi;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/sc;->a()Lcom/google/android/gms/internal/ads/sc;

    move-result-object v1

    const-string v2, "native-video"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bi;->c:Lcom/google/android/gms/internal/ads/ahi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bi;->d:Lcom/google/android/gms/internal/ads/it;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dl;->k:Lcom/google/android/gms/internal/ads/mv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bi;->e:Lcom/google/android/gms/internal/ads/ate;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/bi;->f:Lcom/google/android/gms/ads/internal/ae;

    invoke-virtual {v9}, Lcom/google/android/gms/ads/internal/a;->i()Lcom/google/android/gms/ads/internal/bu;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/bi;->d:Lcom/google/android/gms/internal/ads/it;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/qv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)Lcom/google/android/gms/internal/ads/qo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/sc;->b()Lcom/google/android/gms/internal/ads/sc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qo;->a(Lcom/google/android/gms/internal/ads/sc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bi;->f:Lcom/google/android/gms/ads/internal/ae;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/ae;->a(Lcom/google/android/gms/internal/ads/qo;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bi;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/bo;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/bo;-><init>(Lcom/google/android/gms/internal/ads/bi;Ljava/lang/ref/WeakReference;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/bi;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bi;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bi;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/ads/bp;

    invoke-direct {v4, p0, v1}, Lcom/google/android/gms/internal/ads/bp;-><init>(Lcom/google/android/gms/internal/ads/bi;Ljava/lang/ref/WeakReference;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/bi;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bi;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/rw;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const-string v1, "/video"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/o;->l:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/videoMeta"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/o;->m:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/precache"

    new-instance v2, Lcom/google/android/gms/internal/ads/qd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/qd;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/delayPageLoaded"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/o;->p:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/instrument"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/o;->n:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/log"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/o;->g:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/videoClicked"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/o;->h:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/trackActiveViewUnit"

    new-instance v2, Lcom/google/android/gms/internal/ads/bm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bm;-><init>(Lcom/google/android/gms/internal/ads/bi;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/untrackActiveViewUnit"

    new-instance v2, Lcom/google/android/gms/internal/ads/bn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bn;-><init>(Lcom/google/android/gms/internal/ads/bi;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bk;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/bk;-><init>(Lcom/google/android/gms/internal/ads/qo;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/ry;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/bl;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/bl;-><init>(Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/qo;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/rx;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/asr;->bY:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qo;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Exception occurred while getting video view"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V

    return-void
.end method
