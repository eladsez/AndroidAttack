.class public final Lcom/google/android/gms/ads/internal/bt;
.super Lcom/google/android/gms/ads/internal/be;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private j:Z

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/be;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 6

    iget-boolean v0, p2, Lcom/google/android/gms/internal/gl;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/gl;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ax;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/android/gms/internal/nu;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->destroy()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/ax;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->b(Lcom/google/android/gms/internal/gl;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gb;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/aqg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/aqg;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Lcom/google/android/gms/internal/ga;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ga;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/aqg;->a(Lcom/google/android/gms/internal/aqk;)V

    :cond_3
    iget-object v2, p2, Lcom/google/android/gms/internal/gl;->t:Lcom/google/android/gms/internal/auh;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v3, p2, Lcom/google/android/gms/internal/gl;->t:Lcom/google/android/gms/internal/auh;

    iget v3, v3, Lcom/google/android/gms/internal/auh;->f:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/ax;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object p2, p2, Lcom/google/android/gms/internal/gl;->t:Lcom/google/android/gms/internal/auh;

    iget p2, p2, Lcom/google/android/gms/internal/auh;->c:I

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/internal/ax;->setMinimumHeight(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/gq;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_5
    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->t:Lcom/google/android/gms/internal/auh;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    iget-object v2, p2, Lcom/google/android/gms/internal/gl;->t:Lcom/google/android/gms/internal/auh;

    invoke-static {v2}, Lcom/google/android/gms/internal/pr;->a(Lcom/google/android/gms/internal/auh;)Lcom/google/android/gms/internal/pr;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/pr;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v2, p2, Lcom/google/android/gms/internal/gl;->t:Lcom/google/android/gms/internal/auh;

    iget v2, v2, Lcom/google/android/gms/internal/auh;->f:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/ax;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v2, p2, Lcom/google/android/gms/internal/gl;->t:Lcom/google/android/gms/internal/auh;

    iget v2, v2, Lcom/google/android/gms/internal/auh;->c:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/ax;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/a;->a(Landroid/view/View;)V

    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/ax;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_7

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/ax;->showNext()V

    :cond_7
    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ax;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/nu;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/google/android/gms/internal/nu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->destroy()V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/ax;->removeView(Landroid/view/View;)V

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/aw;->c()V

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/ax;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public final F()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/al;->d()V

    return-void
.end method

.method protected final S()Z
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/jz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/jz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/ax;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method protected final a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/nu;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v0, v0, Lcom/google/android/gms/internal/auh;->g:[Lcom/google/android/gms/internal/auh;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/auh;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/bn;->y:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v1, v1, Lcom/google/android/gms/internal/bn;->l:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auh;->b()Lcom/google/android/gms/ads/d;

    move-result-object v3

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/auh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/auh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/be;->a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/nu;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/android/gms/internal/gl;Z)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/be;->a(Lcom/google/android/gms/internal/gl;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->b(Lcom/google/android/gms/internal/gl;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Lcom/google/android/gms/ads/internal/c;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/c;-><init>(Lcom/google/android/gms/ads/internal/bt;)V

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->b(Lcom/google/android/gms/internal/gl;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v3, v3, Lcom/google/android/gms/internal/bff;->q:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v4, p1, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/bfz;->h()Lcom/google/android/gms/internal/bgi;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    iget-object v5, p1, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    if-eqz v5, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/internal/gl;->o:Lcom/google/android/gms/internal/bfz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bfz;->i()Lcom/google/android/gms/internal/bgl;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v1

    :goto_3
    const-string v5, "2"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    invoke-static {v2}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/bgi;->b(Lcom/google/android/gms/b/a;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/bgi;->j()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v4}, Lcom/google/android/gms/internal/bgi;->i()V

    :cond_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object p1

    const-string v0, "/nativeExpressViewClicked"

    invoke-static {v4, v1, p2}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/bgi;Lcom/google/android/gms/internal/bgl;Lcom/google/android/gms/ads/internal/c;)Lcom/google/android/gms/ads/internal/gmsg/aa;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    return-void

    :cond_7
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p1, :cond_9

    invoke-static {v2}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/bgl;->b(Lcom/google/android/gms/b/a;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgl;->h()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgl;->g()V

    :cond_8
    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    const-string v2, "/nativeExpressViewClicked"

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/bgi;Lcom/google/android/gms/internal/bgl;Lcom/google/android/gms/ads/internal/c;)Lcom/google/android/gms/ads/internal/gmsg/aa;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    return-void

    :cond_9
    const-string p1, "No matching template id and mapper"

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_4
    const-string p1, "No template ids present in mediation response"

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error occurred while recording impression and registering for clicks"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/be;->a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/bt;->b(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->H:Lcom/google/android/gms/internal/asl;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->H:Lcom/google/android/gms/internal/asl;

    sget-object p2, Lcom/google/android/gms/internal/asn$a$b;->c:Lcom/google/android/gms/internal/asn$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asn$a$b;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return v1

    :cond_2
    iget-boolean p1, p2, Lcom/google/android/gms/internal/gl;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/bt;->d(Lcom/google/android/gms/internal/gl;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->z()Lcom/google/android/gms/internal/ly;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ly;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->z()Lcom/google/android/gms/internal/ly;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ly;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/gl;->l:Z

    if-nez p1, :cond_6

    new-instance p1, Lcom/google/android/gms/ads/internal/b;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/ads/internal/bt;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    new-instance v2, Lcom/google/android/gms/ads/internal/bu;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/ads/internal/bu;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/po;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/aw;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/axt;->bP:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Z)V

    :cond_6
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz p1, :cond_8

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->b()Lcom/google/android/gms/internal/oj;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/google/android/gms/internal/pk;->g()V

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->w:Lcom/google/android/gms/internal/axc;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->w:Lcom/google/android/gms/internal/axc;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/oj;->a(Lcom/google/android/gms/internal/axc;)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz p1, :cond_d

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->g:Lcom/google/android/gms/internal/apf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/apf;->a(Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/internal/gl;)V

    :cond_9
    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v0

    new-instance p1, Lcom/google/android/gms/internal/aqg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/aqg;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gb;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p2, Lcom/google/android/gms/internal/gl;->a:Lcom/google/android/gms/internal/aud;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bt;->a(Lcom/google/android/gms/internal/aud;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/ga;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ga;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/aqg;->a(Lcom/google/android/gms/internal/aqk;)V

    :cond_a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gl;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/aqg;->a(Lcom/google/android/gms/internal/aqk;)V

    goto :goto_2

    :cond_b
    iget-object v1, p2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/bv;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/ads/internal/bv;-><init>(Lcom/google/android/gms/internal/aqg;Lcom/google/android/gms/internal/gl;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/pn;)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->F:Landroid/view/View;

    if-eqz p1, :cond_d

    iget-object p1, p2, Lcom/google/android/gms/internal/gl;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->g:Lcom/google/android/gms/internal/apf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->F:Landroid/view/View;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/internal/apf;->a(Lcom/google/android/gms/internal/auh;Lcom/google/android/gms/internal/gl;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/aw;->F:Landroid/view/View;

    :cond_d
    :goto_2
    iget-boolean p1, p2, Lcom/google/android/gms/internal/gl;->m:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/aw;->a(Landroid/view/View;)V

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/bt;->j:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aud;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/aud;->h:Z

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/bt;->j:Z

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/aud;

    iget v5, v1, Lcom/google/android/gms/internal/aud;->a:I

    iget-wide v6, v1, Lcom/google/android/gms/internal/aud;->b:J

    iget-object v8, v1, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    iget v9, v1, Lcom/google/android/gms/internal/aud;->d:I

    iget-object v10, v1, Lcom/google/android/gms/internal/aud;->e:Ljava/util/List;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/aud;->f:Z

    iget v12, v1, Lcom/google/android/gms/internal/aud;->g:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/aud;->h:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/bt;->j:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v1, Lcom/google/android/gms/internal/aud;->i:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/aud;->j:Lcom/google/android/gms/internal/awy;

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->k:Landroid/location/Location;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->l:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->m:Landroid/os/Bundle;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->n:Landroid/os/Bundle;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->o:Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->p:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/aud;->q:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/aud;->r:Z

    move/from16 v23, v1

    move-object v4, v2

    invoke-direct/range {v4 .. v23}, Lcom/google/android/gms/internal/aud;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/awy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_2
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/be;->b(Lcom/google/android/gms/internal/aud;)Z

    move-result v1

    return v1
.end method

.method final d(Lcom/google/android/gms/internal/gl;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/gl;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/ax;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/po;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/az;->a(Lcom/google/android/gms/internal/gl;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/gl;->l:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/bt;->d(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/bt;->d(Lcom/google/android/gms/internal/gl;)V

    return-void
.end method

.method public final s()Lcom/google/android/gms/internal/awd;
    .locals 1

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bt;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->b()Lcom/google/android/gms/internal/oj;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
