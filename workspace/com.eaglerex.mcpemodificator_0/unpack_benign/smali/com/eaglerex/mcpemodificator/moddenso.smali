.class public Lcom/eaglerex/mcpemodificator/moddenso;
.super Landroid/app/ListActivity;


# instance fields
.field a:Landroid/content/Intent;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Landroid/os/Bundle;

.field l:[Ljava/lang/String;

.field m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field n:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Companoin Mod"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->l:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jg;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jg;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ji;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ji;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jj;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jj;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jk;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jk;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jl;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jl;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jm;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jm;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jn;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jn;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jo;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jo;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jp;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jp;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jh;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jh;-><init>(Lcom/eaglerex/mcpemodificator/moddenso;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modcreators;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/moddenso;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f070009

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->l:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/moddenso;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/moddenso;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/moddenso;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/moddenso;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->n:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->n:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/moddenso;->a()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Use the \'Companion Spawner\' item in the crafting table to spawn the companion. You can also use /companion command in chat to spawn a companion but if you are in survival mode your health will go at 0.5 half hearts.\n\nCompanions will try to follow you and when you hit a mob they will teleport near you and they will attack the mob. When one of your companions has killed some mobs he will level up and he will become more powerful!\n\nOnly the level of your companions is saved when you exit the game, so you have to re-spawn them when you re-enter in the world."

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->b:Ljava/lang/String;

    const-string v0, "Made By : Desno365"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/yoXnLpW.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/lQX61SQ.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2614958-081modbeta-the-companion-mod-by-desno365/page__gopid__31255486#entry31255486"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/companionmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->i:Ljava/lang/String;

    const-string v0, "companionmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/moddenso;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/moddenso;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method