.class Landroid/support/v7/internal/widget/aj;
.super Landroid/support/v7/internal/widget/AbsSpinnerICS;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field E:I

.field private F:Landroid/support/v7/internal/widget/ap;

.field private G:Landroid/support/v7/internal/widget/am;

.field private H:I

.field private I:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aj;->I:Landroid/graphics/Rect;

    sget-object v0, Landroid/support/v7/b/j;->Spinner:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    :cond_0
    packed-switch p4, :pswitch_data_0

    :goto_0
    const/16 v1, 0x11

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/aj;->H:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/ap;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->G:Landroid/support/v7/internal/widget/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->G:Landroid/support/v7/internal/widget/am;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ap;->a(Landroid/widget/ListAdapter;)V

    iput-object v5, p0, Landroid/support/v7/internal/widget/aj;->G:Landroid/support/v7/internal/widget/am;

    :cond_1
    return-void

    :pswitch_0
    new-instance v1, Landroid/support/v7/internal/widget/al;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/internal/widget/al;-><init>(Landroid/support/v7/internal/widget/aj;Landroid/support/v7/internal/widget/ak;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/support/v7/internal/widget/an;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/an;-><init>(Landroid/support/v7/internal/widget/aj;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/aj;->E:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/an;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/an;->c(I)V

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/an;->b(I)V

    :cond_3
    iput-object v1, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/aj;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->I:Landroid/graphics/Rect;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/aj;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget v1, p0, Landroid/support/v7/internal/widget/aj;->b:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/support/v7/internal/widget/aj;->c:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private e(I)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/aj;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->j:Landroid/support/v7/internal/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/d;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/aj;->c(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/aj;->c(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v2, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v3, v8, v1

    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    :goto_1
    if-ge v5, v8, :cond_2

    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    move-object v1, v2

    :goto_2
    invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->I:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public a(Landroid/support/v7/internal/widget/n;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    new-instance v1, Landroid/support/v7/internal/widget/am;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/am;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ap;->a(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/internal/widget/am;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/am;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aj;->G:Landroid/support/v7/internal/widget/am;

    goto :goto_0
.end method

.method b(IZ)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/aj;->u:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->k()V

    :cond_0
    iget v2, p0, Landroid/support/v7/internal/widget/aj;->z:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->a()V

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/support/v7/internal/widget/aj;->v:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/support/v7/internal/widget/aj;->v:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aj;->c(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->b()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->removeAllViewsInLayout()V

    iget v2, p0, Landroid/support/v7/internal/widget/aj;->x:I

    iput v2, p0, Landroid/support/v7/internal/widget/aj;->k:I

    iget v2, p0, Landroid/support/v7/internal/widget/aj;->x:I

    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/aj;->e(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Landroid/support/v7/internal/widget/aj;->H:I

    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->j:Landroid/support/v7/internal/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/d;->a()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->l()V

    iput-boolean v5, p0, Landroid/support/v7/internal/widget/aj;->u:Z

    iput-boolean v5, p0, Landroid/support/v7/internal/widget/aj;->p:Z

    iget v0, p0, Landroid/support/v7/internal/widget/aj;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->d(I)V

    goto :goto_0

    :sswitch_0
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v3, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    :sswitch_1
    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method b(Landroid/support/v7/internal/widget/n;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/support/v7/internal/widget/n;)V

    return-void
.end method

.method public getBaseline()I
    .locals 4

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/internal/widget/aj;->e(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->j:Landroid/support/v7/internal/widget/d;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/d;->a(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->removeAllViewsInLayout()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/aj;->a(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ap;->d()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aj;->r:Z

    invoke-virtual {p0, v1, v1}, Landroid/support/v7/internal/widget/aj;->b(IZ)V

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/aj;->r:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/aj;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/aj;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ap;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->F:Landroid/support/v7/internal/widget/ap;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ap;->c()V

    :cond_0
    return v0
.end method
