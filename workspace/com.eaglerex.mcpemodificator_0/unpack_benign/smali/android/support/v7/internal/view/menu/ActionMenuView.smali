.class public Landroid/support/v7/internal/view/menu/ActionMenuView;
.super Landroid/support/v7/internal/widget/LinearLayoutICS;

# interfaces
.implements Landroid/support/v7/internal/view/menu/p;
.implements Landroid/support/v7/internal/view/menu/w;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/n;

.field private b:Z

.field private c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:I

    sget-object v0, Landroid/support/v7/b/j;->ActionBar:[I

    sget v1, Landroid/support/v7/b/b;->actionBarStyle:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->i:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/j;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    instance-of v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int v1, v7, p1

    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/j;->a:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/internal/view/menu/j;->d:Z

    iput v1, v0, Landroid/support/v7/internal/view/menu/j;->b:I

    mul-int v0, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private a(II)V
    .locals 33

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v8

    add-int v18, v5, v8

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v5, :cond_0

    sub-int v5, v19, v18

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v8, v5

    :goto_0
    sub-int v24, v6, v7

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:I

    div-int v9, v24, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:I

    rem-int v5, v24, v5

    if-nez v9, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->i:I

    sub-int v8, v19, v18

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v8, -0x80000000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v8, v5

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->f:I

    div-int/2addr v5, v9

    add-int v25, v6, v5

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v26

    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v14, 0x8

    if-ne v5, v14, :cond_2

    move v7, v6

    move-wide v5, v12

    move/from16 v12, v16

    move v13, v9

    move v9, v15

    :goto_3
    add-int/lit8 v14, v17, 0x1

    move/from16 v17, v14

    move v15, v9

    move/from16 v16, v12

    move v9, v13

    move-wide v12, v5

    move v6, v7

    goto :goto_2

    :cond_2
    instance-of v0, v7, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    add-int/lit8 v14, v6, 0x1

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v5, v6, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/j;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/j;->f:Z

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/j;->c:I

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/j;->d:Z

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/j;->leftMargin:I

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/j;->rightMargin:I

    if-eqz v20, :cond_4

    move-object v6, v7

    check-cast v6, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/j;->e:Z

    iget-boolean v6, v5, Landroid/support/v7/internal/view/menu/j;->a:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v7, v0, v6, v8, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v20

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-boolean v6, v5, Landroid/support/v7/internal/view/menu/j;->d:Z

    if-eqz v6, :cond_24

    add-int/lit8 v6, v10, 0x1

    :goto_6
    iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/j;->a:Z

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    :goto_7
    sub-int v11, v9, v20

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move/from16 v0, v16

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v9, 0x1

    move/from16 v0, v20

    if-ne v0, v9, :cond_22

    const/4 v9, 0x1

    shl-int v9, v9, v17

    int-to-long v9, v9

    or-long/2addr v9, v12

    move v12, v7

    move v13, v11

    move v7, v14

    move v11, v5

    move-wide/from16 v31, v9

    move v9, v15

    move v10, v6

    move-wide/from16 v5, v31

    goto/16 :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    move v6, v9

    goto :goto_5

    :cond_6
    if-eqz v11, :cond_7

    const/4 v5, 0x2

    if-ne v6, v5, :cond_7

    const/4 v5, 0x1

    move v7, v5

    :goto_8
    const/16 v17, 0x0

    move-wide/from16 v20, v12

    move/from16 v18, v9

    :goto_9
    if-lez v10, :cond_21

    if-lez v18, :cond_21

    const v14, 0x7fffffff

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move/from16 v22, v5

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/j;

    iget-boolean v0, v5, Landroid/support/v7/internal/view/menu/j;->d:Z

    move/from16 v27, v0

    if-nez v27, :cond_8

    move v5, v9

    move v9, v14

    :goto_b
    add-int/lit8 v14, v22, 0x1

    move/from16 v22, v14

    move v14, v9

    move v9, v5

    goto :goto_a

    :cond_7
    const/4 v5, 0x0

    move v7, v5

    goto :goto_8

    :cond_8
    iget v0, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v14, :cond_9

    iget v9, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    const/4 v5, 0x1

    shl-int v5, v5, v22

    int-to-long v12, v5

    const/4 v5, 0x1

    goto :goto_b

    :cond_9
    iget v5, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    if-ne v5, v14, :cond_20

    const/4 v5, 0x1

    shl-int v5, v5, v22

    int-to-long v0, v5

    move-wide/from16 v27, v0

    or-long v12, v12, v27

    add-int/lit8 v5, v9, 0x1

    move v9, v14

    goto :goto_b

    :cond_a
    or-long v20, v20, v12

    move/from16 v0, v18

    if-le v9, v0, :cond_d

    move-wide/from16 v12, v20

    :goto_c
    if-nez v11, :cond_11

    const/4 v5, 0x1

    if-ne v6, v5, :cond_11

    const/4 v5, 0x1

    :goto_d
    if-lez v18, :cond_1e

    const-wide/16 v9, 0x0

    cmp-long v7, v12, v9

    if-eqz v7, :cond_1e

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v18

    if-lt v0, v6, :cond_b

    if-nez v5, :cond_b

    const/4 v6, 0x1

    if-le v15, v6, :cond_1e

    :cond_b
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    int-to-float v6, v6

    if-nez v5, :cond_1d

    const-wide/16 v9, 0x1

    and-long/2addr v9, v12

    const-wide/16 v14, 0x0

    cmp-long v5, v9, v14

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/j;

    iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/j;->e:Z

    if-nez v5, :cond_c

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v6, v5

    :cond_c
    const/4 v5, 0x1

    add-int/lit8 v7, v26, -0x1

    shl-int/2addr v5, v7

    int-to-long v9, v5

    and-long/2addr v9, v12

    const-wide/16 v14, 0x0

    cmp-long v5, v9, v14

    if-eqz v5, :cond_1d

    add-int/lit8 v5, v26, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/j;

    iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/j;->e:Z

    if-nez v5, :cond_1d

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, v6, v5

    :goto_e
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_12

    mul-int v6, v18, v25

    int-to-float v6, v6

    div-float v5, v6, v5

    float-to-int v5, v5

    move v6, v5

    :goto_f
    const/4 v5, 0x0

    move v9, v5

    move/from16 v7, v17

    :goto_10
    move/from16 v0, v26

    if-ge v9, v0, :cond_19

    const/4 v5, 0x1

    shl-int/2addr v5, v9

    int-to-long v10, v5

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-nez v5, :cond_13

    move v5, v7

    :goto_11
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v7, v5

    goto :goto_10

    :cond_d
    add-int/lit8 v22, v14, 0x1

    const/4 v5, 0x0

    move v14, v5

    move/from16 v9, v18

    move-wide/from16 v17, v20

    :goto_12
    move/from16 v0, v26

    if-ge v14, v0, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/j;

    const/16 v21, 0x1

    shl-int v21, v21, v14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v27, v0

    and-long v27, v27, v12

    const-wide/16 v29, 0x0

    cmp-long v21, v27, v29

    if-nez v21, :cond_e

    iget v5, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    move/from16 v0, v22

    if-ne v5, v0, :cond_1f

    const/4 v5, 0x1

    shl-int/2addr v5, v14

    int-to-long v0, v5

    move-wide/from16 v20, v0

    or-long v17, v17, v20

    move v5, v9

    :goto_13
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v9, v5

    goto :goto_12

    :cond_e
    if-eqz v7, :cond_f

    iget-boolean v0, v5, Landroid/support/v7/internal/view/menu/j;->e:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:I

    move/from16 v21, v0

    add-int v21, v21, v25

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->g:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_f
    iget v0, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Landroid/support/v7/internal/view/menu/j;->f:Z

    add-int/lit8 v5, v9, -0x1

    goto :goto_13

    :cond_10
    const/4 v5, 0x1

    move-wide/from16 v20, v17

    move/from16 v17, v5

    move/from16 v18, v9

    goto/16 :goto_9

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_12
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_f

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/j;

    instance-of v10, v10, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_15

    iput v6, v5, Landroid/support/v7/internal/view/menu/j;->c:I

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/support/v7/internal/view/menu/j;->f:Z

    if-nez v9, :cond_14

    iget-boolean v7, v5, Landroid/support/v7/internal/view/menu/j;->e:Z

    if-nez v7, :cond_14

    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/support/v7/internal/view/menu/j;->leftMargin:I

    :cond_14
    const/4 v5, 0x1

    goto/16 :goto_11

    :cond_15
    iget-boolean v10, v5, Landroid/support/v7/internal/view/menu/j;->a:Z

    if-eqz v10, :cond_16

    iput v6, v5, Landroid/support/v7/internal/view/menu/j;->c:I

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/support/v7/internal/view/menu/j;->f:Z

    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/support/v7/internal/view/menu/j;->rightMargin:I

    const/4 v5, 0x1

    goto/16 :goto_11

    :cond_16
    if-eqz v9, :cond_17

    div-int/lit8 v10, v6, 0x2

    iput v10, v5, Landroid/support/v7/internal/view/menu/j;->leftMargin:I

    :cond_17
    add-int/lit8 v10, v26, -0x1

    if-eq v9, v10, :cond_18

    div-int/lit8 v10, v6, 0x2

    iput v10, v5, Landroid/support/v7/internal/view/menu/j;->rightMargin:I

    :cond_18
    move v5, v7

    goto/16 :goto_11

    :cond_19
    const/4 v5, 0x0

    move v9, v5

    :goto_14
    if-eqz v7, :cond_1b

    const/4 v5, 0x0

    move v6, v5

    :goto_15
    move/from16 v0, v26

    if-ge v6, v0, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/j;

    iget-boolean v10, v5, Landroid/support/v7/internal/view/menu/j;->f:Z

    if-nez v10, :cond_1a

    :goto_16
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_15

    :cond_1a
    iget v10, v5, Landroid/support/v7/internal/view/menu/j;->b:I

    mul-int v10, v10, v25

    iget v5, v5, Landroid/support/v7/internal/view/menu/j;->c:I

    add-int/2addr v5, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v7, v5, v8}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_1b
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v5, :cond_1c

    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    mul-int v5, v9, v25

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->h:I

    goto/16 :goto_1

    :cond_1c
    move/from16 v16, v19

    goto :goto_17

    :cond_1d
    move v5, v6

    goto/16 :goto_e

    :cond_1e
    move/from16 v7, v17

    move/from16 v9, v18

    goto :goto_14

    :cond_1f
    move v5, v9

    goto/16 :goto_13

    :cond_20
    move v5, v9

    move v9, v14

    goto/16 :goto_b

    :cond_21
    move-wide/from16 v12, v20

    goto/16 :goto_c

    :cond_22
    move v10, v6

    move v9, v15

    move-wide/from16 v31, v12

    move v12, v7

    move v13, v11

    move v11, v5

    move v7, v14

    move-wide/from16 v5, v31

    goto/16 :goto_3

    :cond_23
    move v5, v11

    goto/16 :goto_7

    :cond_24
    move v6, v10

    goto/16 :goto_6
