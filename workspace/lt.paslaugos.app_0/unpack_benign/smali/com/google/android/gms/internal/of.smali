.class public final Lcom/google/android/gms/internal/of;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/internal/nu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/nu;

.field private final b:Lcom/google/android/gms/internal/ms;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/nu;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    new-instance v0, Lcom/google/android/gms/internal/ms;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->p()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/internal/ms;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/nu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/of;->b:Lcom/google/android/gms/internal/ms;

    iget-object p1, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/internal/nu;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/of;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->A()Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->B()Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->C()Z

    move-result v0

    return v0
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->D()V

    return-void
.end method

.method public final E()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->E()V

    return-void
.end method

.method public final F()Lcom/google/android/gms/internal/azf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->F()Lcom/google/android/gms/internal/azf;

    move-result-object v0

    return-object v0
.end method

.method public final G()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/of;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/nu;->setBackgroundColor(I)V

    return-void
.end method

.method public final H()V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/of;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gq;->h()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/google/android/gms/a$b;->s7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Test Ad"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/of;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/of;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ms;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->b:Lcom/google/android/gms/internal/ms;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aqj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/aqj;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/azf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/azf;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/oj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/oj;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/pr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/pr;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "-",
            "Lcom/google/android/gms/internal/nu;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/nu;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->a(Z)V

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/nu;->a(ZI)V

    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/nu;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/nu;->a(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/oj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->b()Lcom/google/android/gms/internal/oj;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->b(Lcom/google/android/gms/ads/internal/overlay/d;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "-",
            "Lcom/google/android/gms/internal/nu;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/nu;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/nu;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->b(Z)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/aye;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->c()Lcom/google/android/gms/internal/aye;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->c(Z)V

    return-void
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->d()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->d(Z)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->destroy()V

    return-void
.end method

.method public final e()Lcom/google/android/gms/ads/internal/br;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->e()Lcom/google/android/gms/ads/internal/br;

    move-result-object v0

    return-object v0
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->e(Z)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->f()V

    return-void
.end method

.method public final f_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->f_()V

    return-void
.end method

.method public final g()Lcom/google/android/gms/internal/ayf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->g()Lcom/google/android/gms/internal/ayf;

    move-result-object v0

    return-object v0
.end method

.method public final g_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->g_()V

    return-void
.end method

.method public final getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestedOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/km;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/of;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/of;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/nu;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/nu;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->m()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->n()V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->o()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->b:Lcom/google/android/gms/internal/ms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ms;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->onResume()V

    return-void
.end method

.method public final p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->p()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/ads/internal/overlay/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->q()Lcom/google/android/gms/ads/internal/overlay/d;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/ads/internal/overlay/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->r()Lcom/google/android/gms/ads/internal/overlay/d;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/internal/pr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->s()Lcom/google/android/gms/internal/pr;

    move-result-object v0

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->setRequestedOrientation(I)V

    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nu;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public final stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->stopLoading()V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/internal/pk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->v()Z

    move-result v0

    return v0
.end method

.method public final w()Lcom/google/android/gms/internal/zk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->w()Lcom/google/android/gms/internal/zk;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->x()Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->y()Z

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->b:Lcom/google/android/gms/internal/ms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ms;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/of;->a:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->z()V

    return-void
.end method
