.class public Lcom/eaglerex/mcpemodificator/newthisweekmap;
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

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EPIC:ZIGZAG Rollercoaster"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Epic Jump Map Butter Edition v3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Gravity Runner"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INDUSTRIA City"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AIRBORNE PVP MCPE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Epic Jump Map : Sprint"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WATERFRONT CONDOMINIUMS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-PRISON ESCAPE-"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MINI-GAME AMUSEMENT PARK"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "REBUILD MCPE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MANSION OF THE DAMNED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->b:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mm;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mm;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mo;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mo;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mp;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mp;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mq;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mq;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mr;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mr;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ms;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ms;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mt;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mt;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mu;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mu;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mv;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mv;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mn;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mn;-><init>(Lcom/eaglerex/mcpemodificator/newthisweekmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f070009

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->b:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->d:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->d:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a()V

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

    const-string v1, "com.eaglerex.mcpemodificator.ZIGZAGMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.EJMBUTTERMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.GRAVITYRUNNERMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.INDUSTRIAMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.AIRBORNEMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.EJMSPRINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.WATERFRONTMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.PRISONESCAPEMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MINIGAMEPARKMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.REBUILDMCPEMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MANSIONDAMNEDMAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/newthisweekmap;->startActivity(Landroid/content/Intent;)V

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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/newthisweekmap;->c:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
