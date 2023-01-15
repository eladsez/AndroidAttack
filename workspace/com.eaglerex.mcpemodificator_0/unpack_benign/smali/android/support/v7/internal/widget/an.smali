.class Landroid/support/v7/internal/widget/an;
.super Landroid/support/v7/internal/widget/t;

# interfaces
.implements Landroid/support/v7/internal/widget/ap;


# instance fields
.field final synthetic b:Landroid/support/v7/internal/widget/aj;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/aj;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/an;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->a(I)V

    new-instance v0, Landroid/support/v7/internal/widget/o;

    new-instance v1, Landroid/support/v7/internal/widget/ao;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/ao;-><init>(Landroid/support/v7/internal/widget/an;Landroid/support/v7/internal/widget/aj;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/o;-><init>(Landroid/support/v7/internal/widget/k;Landroid/support/v7/internal/widget/n;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/an;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/t;->a(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/an;->d:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/an;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->getPaddingLeft()I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    iget v0, v0, Landroid/support/v7/internal/widget/aj;->E:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->getWidth()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/an;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/internal/widget/aj;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->e(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/an;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aj;->a(Landroid/support/v7/internal/widget/aj;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aj;->a(Landroid/support/v7/internal/widget/aj;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->b(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->f(I)V

    invoke-super {p0}, Landroid/support/v7/internal/widget/t;->c()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/an;->h()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->g(I)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    iget v0, v0, Landroid/support/v7/internal/widget/aj;->E:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/aj;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->e(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->b:Landroid/support/v7/internal/widget/aj;

    iget v0, v0, Landroid/support/v7/internal/widget/aj;->E:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->e(I)V

    goto :goto_0
.end method
