.class public Lcom/eaglerex/mcpemodificator/mapscategory;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/Button;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field i:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    const v0, 0x7f05005d

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->a:Landroid/widget/Button;

    const v0, 0x7f05005e

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->b:Landroid/widget/Button;

    const v0, 0x7f05005f

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->c:Landroid/widget/Button;

    const v0, 0x7f050060

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->d:Landroid/widget/Button;

    const v0, 0x7f050061

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->e:Landroid/widget/Button;

    const v0, 0x7f050062

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->f:Landroid/widget/Button;

    const v0, 0x7f050063

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->g:Landroid/widget/Button;

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f03002e

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ib;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ib;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ic;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ic;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ho;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ho;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hp;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hp;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hq;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hq;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hr;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hr;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hs;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hs;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ht;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ht;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hu;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hu;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/mapsbrowse;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapscategory;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapscategory;->setContentView(I)V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/mapscategory;->a()V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/mapscategory;->b()V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapscategory;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->i:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->i:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->a:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hn;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hn;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->b:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hv;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hv;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->c:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hw;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hw;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->d:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hx;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hx;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->e:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hy;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hy;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->f:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/hz;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/hz;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->g:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ia;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ia;-><init>(Lcom/eaglerex/mcpemodificator/mapscategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapscategory;->h:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/google/a/a/a/p;->a(Landroid/content/Context;)Lcom/google/a/a/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/a/a/a/p;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/google/a/a/a/p;->a(Landroid/content/Context;)Lcom/google/a/a/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/a/a/a/p;->b(Landroid/app/Activity;)V

    return-void
.end method
