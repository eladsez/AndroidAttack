.class final Lcom/google/android/gms/internal/ads/rb;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/qo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private A:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private B:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private C:Lcom/google/android/gms/internal/ads/atc;

.field private D:Lcom/google/android/gms/internal/ads/atc;

.field private E:Lcom/google/android/gms/internal/ads/atc;

.field private F:Lcom/google/android/gms/internal/ads/atd;

.field private G:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/google/android/gms/ads/internal/overlay/d;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private I:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private J:Lcom/google/android/gms/internal/ads/mh;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/pz;",
            ">;"
        }
    .end annotation
.end field

.field private final P:Landroid/view/WindowManager;

.field private final Q:Lcom/google/android/gms/internal/ads/amx;

.field private final a:Lcom/google/android/gms/internal/ads/sb;

.field private final b:Lcom/google/android/gms/internal/ads/ahi;

.field private final c:Lcom/google/android/gms/internal/ads/mv;

.field private final d:Lcom/google/android/gms/ads/internal/aq;

.field private final e:Lcom/google/android/gms/ads/internal/bu;

.field private final f:Landroid/util/DisplayMetrics;

.field private final g:F

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/gms/internal/ads/qp;

.field private k:Lcom/google/android/gms/ads/internal/overlay/d;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:Lcom/google/android/gms/internal/ads/sc;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private o:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private p:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private q:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private r:Ljava/lang/Boolean;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private s:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private t:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private u:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private w:Lcom/google/android/gms/internal/ads/re;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private x:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private y:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private z:Lcom/google/android/gms/internal/ads/auf;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/rb;->h:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/rb;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->t:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/rb;->u:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rb;->v:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/rb;->K:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/rb;->L:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/rb;->M:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/rb;->N:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->a:Lcom/google/android/gms/internal/ads/sb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rb;->m:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/rb;->p:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/rb;->s:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/rb;->b:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/rb;->c:Lcom/google/android/gms/internal/ads/mv;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/rb;->d:Lcom/google/android/gms/ads/internal/aq;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/rb;->e:Lcom/google/android/gms/ads/internal/bu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->P:Landroid/view/WindowManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->P:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/rb;->Q:Lcom/google/android/gms/internal/ads/amx;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/rb;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "Unable to enable Javascript."

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    move-result-object p3

    iget-object p4, p7, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/internal/ads/kc;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/rb;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->O()V

    invoke-static {}, Lcom/google/android/gms/common/util/o;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/rh;->a(Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/rh;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/rb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/o;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/rb;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/rb;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/ads/mh;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/rb;->a:Lcom/google/android/gms/internal/ads/sb;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/sb;->a()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/mh;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->J:Lcom/google/android/gms/internal/ads/mh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->T()V

    new-instance p2, Lcom/google/android/gms/internal/ads/atd;

    new-instance p3, Lcom/google/android/gms/internal/ads/ate;

    const-string p5, "make_wv"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/rb;->m:Ljava/lang/String;

    invoke-direct {p3, v0, p5, p6}, Lcom/google/android/gms/internal/ads/ate;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/atd;-><init>(Lcom/google/android/gms/internal/ads/ate;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/ate;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/atc;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->D:Lcom/google/android/gms/internal/ads/atc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    const-string p3, "native:view_create"

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/rb;->D:Lcom/google/android/gms/internal/ads/atc;

    invoke-virtual {p2, p3, p5}, Lcom/google/android/gms/internal/ads/atd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/atc;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rb;->E:Lcom/google/android/gms/internal/ads/atc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rb;->C:Lcom/google/android/gms/internal/ads/atc;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/kc;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ix;->i()V

    return-void
.end method

.method private final K()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->a:Lcom/google/android/gms/internal/ads/sb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sb;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/mi;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->L:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->K:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->M:I

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->N:I

    if-ne v0, v7, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->L:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->K:I

    if-eq v0, v5, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/rb;->L:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/rb;->K:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/rb;->M:I

    iput v7, p0, Lcom/google/android/gms/internal/ads/rb;->N:I

    new-instance v3, Lcom/google/android/gms/internal/ads/n;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/n;-><init>(Lcom/google/android/gms/internal/ads/qo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->P:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/n;->a(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized L()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->c()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->r:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->r:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/rb;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized M()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->r:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final N()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rb;->D:Lcom/google/android/gms/internal/ads/atc;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "aeh2"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/internal/ads/atc;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized O()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->P()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->Q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->Q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized P()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/kc;->c(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized Q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/kc;->b(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized R()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->I:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized S()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->O:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final T()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ix;->b()Lcom/google/android/gms/internal/ads/asu;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ix;->b()Lcom/google/android/gms/internal/ads/asu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asu;->a(Lcom/google/android/gms/internal/ads/ate;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/rb;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/rb;->B:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/rb;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/rb;->B:I

    return p1
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)Lcom/google/android/gms/internal/ads/rb;
    .locals 13

    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    move-object v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/sb;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/gms/internal/ads/rb;

    move-object v0, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/rb;-><init>(Lcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)V

    return-object v12
.end method

.method private final a(Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->r:Ljava/lang/Boolean;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rb;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/rb;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private final e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/util/o;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->M()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->L()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->M()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_1
    const-string v0, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final f(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isVisible"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->R()V

    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/rd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/rd;-><init>(Lcom/google/android/gms/internal/ads/rb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->J:Lcom/google/android/gms/internal/ads/mh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mh;->a()V

    return-void
.end method

.method public final G()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->E:Lcom/google/android/gms/internal/ads/atc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/atc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->E:Lcom/google/android/gms/internal/ads/atc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->E:Lcom/google/android/gms/internal/ads/atc;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/atd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/atc;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized H()Lcom/google/android/gms/internal/ads/auf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->z:Lcom/google/android/gms/internal/ads/auf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final I()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rb;->setBackgroundColor(I)V

    return-void
.end method

.method public final J()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ads/pe;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rb;->D:Lcom/google/android/gms/internal/ads/atc;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/internal/ads/atc;[Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->N()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rb;->c:Lcom/google/android/gms/internal/ads/mv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->a:Lcom/google/android/gms/internal/ads/sb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sb;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->J:Lcom/google/android/gms/internal/ads/mh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->a:Lcom/google/android/gms/internal/ads/sb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sb;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/mh;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qp;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/akv;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/akv;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->x:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/akv;->a:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->f(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/auf;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->z:Lcom/google/android/gms/internal/ads/auf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/re;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->w:Lcom/google/android/gms/internal/ads/re;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->w:Lcom/google/android/gms/internal/ads/re;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/sc;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qp;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/p<",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qp;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->aB:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/rq;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/rq;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/jw;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qp;->a(Z)V

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qp;->a(ZI)V

    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qp;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/qp;->a(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/re;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->w:Lcom/google/android/gms/internal/ads/re;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->H:Lcom/google/android/gms/ads/internal/overlay/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qp;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->p:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rb;->p:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->O()V

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/n;-><init>(Lcom/google/android/gms/internal/ads/qo;)V

    if-eqz p1, :cond_1

    const-string p1, "expanded"

    goto :goto_1

    :cond_1
    const-string p1, "default"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/n;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Lcom/google/android/gms/internal/ads/atc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->D:Lcom/google/android/gms/internal/ads/atc;

    return-object v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qp;->b()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/d;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rb;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->a:Lcom/google/android/gms/internal/ads/sb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sb;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rb;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->T()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->J:Lcom/google/android/gms/internal/ads/mh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mh;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/d;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/d;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->z()Lcom/google/android/gms/internal/ads/py;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/py;->a(Lcom/google/android/gms/internal/ads/pn;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->S()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->o:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/rb;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/android/gms/ads/internal/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->e:Lcom/google/android/gms/ads/internal/bu;

    return-object v0
.end method

.method public final declared-synchronized e(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->A:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/rb;->A:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/rb;->A:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/d;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->f(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->r()Lcom/google/android/gms/ads/internal/overlay/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/d;->p()V

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->k()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->z()Lcom/google/android/gms/internal/ads/py;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/py;->a(Lcom/google/android/gms/internal/ads/pn;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->S()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->R()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->u:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->d:Lcom/google/android/gms/ads/internal/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->d:Lcom/google/android/gms/ads/internal/aq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/aq;->g_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->G:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final declared-synchronized getRequestedOrientation()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized h_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->u:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->d:Lcom/google/android/gms/ads/internal/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->d:Lcom/google/android/gms/ads/internal/aq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/aq;->h_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/atd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/mv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->c:Lcom/google/android/gms/internal/ads/mv;

    return-object v0
.end method

.method public final l()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->N()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->c:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->C:Lcom/google/android/gms/internal/ads/atc;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->D:Lcom/google/android/gms/internal/ads/atc;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/internal/ads/atc;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atd;->a()Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/atc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->C:Lcom/google/android/gms/internal/ads/atc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->F:Lcom/google/android/gms/internal/ads/atd;

    const-string v2, "native:view_show"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rb;->C:Lcom/google/android/gms/internal/ads/atc;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/atd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/atc;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->c:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->J:Lcom/google/android/gms/internal/ads/mh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mh;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->x:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v1, Lcom/google/android/gms/internal/ads/qp;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v1, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qp;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->y:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->A()Lcom/google/android/gms/internal/ads/oh;

    if-nez p0, :cond_1

    throw v1

    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/oh;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->e()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->A()Lcom/google/android/gms/internal/ads/oh;

    if-nez p0, :cond_3

    throw v1

    :cond_3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/oh;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/rb;->y:Z

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->K()Z

    move v0, v2

    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/rb;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->J:Lcom/google/android/gms/internal/ads/mh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mh;->d()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/kc;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->e()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/rb;->y:Z

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/rb;->f(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p2, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast p1, Lcom/google/android/gms/internal/ads/qp;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast p1, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qp;->l()Lcom/google/android/gms/internal/ads/sa;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast p1, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qp;->l()Lcom/google/android/gms/internal/ads/sa;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/sa;->a()V

    :cond_2
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->ay:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, -0x1

    if-lez v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/rb;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    cmpg-float v0, v0, v2

    const/4 v3, 0x1

    if-gez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/rb;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v2

    if-lez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/rb;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v2

    if-gez v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/rb;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rb;->K()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->r()Lcom/google/android/gms/ads/internal/overlay/d;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/d;->o()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/rb;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->p:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sc;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->b()Lcom/google/android/gms/internal/ads/re;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re;->e()F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_4

    if-eqz v2, :cond_4

    int-to-float p2, v2

    mul-float/2addr p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    :cond_5
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rb;->setMeasuredDimension(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sc;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->cm:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/common/util/o;->f()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "/contentHeight"

    new-instance v1, Lcom/google/android/gms/internal/ads/rc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/rc;-><init>(Lcom/google/android/gms/internal/ads/rb;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/rb;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/rb;->B:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget p2, p0, Lcom/google/android/gms/internal/ads/rb;->B:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_2

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rb;->setMeasuredDimension(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :goto_3
    :try_start_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sc;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->f:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rb;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_b
    :try_start_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    goto :goto_4

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    :goto_4
    move v0, p1

    :goto_5
    if-eq v2, v4, :cond_e

    if-ne v2, v3, :cond_f

    :cond_e
    move v5, p2

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget v2, v2, Lcom/google/android/gms/internal/ads/sc;->b:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget v2, v2, Lcom/google/android/gms/internal/ads/sc;->a:I

    if-le v2, v5, :cond_10

    goto :goto_6

    :cond_10
    move v2, v1

    goto :goto_7

    :cond_11
    :goto_6
    move v2, v3

    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/ads/asr;->dh:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget v4, v4, Lcom/google/android/gms/internal/ads/sc;->b:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/sc;->a:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_12

    move v0, v3

    goto :goto_8

    :cond_12
    move v0, v1

    :goto_8
    if-eqz v2, :cond_13

    goto :goto_9

    :cond_13
    move v0, v2

    :goto_9
    const/16 v2, 0x8

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/sc;->b:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget v4, v4, Lcom/google/android/gms/internal/ads/sc;->a:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    iget v5, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    iget v5, p0, Lcom/google/android/gms/internal/ads/rb;->g:F

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dp, but only has "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_14

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/rb;->setVisibility(I)V

    :cond_14
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/rb;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/rb;->h:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->Q:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/amz$a$b;->f:Lcom/google/android/gms/internal/ads/amz$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amz$a$b;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/rb;->h:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_15
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_16

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/rb;->setVisibility(I)V

    :cond_16
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/rb;->i:Z

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->Q:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/amz$a$b;->g:Lcom/google/android/gms/internal/ads/amz$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amz$a$b;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/rb;->i:Z

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget p1, p1, Lcom/google/android/gms/internal/ads/sc;->b:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;

    iget p2, p2, Lcom/google/android/gms/internal/ads/sc;->a:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/rb;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_18
    monitor-exit p0

    return-void

    :cond_19
    :goto_a
    :try_start_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qp;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->z:Lcom/google/android/gms/internal/ads/auf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->z:Lcom/google/android/gms/internal/ads/auf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/auf;->a(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->b:Lcom/google/android/gms/internal/ads/ahi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->b:Lcom/google/android/gms/internal/ads/ahi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ahi;->a(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->D()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ko;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->D()Lcom/google/android/gms/internal/ads/ko;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ko;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ko;->a(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->a:Lcom/google/android/gms/internal/ads/sb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sb;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized r()Lcom/google/android/gms/ads/internal/overlay/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()Lcom/google/android/gms/ads/internal/overlay/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->H:Lcom/google/android/gms/ads/internal/overlay/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->G:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/rb;->s:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->k:Lcom/google/android/gms/ads/internal/overlay/d;

    iget v0, p0, Lcom/google/android/gms/internal/ads/rb;->s:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/qp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/qp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rb;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized t()Lcom/google/android/gms/internal/ads/sc;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->l:Lcom/google/android/gms/internal/ads/sc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic v()Lcom/google/android/gms/internal/ads/rw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    return-object v0
.end method

.method public final w()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->j:Lcom/google/android/gms/internal/ads/qp;

    return-object v0
.end method

.method public final declared-synchronized x()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final y()Lcom/google/android/gms/internal/ads/ahi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rb;->b:Lcom/google/android/gms/internal/ads/ahi;

    return-object v0
.end method

.method public final declared-synchronized z()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rb;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
