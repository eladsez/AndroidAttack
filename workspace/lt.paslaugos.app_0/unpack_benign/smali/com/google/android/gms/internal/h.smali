.class public final Lcom/google/android/gms/internal/h;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/zk;

.field private final d:Lcom/google/android/gms/internal/gm;

.field private final e:Lcom/google/android/gms/internal/ayg;

.field private final f:Lcom/google/android/gms/ads/internal/ad;

.field private g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final i:Landroid/util/DisplayMetrics;

.field private j:Lcom/google/android/gms/internal/jp;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ad;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->a:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/h;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/h;->l:I

    iput-object p1, p0, Lcom/google/android/gms/internal/h;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/h;->c:Lcom/google/android/gms/internal/zk;

    iput-object p3, p0, Lcom/google/android/gms/internal/h;->d:Lcom/google/android/gms/internal/gm;

    iput-object p4, p0, Lcom/google/android/gms/internal/h;->e:Lcom/google/android/gms/internal/ayg;

    iput-object p5, p0, Lcom/google/android/gms/internal/h;->f:Lcom/google/android/gms/ads/internal/ad;

    new-instance p2, Lcom/google/android/gms/internal/jp;

    const-wide/16 p3, 0xc8

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/jp;-><init>(J)V

    iput-object p2, p0, Lcom/google/android/gms/internal/h;->j:Lcom/google/android/gms/internal/jp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/google/android/gms/internal/hs;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/h;->i:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/h;)Lcom/google/android/gms/ads/internal/ad;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/h;->f:Lcom/google/android/gms/ads/internal/ad;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/h;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/h;->a(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private final a(Ljava/lang/ref/WeakReference;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/nu;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nu;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->j:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jp;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->i:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/jz;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->i:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/jz;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, p0, Lcom/google/android/gms/internal/h;->k:I

    if-ne v4, v0, :cond_3

    iget v4, p0, Lcom/google/android/gms/internal/h;->l:I

    if-eq v4, v1, :cond_4

    :cond_3
    iput v0, p0, Lcom/google/android/gms/internal/h;->k:I

    iput v1, p0, Lcom/google/android/gms/internal/h;->l:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/h;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/h;->l:I

    xor-int/2addr p2, v3

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/pk;->a(IIZ)V

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
    :goto_0
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/nu;Z)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/internal/h;->f:Lcom/google/android/gms/ads/internal/ad;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/ad;->M()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/lq;)V
    .locals 12

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->f()Lcom/google/android/gms/internal/oa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/pr;->a()Lcom/google/android/gms/internal/pr;

    move-result-object v2

    const-string v3, "native-video"

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/h;->c:Lcom/google/android/gms/internal/zk;

    iget-object v7, p0, Lcom/google/android/gms/internal/h;->d:Lcom/google/android/gms/internal/gm;

    iget-object v7, v7, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v7, v7, Lcom/google/android/gms/internal/bj;->k:Lcom/google/android/gms/internal/km;

    iget-object v8, p0, Lcom/google/android/gms/internal/h;->e:Lcom/google/android/gms/internal/ayg;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/gms/internal/h;->f:Lcom/google/android/gms/ads/internal/ad;

    invoke-virtual {v10}, Lcom/google/android/gms/ads/internal/a;->i()Lcom/google/android/gms/ads/internal/br;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/h;->d:Lcom/google/android/gms/internal/gm;

    iget-object v11, v11, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/oa;->a(Landroid/content/Context;Lcom/google/android/gms/internal/pr;Ljava/lang/String;ZZLcom/google/android/gms/internal/zk;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ayg;Lcom/google/android/gms/ads/internal/ao;Lcom/google/android/gms/ads/internal/br;Lcom/google/android/gms/internal/asl;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/pr;->b()Lcom/google/android/gms/internal/pr;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/pr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->f:Lcom/google/android/gms/ads/internal/ad;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/ad;->a(Lcom/google/android/gms/internal/nu;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/h;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/n;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/n;-><init>(Lcom/google/android/gms/internal/h;Ljava/lang/ref/WeakReference;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/h;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/h;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v4, p0, Lcom/google/android/gms/internal/h;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/o;

    invoke-direct {v4, p0, v1}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/internal/h;Ljava/lang/ref/WeakReference;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/h;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/pk;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v1

    const-string v2, "/video"

    sget-object v3, Lcom/google/android/gms/ads/internal/gmsg/k;->l:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/videoMeta"

    sget-object v3, Lcom/google/android/gms/ads/internal/gmsg/k;->m:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/precache"

    new-instance v3, Lcom/google/android/gms/internal/nr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/nr;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/delayPageLoaded"

    sget-object v3, Lcom/google/android/gms/ads/internal/gmsg/k;->p:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/instrument"

    sget-object v3, Lcom/google/android/gms/ads/internal/gmsg/k;->n:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/ads/internal/gmsg/k;->g:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/videoClicked"

    sget-object v3, Lcom/google/android/gms/ads/internal/gmsg/k;->h:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/trackActiveViewUnit"

    new-instance v3, Lcom/google/android/gms/internal/l;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/l;-><init>(Lcom/google/android/gms/internal/h;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v2, "/untrackActiveViewUnit"

    new-instance v3, Lcom/google/android/gms/internal/m;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/m;-><init>(Lcom/google/android/gms/internal/h;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/j;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/j;-><init>(Lcom/google/android/gms/internal/nu;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/pm;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/k;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/k;-><init>(Lcom/google/android/gms/internal/h;Lcom/google/android/gms/internal/lq;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/pl;)V

    sget-object p1, Lcom/google/android/gms/internal/axt;->bR:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Exception occurred while getting video view"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/lq;->b(Ljava/lang/Object;)V

    return-void
.end method