.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/av$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$a;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$d;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$c;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$e;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    }
.end annotation


# instance fields
.field private A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

.field private B:I

.field private final C:Landroid/graphics/Rect;

.field private final D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

.field private E:Z

.field private F:Z

.field private G:[I

.field private final H:Ljava/lang/Runnable;

.field a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

.field b:Landroid/support/v7/widget/au;

.field c:Landroid/support/v7/widget/au;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/support/v7/widget/ao;

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private z:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/av$i;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    new-instance p1, Landroid/support/v7/widget/ao;

    invoke-direct {p1}, Landroid/support/v7/widget/ao;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/av$i;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/av$i$b;

    move-result-object p1

    iget p2, p1, Landroid/support/v7/widget/av$i$b;->a:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    iget p2, p1, Landroid/support/v7/widget/av$i$b;->b:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    iget-boolean p1, p1, Landroid/support/v7/widget/av$i$b;->c:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    new-instance p1, Landroid/support/v7/widget/ao;

    invoke-direct {p1}, Landroid/support/v7/widget/ao;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()V

    return-void
.end method

.method private M()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/au;->a(Landroid/support/v7/widget/av$i;I)Landroid/support/v7/widget/au;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/au;->a(Landroid/support/v7/widget/av$i;I)Landroid/support/v7/widget/au;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    return-void
.end method

.method private N()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    return-void
.end method

.method private O()V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->h()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/au;->e(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v5, v5

    div-float v5, v4, v5

    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v4}, Landroid/support/v7/widget/au;->h()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v4}, Landroid/support/v7/widget/au;->f()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    if-ne v3, v0, :cond_5

    return-void

    :cond_5
    :goto_2
    if-ge v2, v1, :cond_9

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v5, v6, :cond_7

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v5, v6

    iget-object v7, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int/2addr v5, v7

    neg-int v5, v5

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v5, v7

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v7, v6

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int/2addr v7, v4

    neg-int v4, v7

    mul-int/2addr v4, v0

    :goto_3
    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    :cond_7
    iget-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v5, v7

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    mul-int/2addr v4, v0

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v7, v6, :cond_8

    goto :goto_3

    :cond_8
    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/av$u;)I
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-boolean v0, v0, Landroid/support/v7/widget/ao;->i:Z

    if-eqz v0, :cond_1

    iget v0, v8, Landroid/support/v7/widget/ao;->e:I

    if-ne v0, v10, :cond_0

    const v0, 0x7fffffff

    :goto_0
    move v11, v0

    goto :goto_1

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_1
    iget v0, v8, Landroid/support/v7/widget/ao;->e:I

    if-ne v0, v10, :cond_2

    iget v0, v8, Landroid/support/v7/widget/ao;->g:I

    iget v1, v8, Landroid/support/v7/widget/ao;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, v8, Landroid/support/v7/widget/ao;->f:I

    iget v1, v8, Landroid/support/v7/widget/ao;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iget v0, v8, Landroid/support/v7/widget/ao;->e:I

    invoke-direct {v6, v0, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    iget-boolean v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->d()I

    move-result v0

    :goto_2
    move v12, v0

    goto :goto_3

    :cond_3
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()I

    move-result v0

    goto :goto_2

    :goto_3
    move v0, v9

    :goto_4
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/av$u;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-boolean v1, v1, Landroid/support/v7/widget/ao;->i:Z

    if-nez v1, :cond_4

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_4
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/av$p;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v3, v10

    goto :goto_5

    :cond_5
    move v3, v9

    :goto_5
    if-eqz v3, :cond_7

    iget-boolean v1, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v9

    goto :goto_6

    :cond_6
    invoke-direct {v6, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ao;)Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    move-result-object v1

    :goto_6
    iget-object v4, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v4, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(ILandroid/support/v7/widget/StaggeredGridLayoutManager$e;)V

    goto :goto_7

    :cond_7
    iget-object v4, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v4, v1

    :goto_7
    move-object v15, v1

    iput-object v15, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v1, v8, Landroid/support/v7/widget/ao;->e:I

    if-ne v1, v10, :cond_8

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v6, v13, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    :goto_8
    invoke-direct {v6, v13, v14, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Z)V

    iget v1, v8, Landroid/support/v7/widget/ao;->e:I

    if-ne v1, v10, :cond_b

    iget-boolean v1, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_9

    invoke-direct {v6, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v1

    goto :goto_9

    :cond_9
    invoke-virtual {v15, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v1

    :goto_9
    iget-object v4, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v4, v13}, Landroid/support/v7/widget/au;->e(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v3, :cond_a

    iget-boolean v5, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_a

    invoke-direct {v6, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v5

    iput v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->b:I

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->a:I

    iget-object v9, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;)V

    :cond_a
    move v5, v4

    move v4, v1

    goto :goto_b

    :cond_b
    iget-boolean v1, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_c

    invoke-direct {v6, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v1

    goto :goto_a

    :cond_c
    invoke-virtual {v15, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v1

    :goto_a
    iget-object v4, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v4, v13}, Landroid/support/v7/widget/au;->e(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    if-eqz v3, :cond_d

    iget-boolean v5, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_d

    invoke-direct {v6, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v5

    iput v10, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->b:I

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->a:I

    iget-object v9, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;)V

    :cond_d
    move v5, v1

    :goto_b
    iget-boolean v1, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_11

    iget v1, v8, Landroid/support/v7/widget/ao;->d:I

    if-ne v1, v2, :cond_11

    if-eqz v3, :cond_f

    :cond_e
    :goto_c
    iput-boolean v10, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    goto :goto_f

    :cond_f
    iget v1, v8, Landroid/support/v7/widget/ao;->e:I

    if-ne v1, v10, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()Z

    move-result v1

    :goto_d
    xor-int/2addr v1, v10

    goto :goto_e

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()Z

    move-result v1

    goto :goto_d

    :goto_e
    if-eqz v1, :cond_11

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-boolean v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->d:Z

    goto :goto_c

    :cond_11
    :goto_f
    invoke-direct {v6, v13, v14, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Landroid/support/v7/widget/ao;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v10, :cond_13

    iget-boolean v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_12

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->d()I

    move-result v0

    goto :goto_10

    :cond_12
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->d()I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v1, v10

    iget v2, v15, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_10
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v1, v13}, Landroid/support/v7/widget/au;->e(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v3, v1

    goto :goto_12

    :cond_13
    iget-boolean v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_14

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()I

    move-result v0

    goto :goto_11

    :cond_14
    iget v0, v15, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->c()I

    move-result v1

    add-int/2addr v0, v1

    :goto_11
    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v1, v13}, Landroid/support/v7/widget/au;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v9, v1

    :goto_12
    iget v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v10, :cond_15

    move-object v0, v6

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v9

    :goto_13
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    goto :goto_14

    :cond_15
    move-object v0, v6

    move-object v1, v13

    move v2, v4

    move v4, v5

    move v5, v9

    goto :goto_13

    :goto_14
    iget-boolean v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v0, v0, Landroid/support/v7/widget/ao;->e:I

    invoke-direct {v6, v0, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    goto :goto_15

    :cond_16
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v0, v0, Landroid/support/v7/widget/ao;->e:I

    invoke-direct {v6, v15, v0, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;II)V

    :goto_15
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {v6, v7, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;)V

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-boolean v0, v0, Landroid/support/v7/widget/ao;->h:Z

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_17

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_16

    :cond_17
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, v15, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_17

    :cond_18
    :goto_16
    const/4 v3, 0x0

    :goto_17
    move v9, v3

    move v0, v10

    goto/16 :goto_4

    :cond_19
    move v3, v9

    if-nez v0, :cond_1a

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {v6, v7, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;)V

    :cond_1a
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v0, v0, Landroid/support/v7/widget/ao;->e:I

    if-ne v0, v2, :cond_1b

    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->c()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_18

    :cond_1b
    iget-object v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->d()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->d()I

    move-result v1

    sub-int v1, v0, v1

    :goto_18
    if-lez v1, :cond_1c

    iget v0, v8, Landroid/support/v7/widget/ao;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v9

    :cond_1c
    return v3
.end method

.method private a(Landroid/support/v7/widget/ao;)Landroid/support/v7/widget/StaggeredGridLayoutManager$e;
    .locals 7

    iget v0, p1, Landroid/support/v7/widget/ao;->e:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v0, v2

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    move v3, v2

    :goto_0
    iget p1, p1, Landroid/support/v7/widget/ao;->e:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    const p1, 0x7fffffff

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->c()I

    move-result v2

    :goto_1
    if-eq v0, v1, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v6

    if-ge v6, p1, :cond_1

    move-object v4, v5

    move p1, v6

    :cond_1
    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    const/high16 p1, -0x80000000

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->d()I

    move-result v2

    :goto_2
    if-eq v0, v1, :cond_5

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v6

    if-le v6, p1, :cond_4

    move-object v4, v5

    move p1, v6

    :cond_4
    add-int/2addr v0, v3

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private a(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->c:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->c:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e()V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->d:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->i:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->d()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_2

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->c()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->b:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:I

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->h:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->i:Z

    :goto_3
    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_4

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    goto :goto_3

    :goto_4
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->e:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->f:[I

    iput-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    iput-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    :cond_5
    return-void
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    :goto_0
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/av$p;I)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/au;->b(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/au;->c(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    :cond_3
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->h()V

    :cond_4
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/av$p;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;)V
    .locals 2

    iget-boolean v0, p2, Landroid/support/v7/widget/ao;->a:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Landroid/support/v7/widget/ao;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Landroid/support/v7/widget/ao;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Landroid/support/v7/widget/ao;->e:I

    if-ne v0, v1, :cond_1

    :goto_0
    iget p2, p2, Landroid/support/v7/widget/ao;->g:I

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/av$p;I)V

    return-void

    :cond_1
    :goto_2
    iget p2, p2, Landroid/support/v7/widget/ao;->f:I

    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;I)V

    return-void

    :cond_2
    iget v0, p2, Landroid/support/v7/widget/ao;->e:I

    if-ne v0, v1, :cond_4

    iget v0, p2, Landroid/support/v7/widget/ao;->f:I

    iget v1, p2, Landroid/support/v7/widget/ao;->f:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p2, Landroid/support/v7/widget/ao;->g:I

    iget p2, p2, Landroid/support/v7/widget/ao;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    goto :goto_1

    :cond_4
    iget v0, p2, Landroid/support/v7/widget/ao;->g:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v0

    iget v1, p2, Landroid/support/v7/widget/ao;->g:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    iget v1, p2, Landroid/support/v7/widget/ao;->f:I

    iget p2, p2, Landroid/support/v7/widget/ao;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/av$u;->e()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/av$p;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    return-void

    :cond_1
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v5, :cond_4

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()V

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    :goto_2
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    iput-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-nez v5, :cond_7

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    if-ne v5, v2, :cond_7

    iget-boolean v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v5, v6, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v5

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eq v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    iput-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->c:I

    if-ge v5, v4, :cond_e

    :cond_8
    iget-boolean v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v5, :cond_a

    move v1, v3

    :goto_3
    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e()V

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v1

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_4
    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e()V

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    move v1, v3

    :goto_6
    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v5, :cond_d

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a([Landroid/support/v7/widget/StaggeredGridLayoutManager$e;)V

    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput-boolean v3, v1, Landroid/support/v7/widget/ao;->a:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/av$u;)V

    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v1, :cond_f

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/av$u;)I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)V

    :goto_7
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v5, v5, Landroid/support/v7/widget/ao;->d:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/ao;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/av$u;)I

    goto :goto_8

    :cond_f
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/av$u;)I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)V

    goto :goto_7

    :goto_8
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->O()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    if-lez v1, :cond_11

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_10

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V

    goto :goto_9

    :cond_10
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V

    :cond_11
    :goto_9
    if-eqz p3, :cond_14

    invoke-virtual {p2}, Landroid/support/v7/widget/av$u;->a()Z

    move-result p3

    if-nez p3, :cond_14

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz p3, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result p3

    if-lez p3, :cond_13

    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-nez p3, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_13

    :cond_12
    move p3, v4

    goto :goto_a

    :cond_13
    move p3, v3

    :goto_a
    if-eqz p3, :cond_14

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_b

    :cond_14
    move v4, v3

    :goto_b
    invoke-virtual {p2}, Landroid/support/v7/widget/av$u;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    :cond_15
    iget-boolean p3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v4, :cond_16

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V

    :cond_16
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result p2

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result p3

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/av$j;)Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/av$j;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Landroid/support/v7/widget/ao;)V
    .locals 1

    iget p3, p3, Landroid/support/v7/widget/ao;->e:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-boolean p3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(Landroid/view/View;)V

    return-void

    :cond_1
    iget-boolean p3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object p2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Z)V
    .locals 6

    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    invoke-static {v2, v3, v4, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result p2

    :goto_1
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v4

    add-int/2addr v3, v4

    iget p2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    invoke-static {v0, v2, v3, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result p2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v3

    iget v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    invoke-static {v0, v3, v2, v4, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    invoke-static {v0, v3, v4, v5, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v3

    iget p2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    invoke-static {v1, v3, v2, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result p2

    goto :goto_1

    return-void
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;)Z
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->d()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object p1

    iget-boolean p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->c()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object p1

    iget-boolean p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private b(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private b(Landroid/support/v7/widget/av$u;)I
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/az;->a(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/au;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/av$i;ZZ)I

    move-result p1

    return p1
.end method

.method private b(ILandroid/support/v7/widget/av$u;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ao;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput p1, v0, Landroid/support/v7/widget/ao;->c:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/av$u;->c()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ge p2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {p1}, Landroid/support/v7/widget/au;->f()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {p1}, Landroid/support/v7/widget/au;->f()I

    move-result p1

    move p2, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v3}, Landroid/support/v7/widget/au;->c()I

    move-result v3

    sub-int/2addr v3, p1

    iput v3, v0, Landroid/support/v7/widget/ao;->f:I

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->d()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Landroid/support/v7/widget/ao;->g:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v3}, Landroid/support/v7/widget/au;->e()I

    move-result v3

    add-int/2addr v3, p2

    iput v3, v0, Landroid/support/v7/widget/ao;->g:I

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    neg-int p1, p1

    iput p1, p2, Landroid/support/v7/widget/ao;->f:I

    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput-boolean v1, p1, Landroid/support/v7/widget/ao;->h:Z

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput-boolean v2, p1, Landroid/support/v7/widget/ao;->a:Z

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {p2}, Landroid/support/v7/widget/au;->h()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {p2}, Landroid/support/v7/widget/au;->e()I

    move-result p2

    if-nez p2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p1, Landroid/support/v7/widget/ao;->i:Z

    return-void
.end method

.method private b(Landroid/support/v7/widget/av$p;I)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/au;->d(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->g()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    :cond_3
    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->g()V

    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/av$p;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private b(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->d()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/au;->a(I)V

    :cond_1
    return-void
.end method

.method private c(III)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, v2

    move v2, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, v2

    move v2, p1

    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    if-eq p3, v1, :cond_3

    packed-switch p3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)V

    goto :goto_3

    :pswitch_1
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(II)V

    goto :goto_3

    :cond_3
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(II)V

    :goto_3
    if-gt v3, v0, :cond_4

    return-void

    :cond_4
    iget-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result p1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result p1

    :goto_4
    if-gt v2, p1, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/au;->a(I)V

    :cond_1
    return-void
.end method

.method private c(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/av$u;->e()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/av$u;->e()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u(I)I

    move-result p1

    :goto_0
    iput p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    const/high16 p1, -0x80000000

    iput p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    const/4 p1, 0x1

    return p1
.end method

.method private i(Landroid/support/v7/widget/av$u;)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/az;->a(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/au;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/av$i;Z)I

    move-result p1

    return p1
.end method

.method private j(Landroid/support/v7/widget/av$u;)I
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/az;->b(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/au;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/av$i;Z)I

    move-result p1

    return p1
.end method

.method private l(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput p1, v0, Landroid/support/v7/widget/ao;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Landroid/support/v7/widget/ao;->d:I

    return-void
.end method

.method private m(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
    .locals 4

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;-><init>()V

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->c:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private n(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
    .locals 4

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;-><init>()V

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->c:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private o(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private p(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private q(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private r(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private s(I)Z
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-ne p1, v0, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v0

    if-ne p1, v0, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method private t(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    move v1, v2

    return v1
.end method

.method private u(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private v(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private w(I)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v3, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v3

    :pswitch_1
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v1

    :cond_4
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v3, :cond_5

    move v2, v3

    :cond_5
    return v2

    :cond_6
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez p1, :cond_7

    move v2, v3

    :cond_7
    return v2

    :cond_8
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v3, :cond_9

    return v1

    :cond_9
    move v1, v2

    return v1

    :cond_a
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez p1, :cond_b

    return v1

    :cond_b
    move v1, v2

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method K()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method L()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method public a(ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/av$i;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method public a()Landroid/support/v7/widget/av$j;
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/av$j;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/av$j;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()V

    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v4

    :goto_0
    invoke-direct {p0, v4, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/av$u;)V

    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)V

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v6, v6, Landroid/support/v7/widget/ao;->d:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/support/v7/widget/ao;->c:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    const v6, 0x3eaaaaab

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v7}, Landroid/support/v7/widget/au;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/support/v7/widget/ao;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput-boolean v3, v5, Landroid/support/v7/widget/ao;->h:Z

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/ao;->a:Z

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0, p3, v5, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/av$u;)I

    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-nez v2, :cond_4

    invoke-virtual {v0, v4, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eq p3, p1, :cond_4

    return-object p3

    :cond_4
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s(I)Z

    move-result p3

    if-eqz p3, :cond_6

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr p3, v3

    :goto_1
    if-ltz p3, :cond_8

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_5

    if-eq p4, p1, :cond_5

    return-object p4

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    move p3, v6

    :goto_2
    iget p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p3, p4, :cond_8

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    if-eq p4, p1, :cond_7

    return-object p4

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr p3, v3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_9

    move p4, v3

    goto :goto_3

    :cond_9
    move p4, v6

    :goto_3
    if-ne p3, p4, :cond_a

    move p3, v3

    goto :goto_4

    :cond_a
    move p3, v6

    :goto_4
    if-nez v2, :cond_c

    if-eqz p3, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->j()I

    move-result p4

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->k()I

    move-result p4

    :goto_5
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    if-eq p4, p1, :cond_c

    return-object p4

    :cond_c
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s(I)Z

    move-result p2

    if-eqz p2, :cond_10

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr p2, v3

    :goto_6
    if-ltz p2, :cond_13

    iget p4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    if-ne p2, p4, :cond_d

    goto :goto_8

    :cond_d
    if-eqz p3, :cond_e

    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->j()I

    move-result p4

    goto :goto_7

    :cond_e
    iget-object p4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->k()I

    move-result p4

    :goto_7
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_f

    if-eq p4, p1, :cond_f

    return-object p4

    :cond_f
    :goto_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_10
    :goto_9
    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v6, p2, :cond_13

    if-eqz p3, :cond_11

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->j()I

    move-result p2

    goto :goto_a

    :cond_11
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->k()I

    move-result p2

    :goto_a
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    if-eq p2, p1, :cond_12

    return-object p2

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    return-object v1
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()V

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array p1, p1, [Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    :cond_1
    return-void
.end method

.method public a(IILandroid/support/v7/widget/av$u;Landroid/support/v7/widget/av$i$a;)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/av$u;)V

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    array-length p1, p1

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p2, v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v1, v1, Landroid/support/v7/widget/ao;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v1, v1, Landroid/support/v7/widget/ao;->f:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v3, v3, Landroid/support/v7/widget/ao;->f:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v2

    :goto_2
    sub-int/2addr v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v2, v2, Landroid/support/v7/widget/ao;->g:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v2, v2, Landroid/support/v7/widget/ao;->g:I

    goto :goto_2

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_4
    if-ge p1, v0, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/av$u;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget p2, p2, Landroid/support/v7/widget/ao;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Landroid/support/v7/widget/av$i$a;->b(II)V

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v1, p2, Landroid/support/v7/widget/ao;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v2, v2, Landroid/support/v7/widget/ao;->d:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/ao;->c:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method a(ILandroid/support/v7/widget/av$u;)V
    .locals 5

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v2

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput-boolean v0, v3, Landroid/support/v7/widget/ao;->a:Z

    invoke-direct {p0, v1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/av$u;)V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)V

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v0, v0, Landroid/support/v7/widget/ao;->d:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/support/v7/widget/ao;->c:I

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/ao;->b:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p1

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p2

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Landroid/view/View;Landroid/support/v4/h/a/b;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-nez p2, :cond_0

    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/av$i;->a(Landroid/view/View;Landroid/support/v4/h/a/b;)V

    return-void

    :cond_0
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 p3, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v0

    iget-boolean p2, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz p2, :cond_1

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    :cond_1
    move v1, p3

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    iget-boolean v4, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/h/a/b$c;->a(IIIIZZ)Landroid/support/v4/h/a/b$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/h/a/b;->b(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v2

    iget-boolean p2, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz p2, :cond_3

    iget p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    :cond_3
    move v3, p3

    goto :goto_0

    return-void
.end method

.method public a(Landroid/support/v7/widget/av$u;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/av$i;->a(Landroid/support/v7/widget/av$u;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    return-void
.end method

.method a(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    const/4 p1, 0x0

    iput p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    return-void
.end method

.method public a(Landroid/support/v7/widget/av;)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/av;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/av;III)V
    .locals 0

    const/16 p1, 0x8

    invoke-direct {p0, p2, p3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/av;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p2, p3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/av;Landroid/support/v7/widget/av$p;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/av$i;->a(Landroid/support/v7/widget/av;Landroid/support/v7/widget/av$p;)V

    iget-object p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/av;->requestLayout()V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/av$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/av$i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->h:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->h:Z

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/av$j;)Z
    .locals 0

    instance-of p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    return p1
.end method

.method public b(ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/av$i;->b(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method b(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->d()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/au;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    return-object v5

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_1

    :cond_2
    return-object v5

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public b(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    return-void
.end method

.method public b(Landroid/support/v7/widget/av;II)V
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p2, p3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/support/v7/widget/av$u;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/widget/av$u;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p1}, Landroid/support/v7/widget/av$u;->e()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:I

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->c:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    return v0

    :cond_3
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v1

    :goto_1
    iput v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-eq v1, v3, :cond_6

    iget-boolean v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->d()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/au;->b(Landroid/view/View;)I

    move-result p1

    :goto_2
    sub-int/2addr v1, p1

    iput v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->c()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)I

    move-result p1

    goto :goto_2

    return v0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/au;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->f()I

    move-result v2

    if-le v1, v2, :cond_8

    iget-boolean p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {p1}, Landroid/support/v7/widget/au;->d()I

    move-result p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {p1}, Landroid/support/v7/widget/au;->c()I

    move-result p1

    :goto_3
    iput p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2}, Landroid/support/v7/widget/au;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_9

    neg-int p1, v1

    iput p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->d()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/au;->b(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    if-gez v1, :cond_a

    iput v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    :cond_a
    iput v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    :cond_b
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne p1, v3, :cond_d

    iget p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t(I)I

    move-result p1

    if-ne p1, v0, :cond_c

    move v1, v0

    :cond_c
    iput-boolean v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    goto :goto_4

    :cond_d
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a(I)V

    :goto_4
    iput-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    return v0

    :cond_e
    :goto_5
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :cond_f
    return v1
.end method

.method c(ILandroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/av$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/av$u;)I

    move-result p3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iget v0, v0, Landroid/support/v7/widget/ao;->b:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/au;->a(I)V

    iget-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    iput v1, p3, Landroid/support/v7/widget/ao;->b:I

    iget-object p3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Landroid/support/v7/widget/ao;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/ao;)V

    return p1

    :cond_3
    return v1
.end method

.method public c(Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method c(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v1}, Landroid/support/v7/widget/au;->d()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/au;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_1

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    return-object v4

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public c(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/av$p;Landroid/support/v7/widget/av$u;Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method public d()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$d;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;-><init>()V

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->h:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->i:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->j:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:[I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->f:[I

    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->f:[I

    array-length v1, v1

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->e:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->e:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->b:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->c:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->d:[I

    :goto_2
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v3}, Landroid/support/v7/widget/au;->d()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    goto :goto_4

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v3}, Landroid/support/v7/widget/au;->c()I

    move-result v3

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->b:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->c:I

    :cond_6
    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->a:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->b()V

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    return-void
.end method

.method public e(Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method e(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->h()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:I

    return-void
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public g(Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method g()Z
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->K()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->I()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    return v3

    :cond_2
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    add-int/2addr v2, v3

    invoke-virtual {v6, v0, v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v6

    if-nez v6, :cond_5

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    return v1

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v2, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->a:I

    mul-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v1, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->a:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    goto :goto_1

    :cond_7
    return v1
.end method

.method public h(Landroid/support/v7/widget/av$u;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/av$u;)I

    move-result p1

    return p1
.end method

.method h()Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_2

    move v5, v1

    :cond_2
    :goto_2
    if-eq v0, v6, :cond_d

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-direct {p0, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-object v7

    :cond_3
    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_4
    iget-boolean v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v9, :cond_5

    goto :goto_7

    :cond_5
    add-int v9, v0, v5

    if-eq v9, v6, :cond_c

    invoke-virtual {p0, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/au;->b(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v11, v9}, Landroid/support/v7/widget/au;->b(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_6

    return-object v7

    :cond_6
    if-ne v10, v11, :cond_9

    goto :goto_3

    :cond_7
    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/au;

    invoke-virtual {v11, v9}, Landroid/support/v7/widget/au;->a(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_8

    return-object v7

    :cond_8
    if-ne v10, v11, :cond_9

    :goto_3
    move v10, v1

    goto :goto_4

    :cond_9
    move v10, v4

    :goto_4
    if-eqz v10, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_a

    move v8, v1

    goto :goto_5

    :cond_a
    move v8, v4

    :goto_5
    if-gez v3, :cond_b

    move v9, v1

    goto :goto_6

    :cond_b
    move v9, v4

    :goto_6
    if-eq v8, v9, :cond_c

    return-object v7

    :cond_c
    :goto_7
    add-int/2addr v0, v5

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    return-void
.end method

.method public i(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/av$i;->i(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/av$i;->j(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method j()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method k()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public k(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    :cond_0
    return-void
.end method

.method m()Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method n()Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
