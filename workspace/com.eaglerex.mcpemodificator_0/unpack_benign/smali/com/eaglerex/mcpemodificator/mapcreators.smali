.class public Lcom/eaglerex/mcpemodificator/mapcreators;
.super Landroid/app/ListActivity;


# instance fields
.field a:Landroid/content/Intent;

.field b:[Ljava/lang/String;

.field c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field d:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KennethTan | 1 Map"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EagleRex | 2 Map"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KoolGhettoKid | 2 Maps"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Chinesehorse | 2 Maps"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Badass2180 | 1 Map"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MinecraftGOnZO15 | 1 Map"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SteffenNL | 1 Map"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Mcmandoesminecraft | 1 Map"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Nore | 1 Map"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->b:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ej;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ej;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ek;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ek;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/el;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/el;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/em;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/em;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/en;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/en;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/eo;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/eo;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ep;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ep;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/eq;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/eq;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/er;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/er;-><init>(Lcom/eaglerex/mcpemodificator/mapcreators;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/mapsbrowse;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcreators;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f070009

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->b:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcreators;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcreators;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcreators;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcreators;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->d:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->d:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/mapcreators;->a()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPKENNETH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPEAGLEREX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPCOOLGHETTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPCHINESEHORSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPBADASS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPGONZO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPSTEFFEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPMCMANDOESMINECRAFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPNORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcreators;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcreators;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    invoke-static {p0}, Lcom/google/a/a/a/p;->a(Landroid/content/Context;)Lcom/google/a/a/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/a/a/a/p;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    invoke-static {p0}, Lcom/google/a/a/a/p;->a(Landroid/content/Context;)Lcom/google/a/a/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/a/a/a/p;->b(Landroid/app/Activity;)V

    return-void
.end method