.class public Landroid/support/v7/internal/widget/t;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/widget/ListAdapter;

.field private e:Landroid/support/v7/internal/widget/w;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:I

.field private o:Landroid/database/DataSetObserver;

.field private p:Landroid/view/View;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/widget/AdapterView$OnItemClickListener;

.field private s:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final t:Landroid/support/v7/internal/widget/ab;

.field private final u:Landroid/support/v7/internal/widget/aa;

.field private final v:Landroid/support/v7/internal/widget/z;

.field private final w:Landroid/support/v7/internal/widget/x;

.field private x:Ljava/lang/Runnable;

.field private y:Landroid/os/Handler;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/internal/widget/t;->f:I

    iput v0, p0, Landroid/support/v7/internal/widget/t;->g:I

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/t;->k:Z

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/t;->l:Z

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/internal/widget/t;->a:I

    iput v2, p0, Landroid/support/v7/internal/widget/t;->n:I

    new-instance v0, Landroid/support/v7/internal/widget/ab;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->t:Landroid/support/v7/internal/widget/ab;

    new-instance v0, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->u:Landroid/support/v7/internal/widget/aa;

    new-instance v0, Landroid/support/v7/internal/widget/z;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->v:Landroid/support/v7/internal/widget/z;

    new-instance v0, Landroid/support/v7/internal/widget/x;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->w:Landroid/support/v7/internal/widget/x;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->y:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/t;)Landroid/support/v7/internal/widget/w;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/t;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/t;)Landroid/support/v7/internal/widget/ab;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->t:Landroid/support/v7/internal/widget/ab;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/t;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private j()I
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    if-nez v0, :cond_4

    iget-object v5, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/internal/widget/u;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/u;-><init>(Landroid/support/v7/internal/widget/t;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->x:Ljava/lang/Runnable;

    new-instance v4, Landroid/support/v7/internal/widget/w;

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->A:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {v4, v5, v0}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/w;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/w;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    new-instance v4, Landroid/support/v7/internal/widget/v;

    invoke-direct {v4, p0}, Landroid/support/v7/internal/widget/v;-><init>(Landroid/support/v7/internal/widget/t;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->v:Landroid/support/v7/internal/widget/z;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v6, p0, Landroid/support/v7/internal/widget/t;->m:Landroid/view/View;

    if-eqz v6, :cond_b

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v7, p0, Landroid/support/v7/internal/widget/t;->n:I

    packed-switch v7, :pswitch_data_0

    const-string v0, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid hint position "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/support/v7/internal/widget/t;->n:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v0, p0, Landroid/support/v7/internal/widget/t;->g:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    :goto_2
    iget-object v5, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/t;->j:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroid/support/v7/internal/widget/t;->i:I

    move v7, v0

    :goto_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->b()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Landroid/support/v7/internal/widget/t;->i:I

    invoke-virtual {p0, v0, v4, v1}, Landroid/support/v7/internal/widget/t;->a(Landroid/view/View;IZ)I

    move-result v4

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->k:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/internal/widget/t;->f:I

    if-ne v0, v3, :cond_7

    :cond_2
    add-int v0, v4, v7

    :goto_6
    return v0

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->m:Landroid/view/View;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move v6, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/t;->g:I

    packed-switch v0, :pswitch_data_1

    iget v0, p0, Landroid/support/v7/internal/widget/t;->g:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    sub-int/2addr v4, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/w;->a(IIIII)I

    move-result v0

    if-lez v0, :cond_8

    add-int/2addr v6, v7

    :cond_8
    add-int/2addr v0, v6

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_7

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_7

    :cond_9
    move v7, v0

    goto/16 :goto_4

    :cond_a
    move v6, v2

    goto/16 :goto_3

    :cond_b
    move-object v4, v0

    move v0, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)I
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    sub-int/2addr v0, p2

    aget v2, v2, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/t;->n:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->p:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->r:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->o:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v7/internal/widget/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/y;-><init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->o:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->o:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/w;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->o:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/t;->A:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->p:Landroid/view/View;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/t;->h:I

    return-void
.end method

.method public c()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/support/v7/internal/widget/t;->j()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->g()Z

    move-result v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Landroid/support/v7/internal/widget/t;->g:I

    if-ne v4, v0, :cond_3

    move v4, v0

    :goto_0
    iget v6, p0, Landroid/support/v7/internal/widget/t;->f:I

    if-ne v6, v0, :cond_9

    if-eqz v2, :cond_5

    :goto_1
    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/support/v7/internal/widget/t;->g:I

    if-ne v6, v0, :cond_6

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :cond_0
    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/t;->l:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/t;->k:Z

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->b()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/internal/widget/t;->h:I

    iget v3, p0, Landroid/support/v7/internal/widget/t;->i:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    iget v4, p0, Landroid/support/v7/internal/widget/t;->g:I

    if-ne v4, v7, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_4
    iget v4, p0, Landroid/support/v7/internal/widget/t;->g:I

    goto :goto_0

    :cond_5
    move v5, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    iget-object v6, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/support/v7/internal/widget/t;->g:I

    if-ne v2, v0, :cond_8

    move v2, v0

    :goto_5
    invoke-virtual {v6, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_5

    :cond_9
    iget v0, p0, Landroid/support/v7/internal/widget/t;->f:I

    if-eq v0, v7, :cond_0

    iget v5, p0, Landroid/support/v7/internal/widget/t;->f:I

    goto :goto_3

    :cond_a
    iget v2, p0, Landroid/support/v7/internal/widget/t;->g:I

    if-ne v2, v0, :cond_d

    move v2, v0

    :goto_6
    iget v4, p0, Landroid/support/v7/internal/widget/t;->f:I

    if-ne v4, v0, :cond_f

    move v4, v0

    :goto_7
    iget-object v5, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/t;->l:Z

    if-nez v4, :cond_11

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/t;->k:Z

    if-nez v4, :cond_11

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->u:Landroid/support/v7/internal/widget/aa;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->b()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/internal/widget/t;->h:I

    iget v4, p0, Landroid/support/v7/internal/widget/t;->i:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/w;->setSelection(I)V

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->A:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->e()V

    :cond_c
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->A:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->w:Landroid/support/v7/internal/widget/x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_d
    iget v2, p0, Landroid/support/v7/internal/widget/t;->g:I

    if-ne v2, v7, :cond_e

    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_6

    :cond_e
    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/internal/widget/t;->g:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_6

    :cond_f
    iget v4, p0, Landroid/support/v7/internal/widget/t;->f:I

    if-ne v4, v7, :cond_10

    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_7

    :cond_10
    iget-object v4, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    iget v5, p0, Landroid/support/v7/internal/widget/t;->f:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_7

    :cond_11
    move v3, v1

    goto :goto_8
.end method

.method public c(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/internal/widget/t;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/t;->j:Z

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Landroid/support/v7/internal/widget/t;->i()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->t:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/t;->g:I

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/w;Z)Z

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->requestLayout()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/t;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/internal/widget/t;->g:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/t;->d(I)V

    goto :goto_0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/w;Z)Z

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/w;->setSelection(I)V

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/w;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->e:Landroid/support/v7/internal/widget/w;

    return-object v0
.end method