.end method


# virtual methods
.method protected a()Landroid/support/v7/internal/view/menu/j;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v7/internal/view/menu/j;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/internal/view/menu/j;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/internal/view/menu/j;->gravity:I

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/j;
    .locals 2

    new-instance v0, Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/menu/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/j;
    .locals 2

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/internal/view/menu/j;

    check-cast p1, Landroid/support/v7/internal/view/menu/j;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/j;-><init>(Landroid/support/v7/internal/view/menu/j;)V

    iget v1, v0, Landroid/support/v7/internal/view/menu/j;->gravity:I

    if-gtz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/internal/view/menu/j;->gravity:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/n;

    return-void
.end method

.method protected a(I)Z
    .locals 4

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v0, Landroid/support/v7/internal/view/menu/i;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0}, Landroid/support/v7/internal/view/menu/i;->d()Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-lez p1, :cond_1

    instance-of v0, v1, Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0}, Landroid/support/v7/internal/view/menu/i;->c()Z

    move-result v0

    or-int/2addr v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/r;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v7/internal/view/menu/j;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/view/menu/j;->a:Z

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()Z

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a()Z

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Z

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    add-int v0, p3, p5

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getSupportDividerWidth()I

    move-result v8

    const/4 v4, 0x0

    const/4 v3, 0x0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v2, v0, v1

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_6

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v10, 0x8

    if-ne v0, v10, :cond_2

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/j;

    iget-boolean v10, v0, Landroid/support/v7/internal/view/menu/j;->a:Z

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(I)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/2addr v1, v8

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v0, v0, Landroid/support/v7/internal/view/menu/j;->rightMargin:I

    sub-int v0, v11, v0

    sub-int v11, v0, v1

    div-int/lit8 v12, v10, 0x2

    sub-int v12, v7, v12

    add-int/2addr v10, v12

    invoke-virtual {v9, v11, v12, v0, v10}, Landroid/view/View;->layout(IIII)V

    sub-int v1, v2, v1

    const/4 v0, 0x1

    move v2, v3

    move v3, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v0, Landroid/support/v7/internal/view/menu/j;->leftMargin:I

    add-int/2addr v9, v10

    iget v0, v0, Landroid/support/v7/internal/view/menu/j;->rightMargin:I

    add-int/2addr v9, v0

    add-int v0, v4, v9

    sub-int/2addr v2, v9

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(I)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/2addr v0, v8

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v13

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    if-ne v6, v0, :cond_7

    if-nez v1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int v4, v7, v4

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    const/4 v0, 0x0

    :goto_3
    sub-int v0, v3, v0

    const/4 v1, 0x0

    if-lez v0, :cond_9

    div-int v0, v2, v0

    :goto_4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_b

    iget-boolean v5, v0, Landroid/support/v7/internal/view/menu/j;->a:Z

    if-eqz v5, :cond_a

    move v0, v1

    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    iget v5, v0, Landroid/support/v7/internal/view/menu/j;->leftMargin:I

    add-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    add-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    iget v0, v0, Landroid/support/v7/internal/view/menu/j;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_6

    :cond_b
    move v0, v1

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Z

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Z

    if-eq v3, v0, :cond_0

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->e:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/n;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->e:I

    if-eq v0, v3, :cond_1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->e:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->d:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(II)V

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/j;

    iput v2, v0, Landroid/support/v7/internal/view/menu/j;->rightMargin:I

    iput v2, v0, Landroid/support/v7/internal/view/menu/j;->leftMargin:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->b:Z

    return-void
.end method

.method public setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->c:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    return-void
.end method
