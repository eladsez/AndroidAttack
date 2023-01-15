.class public final Lcom/google/android/gms/ads/internal/bw;
.super Lcom/google/android/gms/ads/internal/bg;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private k:Z

.field private l:Z

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/bg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 6

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/is;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/is;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/az;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/qo;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/az;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/t;->b(Lcom/google/android/gms/internal/ads/is;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ii;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/aks;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/aks;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/ih;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/ih;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/aks;->a(Lcom/google/android/gms/internal/ads/akw;)V

    :cond_3
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/is;->u:Lcom/google/android/gms/internal/ads/aou;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/is;->u:Lcom/google/android/gms/internal/ads/aou;

    iget v3, v3, Lcom/google/android/gms/internal/ads/aou;->f:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/az;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/is;->u:Lcom/google/android/gms/internal/ads/aou;

    iget p2, p2, Lcom/google/android/gms/internal/ads/aou;->c:I

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/internal/az;->setMinimumHeight(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->u:Lcom/google/android/gms/internal/ads/aou;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/is;->u:Lcom/google/android/gms/internal/ads/aou;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/sc;->a(Lcom/google/android/gms/internal/ads/aou;)Lcom/google/android/gms/internal/ads/sc;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Lcom/google/android/gms/internal/ads/sc;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/is;->u:Lcom/google/android/gms/internal/ads/aou;

    iget v2, v2, Lcom/google/android/gms/internal/ads/aou;->f:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/az;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/is;->u:Lcom/google/android/gms/internal/ads/aou;

    iget v2, v2, Lcom/google/android/gms/internal/ads/aou;->c:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/az;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V

    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/az;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_7

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/az;->showNext()V

    :cond_7
    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/az;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/qo;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/az;->removeView(Landroid/view/View;)V

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ay;->c()V

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/az;->setVisibility(I)V

    return v0
.end method

.method private final c(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/bg;->M()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/p;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/mv;->b:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/mv;->c:I

    const/16 v2, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object v1

    const-string v4, ""

    const-string v5, "javascript"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->H()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->h:Lcom/google/android/gms/b/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->h:Lcom/google/android/gms/b/a;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->h:Lcom/google/android/gms/b/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/p;->a(Lcom/google/android/gms/b/a;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->u()Lcom/google/android/gms/internal/ads/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->h:Lcom/google/android/gms/b/a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/p;->a(Lcom/google/android/gms/b/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bw;->l:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public final I()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->d:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/an;->d()V

    return-void
.end method

.method protected final X()Z
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mi;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mi;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/az;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/ads/internal/bv;Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/qo;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aou;->g:[Lcom/google/android/gms/internal/ads/aou;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aou;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dp;->y:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dp;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "[xX]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/ads/d;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/ads/d;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aou;->b()Lcom/google/android/gms/ads/d;

    move-result-object v3

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/aou;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/aou;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/bg;->a(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/ads/internal/bv;Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/qo;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/is;Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/bg;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/bw;->l:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/bw;->c(Lcom/google/android/gms/internal/ads/qo;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->h:Lcom/google/android/gms/b/a;

    if-eqz v2, :cond_2

    const-string v2, "onSdkImpression"

    new-instance v3, Landroid/support/v4/g/a;

    invoke-direct {v3}, Landroid/support/v4/g/a;-><init>()V

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bg;->a(Lcom/google/android/gms/internal/ads/is;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/t;->b(Lcom/google/android/gms/internal/ads/is;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Lcom/google/android/gms/ads/internal/d;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/d;-><init>(Lcom/google/android/gms/ads/internal/bw;)V

    if-eqz p1, :cond_e

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/t;->b(Lcom/google/android/gms/internal/ads/is;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bcj;->r:Ljava/util/List;

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdd;->h()Lcom/google/android/gms/internal/ads/bdm;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, v1

    :goto_3
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v5, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bdd;->i()Lcom/google/android/gms/internal/ads/bdq;

    move-result-object p1

    goto :goto_4

    :cond_8
    move-object p1, v1

    :goto_4
    const-string v5, "2"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    invoke-static {v2}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/bdm;->b(Lcom/google/android/gms/b/a;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->j()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->i()V

    :cond_9
    const-string p1, "/nativeExpressViewClicked"

    invoke-static {v4, v1, p2}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/ads/internal/gmsg/ae;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    return-void

    :cond_a
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz p1, :cond_c

    invoke-static {v2}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/bdq;->b(Lcom/google/android/gms/b/a;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bdq;->h()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bdq;->g()V

    :cond_b
    const-string v2, "/nativeExpressViewClicked"

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/ads/internal/gmsg/ae;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    return-void

    :cond_c
    const-string p1, "No matching template id and mapper"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_5
    const-string p1, "No template ids present in mediation response"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error occurred while recording impression and registering for clicks"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bg;->a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bw;->b(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->K:Lcom/google/android/gms/internal/ads/amx;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->K:Lcom/google/android/gms/internal/ads/amx;

    sget-object p2, Lcom/google/android/gms/internal/ads/amz$a$b;->c:Lcom/google/android/gms/internal/ads/amz$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/amx;->a(Lcom/google/android/gms/internal/ads/amz$a$b;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v1

    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/bb;->b(Lcom/google/android/gms/internal/ads/is;Z)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/is;->l:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/bw;->d(Lcom/google/android/gms/internal/ads/is;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->A()Lcom/google/android/gms/internal/ads/oh;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/oh;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->A()Lcom/google/android/gms/internal/ads/oh;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/oh;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/is;->m:Z

    if-nez p1, :cond_6

    new-instance p1, Lcom/google/android/gms/ads/internal/c;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/c;-><init>(Lcom/google/android/gms/ads/internal/bw;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    new-instance v2, Lcom/google/android/gms/ads/internal/bx;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/ads/internal/bx;-><init>(Lcom/google/android/gms/internal/ads/is;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/sa;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ay;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/ads/asr;->bW:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Z)V

    :cond_6
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz p1, :cond_8

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->b()Lcom/google/android/gms/internal/ads/re;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/rw;->g()V

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->x:Lcom/google/android/gms/internal/ads/asa;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->x:Lcom/google/android/gms/internal/ads/asa;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/re;->a(Lcom/google/android/gms/internal/ads/asa;)V

    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/util/o;->c()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ay;->d()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz p1, :cond_d

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->g:Lcom/google/android/gms/internal/ads/aju;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;)V

    :cond_9
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v0

    new-instance p1, Lcom/google/android/gms/internal/ads/aks;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/aks;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ii;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/is;->a:Lcom/google/android/gms/internal/ads/aoq;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bw;->a(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/ads/ih;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ih;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/aks;->a(Lcom/google/android/gms/internal/ads/akw;)V

    :cond_a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/is;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/aks;->a(Lcom/google/android/gms/internal/ads/akw;)V

    goto :goto_2

    :cond_b
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/b;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/internal/ads/aks;Lcom/google/android/gms/internal/ads/is;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/rz;)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ay;->H:Landroid/view/View;

    if-eqz p1, :cond_d

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/is;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->g:Lcom/google/android/gms/internal/ads/aju;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->i:Lcom/google/android/gms/internal/ads/aou;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->H:Landroid/view/View;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/ay;->H:Landroid/view/View;

    :cond_d
    :goto_2
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/is;->n:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/ay;->a(Landroid/view/View;)V

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bw;->k:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aoq;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/aoq;->h:Z

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/bw;->k:Z

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/aoq;

    iget v5, v1, Lcom/google/android/gms/internal/ads/aoq;->a:I

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/aoq;->b:J

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/aoq;->c:Landroid/os/Bundle;

    iget v9, v1, Lcom/google/android/gms/internal/ads/aoq;->d:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/aoq;->e:Ljava/util/List;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/aoq;->f:Z

    iget v12, v1, Lcom/google/android/gms/internal/ads/aoq;->g:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/aoq;->h:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/bw;->k:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v13, v3

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/aoq;->i:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/aoq;->j:Lcom/google/android/gms/internal/ads/arw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/aoq;->k:Landroid/location/Location;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/aoq;->l:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->m:Landroid/os/Bundle;

    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->n:Landroid/os/Bundle;

    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->o:Ljava/util/List;

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->p:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aoq;->q:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/aoq;->r:Z

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v21, v27

    move-object/from16 v22, v0

    move/from16 v23, v1

    invoke-direct/range {v4 .. v23}, Lcom/google/android/gms/internal/ads/aoq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/arw;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    move-object/from16 v0, p0

    :goto_2
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/bg;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result v1

    return v1
.end method

.method final d(Lcom/google/android/gms/internal/ads/is;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/is;->m:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jw;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->f:Lcom/google/android/gms/ads/internal/az;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/az;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/sa;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/bb;->a(Lcom/google/android/gms/internal/ads/is;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/is;->m:Z

    :cond_4
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/bw;->d(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/bw;->d(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method

.method public final t()Lcom/google/android/gms/internal/ads/aqv;
    .locals 1

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->b()Lcom/google/android/gms/internal/ads/re;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final x()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bw;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/bw;->l:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/bw;->c(Lcom/google/android/gms/internal/ads/qo;)V

    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/bg;->x()V

    return-void
.end method
