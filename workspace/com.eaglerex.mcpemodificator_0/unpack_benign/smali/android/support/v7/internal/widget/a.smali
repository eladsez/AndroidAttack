.class abstract Landroid/support/v7/internal/widget/a;
.super Landroid/view/ViewGroup;


# instance fields
.field protected a:Landroid/support/v7/internal/view/menu/ActionMenuView;

.field protected b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field protected c:Landroid/support/v7/internal/widget/ActionBarContainer;

.field protected d:Z

.field protected e:Z

.field protected f:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;III)I
    .locals 2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p2, v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/view/View;III)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int v3, p2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    return v0
.end method

.method public b()V
    .locals 1

    new-instance v0, Landroid/support/v7/internal/widget/b;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/b;-><init>(Landroid/support/v7/internal/widget/a;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected c(Landroid/view/View;III)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    sub-int v3, p2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v2, p2, v1}, Landroid/view/View;->layout(IIII)V

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedVisibility()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/a;->f:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/b/j;->ActionBar:[I

    sget v3, Landroid/support/v7/b/b;->actionBarStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/a;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/a;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/c;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/a;->setSplitActionBar(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/a;->f:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->requestLayout()V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/a;->d:Z

    return-void
.end method

.method public setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/a;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/a;->e:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
