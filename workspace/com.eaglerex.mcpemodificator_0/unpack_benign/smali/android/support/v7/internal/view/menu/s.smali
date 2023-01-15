.class public Landroid/support/v7/internal/view/menu/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/view/menu/u;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final b:I


# instance fields
.field private a:Landroid/content/Context;

.field c:Z

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/support/v7/internal/widget/t;

.field private f:Landroid/support/v7/internal/view/menu/n;

.field private g:I

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Landroid/view/ViewTreeObserver;

.field private k:Landroid/support/v7/internal/view/menu/t;

.field private l:Landroid/support/v7/internal/view/menu/v;

.field private m:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/support/v7/b/g;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/internal/view/menu/s;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/s;->d:Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/s;->f:Landroid/support/v7/internal/view/menu/n;

    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/s;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/b/d;->abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->g:I

    iput-object p3, p0, Landroid/support/v7/internal/view/menu/s;->h:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/u;)V

    return-void
.end method

.method private a(Landroid/widget/ListAdapter;)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    move v4, v0

    move v1, v0

    move-object v3, v2

    move v5, v0

    :goto_0
    if-ge v4, v8, :cond_1

    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    move-object v1, v2

    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v9, p0, Landroid/support/v7/internal/view/menu/s;->a:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/view/ViewGroup;

    :cond_0
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/view/ViewGroup;

    invoke-interface {p1, v4, v1, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/s;->i:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/s;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/menu/s;)Landroid/support/v7/internal/view/menu/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->f:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->f:Landroid/support/v7/internal/view/menu/n;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->b()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/v;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/n;Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/v;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/v;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/s;->c:Z

    return-void
.end method

.method public a()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Landroid/support/v7/internal/widget/t;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/s;->a:Landroid/content/Context;

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/b/b;->popupMenuStyle:I

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/widget/t;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/widget/t;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Landroid/support/v7/internal/view/menu/t;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/s;->f:Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/internal/view/menu/t;-><init>(Landroid/support/v7/internal/view/menu/s;Landroid/support/v7/internal/view/menu/n;)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/s;->k:Landroid/support/v7/internal/view/menu/t;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/s;->k:Landroid/support/v7/internal/view/menu/t;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/t;->a(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/t;->a(Z)V

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->h:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/t;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->k:Landroid/support/v7/internal/view/menu/t;

    invoke-direct {p0, v2}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/widget/ListAdapter;)I

    move-result v2

    iget v3, p0, Landroid/support/v7/internal/view/menu/s;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/t;->e(I)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/t;->f(I)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->c()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->h()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/y;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/y;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Landroid/support/v7/internal/view/menu/s;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/s;->h:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4, v2}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/v;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/v;)V

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/y;->size()I

    move-result v4

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/y;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/s;->a(Z)V

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/n;)Z

    :cond_0
    :goto_2
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->d()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->k:Landroid/support/v7/internal/view/menu/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->k:Landroid/support/v7/internal/view/menu/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/t;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->f:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->close()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->c()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->k:Landroid/support/v7/internal/view/menu/t;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/t;->a(Landroid/support/v7/internal/view/menu/t;)Landroid/support/v7/internal/view/menu/n;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/t;->a(I)Landroid/support/v7/internal/view/menu/r;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->b()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
