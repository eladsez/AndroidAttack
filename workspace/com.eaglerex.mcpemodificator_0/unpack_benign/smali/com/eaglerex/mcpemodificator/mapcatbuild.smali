.class public Lcom/eaglerex/mcpemodificator/mapcatbuild;
.super Landroid/app/ListActivity;


# instance fields
.field a:[Ljava/lang/String;

.field b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/os/Bundle;

.field m:Landroid/content/Intent;

.field n:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INDUSTRIA City"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WATERFRONT CONDOMINIUMS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->a:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bh;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bh;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bj;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bj;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bk;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bk;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bl;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bl;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bm;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bm;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bn;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bn;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bo;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bo;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bp;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bp;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bq;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bq;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/bi;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/bi;-><init>(Lcom/eaglerex/mcpemodificator/mapcatbuild;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/mapscategory;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f070009

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->a:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->n:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->n:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->a()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "The map itself is quite small, containing only around 10 buildings, because of the fact that each building roughly occupies ~50,000 sq m (considering that each block is 1m x 1m x 1m) , and takes up around 80x50 in my city blocks, so the amount of actual buildings is quite low."

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->c:Ljava/lang/String;

    const-string v0, "Made By : Chinesehorse"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/IeDbj0z.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/IL7744O.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/Dpv1MUi.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->g:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/bHVUANf.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->h:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2479375-industria-the-most-detailed-mcpe-city-in-creative-and-survival-update-1351420000-downloads/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->i:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/Industria.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->j:Ljava/lang/String;

    const-string v0, "Industria.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->k:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->m:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->m:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "The map has 6 condominiums, each around 30x70 in foundation measurements.It\'s also 1:1 scale, and contains a highway"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->c:Ljava/lang/String;

    const-string v0, "Made By : Chinesehorse"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/mV0TjNi.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/xVPu7zy.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/vuLFjkQ.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->g:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->h:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2666131-waterfront-condominiums-city-industria-spin-off/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->i:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/waterfront.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->j:Ljava/lang/String;

    const-string v0, "waterfront.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->k:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->m:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->m:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->l:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcatbuild;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcatbuild;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
