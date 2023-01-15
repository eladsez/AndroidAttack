.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Landroid/support/v7/internal/widget/n;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private d:Landroid/support/v7/internal/widget/ai;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/support/v7/internal/widget/aj;

.field private g:Z

.field private final h:Landroid/view/LayoutInflater;

.field private i:I

.field private j:I


# direct methods
.method private a(Landroid/support/v7/a/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/b/g;->abc_action_bar_tab:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/a/d;Z)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/support/v7/internal/widget/ai;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/internal/widget/ai;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ai;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ag;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/support/v7/internal/widget/ai;

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/support/v7/internal/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/a/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/a/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d()Landroid/support/v7/internal/widget/aj;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    new-instance v1, Landroid/support/v7/internal/widget/ah;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ah;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aj;->a(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->j:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aj;->a(I)V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method

.method private d()Landroid/support/v7/internal/widget/aj;
    .locals 4

    new-instance v0, Landroid/support/v7/internal/widget/aj;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/b/b;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/aj;->b(Landroid/support/v7/internal/widget/n;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/ag;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/k;Landroid/view/View;IJ)V
    .locals 1

    check-cast p2, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->d()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->f()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_4

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_4

    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    if-nez v0, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Z

    if-eqz v4, :cond_5

    :goto_3
    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_6

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()V

    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->j:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c()Z

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c()Z

    goto :goto_4
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    const/4 v1, 0x0

    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->j:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(I)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/aj;->a(I)V

    :cond_3
    return-void
.end method
