.class public Landroid/support/v7/internal/widget/ActionBarView;
.super Landroid/support/v7/internal/widget/a;


# instance fields
.field private A:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Landroid/support/v7/internal/view/menu/n;

.field private M:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private N:Landroid/support/v7/internal/view/menu/a;

.field private O:Landroid/widget/SpinnerAdapter;

.field private P:Landroid/support/v7/a/c;

.field private Q:Ljava/lang/Runnable;

.field private R:Landroid/support/v7/internal/widget/i;

.field private final S:Landroid/support/v7/internal/widget/p;

.field private final T:Landroid/view/View$OnClickListener;

.field private final U:Landroid/view/View$OnClickListener;

.field g:Landroid/view/View;

.field h:Landroid/view/Window$Callback;

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/content/Context;

.field private p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

.field private q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/support/v7/internal/widget/aj;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private y:Landroid/view/View;

.field private z:Landroid/support/v7/internal/widget/ProgressBarICS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    new-instance v1, Landroid/support/v7/internal/widget/f;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/f;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/support/v7/internal/widget/p;

    new-instance v1, Landroid/support/v7/internal/widget/g;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/g;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->T:Landroid/view/View$OnClickListener;

    new-instance v1, Landroid/support/v7/internal/widget/h;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/h;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->U:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setBackgroundResource(I)V

    sget-object v1, Landroid/support/v7/b/j;->ActionBar:[I

    sget v2, Landroid/support/v7/b/b;->actionBarStyle:I

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v1, v6, :cond_1

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/16 v1, 0xe

    sget v5, Landroid/support/v7/b/g;->abc_action_bar_home:I

    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/b/h;->abc_action_bar_up_description:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:I

    const/4 v1, 0x6

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:I

    const/16 v1, 0xf

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->F:I

    const/16 v1, 0x10

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I

    const/16 v1, 0x11

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:I

    const/16 v1, 0x12

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    const/16 v1, 0xd

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v4, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    iput v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    :cond_4
    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->f:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/support/v7/internal/view/menu/a;

    const v4, 0x102002c

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    move-object v2, p1

    move v5, v3

    move v6, v3

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/internal/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    return-void

    :catch_0
    move-exception v1

    const-string v6, "ActionBarView"

    const-string v7, "Activity component name not found!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v6, "ActionBarView"

    const-string v7, "Activity component name not found!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/a/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/a/c;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/widget/i;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/view/menu/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .locals 7

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/b/g;->abc_action_bar_title_item:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/b/e;->action_bar_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/b/e;->action_bar_subtitle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/b/e;->up:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    move v3, v1

    :goto_1
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;

    if-nez v3, :cond_a

    if-eqz v0, :cond_9

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-nez v3, :cond_b

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    move v3, v2

    goto :goto_1

    :cond_9
    const/4 v4, 0x4

    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3
.end method

.method static synthetic h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aj;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/internal/widget/ActionBarView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    return v0
.end method

.method static synthetic l(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->g()V

    return-void
.end method

.method static synthetic m(Landroid/support/v7/internal/widget/ActionBarView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    return v0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/a;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->b()V

    return-void
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 5

    new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->F:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    sget v1, Landroid/support/v7/b/e;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 5

    new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    sget v1, Landroid/support/v7/b/e;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->K:Z

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v7/a/b;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/support/v7/a/b;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v7/a/b;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->O:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->f()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->g()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->d()V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->e()V

    :cond_5
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onFinishInflate()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v2

    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v0, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_15

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a()I

    move-result v4

    add-int v5, v1, v4

    invoke-virtual {p0, v0, v5, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    :goto_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_9

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    packed-switch v4, :pswitch_data_0

    :cond_3
    move v1, v0

    :goto_4
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, p0, :cond_4

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->c(Landroid/view/View;III)I

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v0, v4

    :cond_4
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->c(Landroid/view/View;III)I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v0

    :goto_5
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-eqz v3, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    move-object v7, v0

    :goto_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/support/v7/a/b;

    if-eqz v3, :cond_d

    check-cast v0, Landroid/support/v7/a/b;

    move-object v5, v0

    :goto_7
    if-eqz v5, :cond_e

    iget v0, v5, Landroid/support/v7/a/b;->a:I

    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz v5, :cond_12

    iget v3, v5, Landroid/support/v7/a/b;->leftMargin:I

    add-int v4, v1, v3

    iget v1, v5, Landroid/support/v7/a/b;->rightMargin:I

    sub-int v3, v2, v1

    iget v2, v5, Landroid/support/v7/a/b;->topMargin:I

    iget v1, v5, Landroid/support/v7/a/b;->bottomMargin:I

    move v5, v2

    move v6, v3

    move v3, v4

    move v4, v1

    :goto_9
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v3, :cond_f

    const/4 v1, 0x3

    :cond_5
    :goto_a
    move v2, v1

    :goto_b
    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    move v2, v1

    :goto_c
    and-int/lit8 v1, v0, 0x70

    const/4 v6, -0x1

    if-ne v0, v6, :cond_6

    const/16 v0, 0x10

    move v1, v0

    :cond_6
    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_d
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v4, v2, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v7, v2, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int v0, v3, v1

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->bringToFront()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:I

    neg-int v3, v0

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:I

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->layout(IIII)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    :pswitch_1
    move v1, v0

    goto/16 :goto_4

    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I

    move-result v1

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_4

    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I

    move-result v1

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_4

    :cond_c
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v3, :cond_13

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    move-object v7, v0

    goto/16 :goto_6

    :cond_d
    const/4 v0, 0x0

    move-object v5, v0

    goto/16 :goto_7

    :cond_e
    const/16 v0, 0x13

    goto/16 :goto_8

    :cond_f
    add-int/2addr v2, v8

    if-le v2, v6, :cond_5

    const/4 v1, 0x5

    goto/16 :goto_a

    :cond_10
    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const/4 v1, 0x3

    move v2, v1

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    move v2, v1

    goto/16 :goto_c

    :pswitch_5
    move v2, v3

    goto/16 :goto_c

    :pswitch_6
    sub-int v1, v6, v8

    move v2, v1

    goto/16 :goto_c

    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int v0, v1, v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_d

    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v5

    goto/16 :goto_d

    :sswitch_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    goto/16 :goto_d

    :cond_11
    move v2, v1

    goto/16 :goto_b

    :cond_12
    move v5, v4

    move v6, v2

    move v4, v3

    move v3, v1

    goto/16 :goto_9

    :cond_13
    move-object v7, v0

    goto/16 :goto_6

    :cond_14
    move v2, v0

    goto/16 :goto_5

    :cond_15
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getChildCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->J:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v1, 0x0

    move/from16 v18, v1

    move v1, v2

    move/from16 v2, v18

    :goto_0
    if-ge v2, v13, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->K:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->K:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with android:layout_width=\"MATCH_PARENT\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_6

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I

    if-lez v1, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I

    move v3, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    add-int v15, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v2

    sub-int v10, v3, v15

    const/high16 v4, -0x80000000

    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    sub-int v1, v14, v1

    sub-int v5, v1, v2

    div-int/lit8 v4, v5, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    :goto_3
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_21

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v7, :cond_10

    const/high16 v2, -0x80000000

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_4
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v2, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measure(II)V

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a()I

    move-result v1

    add-int/2addr v1, v2

    const/4 v2, 0x0

    sub-int/2addr v5, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x0

    sub-int v1, v2, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I

    move-result v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I

    move-result v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    packed-switch v6, :pswitch_data_0

    :cond_9
    move v6, v1

    move v7, v2

    :goto_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    move-object v12, v1

    :goto_8
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v1, v2, Landroid/support/v7/a/b;

    if-eqz v1, :cond_15

    move-object v1, v2

    check-cast v1, Landroid/support/v7/a/b;

    move-object v11, v1

    :goto_9
    const/4 v8, 0x0

    const/4 v1, 0x0

    if-eqz v11, :cond_a

    iget v1, v11, Landroid/support/v7/a/b;->leftMargin:I

    iget v8, v11, Landroid/support/v7/a/b;->rightMargin:I

    add-int/2addr v8, v1

    iget v1, v11, Landroid/support/v7/a/b;->topMargin:I

    iget v9, v11, Landroid/support/v7/a/b;->bottomMargin:I

    add-int/2addr v1, v9

    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I

    if-gtz v9, :cond_16

    const/high16 v9, -0x80000000

    :goto_a
    const/16 v16, 0x0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    if-ltz v17, :cond_b

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_b
    sub-int v1, v10, v1

    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v1, v10, :cond_18

    const/high16 v1, 0x40000000    # 2.0f

    :goto_b
    const/16 v17, 0x0

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_19

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_c
    sub-int/2addr v10, v8

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v11, :cond_1a

    iget v11, v11, Landroid/support/v7/a/b;->a:I

    :goto_d
    and-int/lit8 v11, v11, 0x7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_1f

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v2, v11, :cond_1f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    :goto_e
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v0, v16

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    sub-int/2addr v7, v1

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-nez v1, :cond_d

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v6, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I

    if-gtz v1, :cond_1d

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v1

    :goto_f
    if-ge v3, v13, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v15

    if-le v1, v2, :cond_1e

    :goto_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_f

    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    move v3, v1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_3

    :cond_10
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto/16 :goto_4

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_6

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_9

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    mul-int/lit8 v6, v6, 0x2

    :goto_11
    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    const/high16 v7, -0x80000000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v1

    move v7, v2

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    goto :goto_11

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v6, :cond_9

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    mul-int/lit8 v6, v6, 0x2

    :goto_12
    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v1

    move v7, v2

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I

    goto :goto_12

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    move-object v12, v1

    goto/16 :goto_8

    :cond_15
    const/4 v1, 0x0

    move-object v11, v1

    goto/16 :goto_9

    :cond_16
    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v9, v0, :cond_17

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_a

    :cond_17
    const/high16 v9, -0x80000000

    goto/16 :goto_a

    :cond_18
    const/high16 v1, -0x80000000

    goto/16 :goto_b

    :cond_19
    move v10, v7

    goto/16 :goto_c

    :cond_1a
    const/16 v11, 0x13

    goto/16 :goto_d

    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    :goto_13
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->M:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->M:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->B:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v14, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->measure(II)V

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_13

    :cond_1e
    move v1, v2

    goto/16 :goto_10

    :cond_1f
    move v2, v10

    goto/16 :goto_e

    :cond_20
    move-object v12, v1

    goto/16 :goto_8

    :cond_21
    move v1, v4

    move v2, v5

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/widget/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;

    iget v1, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/b/a/b;->expandActionView()Z

    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->b()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/widget/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/widget/i;

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/widget/i;

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getItemId()I

    move-result v0

    iput v0, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->c()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z

    return-object v1
.end method

.method public setCallback(Landroid/support/v7/a/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/a/c;

    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->J:Z

    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setContentHeight(I)V

    return-void
.end method

.method public setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 7

    const/16 v3, 0x8

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    if-ne v1, v0, :cond_6

    :goto_0
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_11

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_7

    move v5, v4

    :goto_1
    if-eqz v5, :cond_8

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-nez v1, :cond_8

    move v1, v2

    :goto_2
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_9

    move v1, v4

    :goto_3
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_a

    move v1, v4

    :goto_4
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_c

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->g()V

    :cond_2
    :goto_6
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_d

    move v1, v4

    :goto_7
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;

    if-nez v5, :cond_3

    if-eqz v1, :cond_e

    move v3, v2

    :cond_3
    :goto_8
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-nez v5, :cond_f

    if-eqz v1, :cond_f

    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_4
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v0, :cond_5

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_5
    :goto_a
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    :goto_b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_c
    return-void

    :cond_6
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    xor-int/2addr v0, p1

    goto/16 :goto_0

    :cond_7
    move v5, v2

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_c
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_d
    move v1, v2

    goto :goto_7

    :cond_e
    const/4 v3, 0x4

    goto :goto_8

    :cond_f
    move v4, v2

    goto :goto_9

    :cond_10
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_a

    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b

    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/h;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_13
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/h;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->O:Landroid/widget/SpinnerAdapter;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/aj;->a(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/aj;->a(I)V

    return-void
.end method

.method public setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/h;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/h;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    if-eq p1, v0, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    :cond_1
    :goto_1
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v7/internal/widget/aj;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    sget v2, Landroid/support/v7/b/b;->actionDropDownStyle:I

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/b/g;->abc_action_bar_view_list_nav_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->O:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->O:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aj;->a(Landroid/widget/SpinnerAdapter;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/aj;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/support/v7/internal/widget/p;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aj;->a(Landroid/support/v7/internal/widget/p;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->d:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->requestLayout()V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_4

    if-nez p1, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/c;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Z)V

    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitActionBar(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(IZ)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->H:Z

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->H:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
