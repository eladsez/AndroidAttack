.class public Lcom/eaglerex/mcpemodificator/modeaglerex;
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Light Block Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Too Much TNT Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Money Mod"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->l:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jq;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jq;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/js;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/js;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jt;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jt;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ju;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ju;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jv;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jv;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jw;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jw;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jx;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jx;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jy;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jy;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jz;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jz;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/jr;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/jr;-><init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modcreators;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f070009

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->l:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->n:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->n:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->a()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "This Mod Adds New Glowstone Like Blocks Into Your Game These Blocks Are Available In Different Colors... You Can Also Craft These Blocks In A Workbench...You Need 4 Torches And A Dye(To Color The Block)...You Get 4 Light Blocks You Can Also Use The Command \' /givelight \' "

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->b:Ljava/lang/String;

    const-string v0, "Made By : EagleRex"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/SIDkplz.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2490811-light-block-mod-by-eaglerex-adds-glowstone-like-light-emitting-blocks/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/lightblockmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->i:Ljava/lang/String;

    const-string v0, "lightblockmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "Enter A Command And Then Tap On TNT With Torch\u2026.\n\nAre You Tired Of The Regular TNT ? Is Regular TNT Not Enough For You To Destroy Your World? You Want More TNTS? Then It Is The Perfect Mod For You \u2026\n\nThis Mod Doesn\u2019t Add More TNT But It Adds Some Commands Which Changes The Way The TNT Explodes\u2026Read The Commands/Info Before Using The MOD \n\nCommands : \n\n/commands : To Get The List Of All Commands In-Game..\n\n/meteortnt : Summons A Meteor\u2026.\n\n/compacttnt : Summons More TNT When Activated\u2026\n\n/reactiontnt : Random Explosions Happen When Activated\u2026\n\n/diggingtnt : Digs A Hole\u2026\n\n/flattnt : Deletes Some Blocks Around The TNT To Make A Flat Area\n\n/firetnt : Almost Like Flat TNT But Also Creates Fire on The Ground\u2026\n\n/cubictnt : Clears A 5x2x5 Area In The Ground..\n\n/housetnt : Creates A House When Activated.."

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->b:Ljava/lang/String;

    const-string v0, "Made By : EagleRex"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/1942721-eaglerexs-modpe-scripts-all-mods-compatible-with-08x-added-3-new-mods-lightblockmodancientknowledgemodmoneymod/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/toomuchtnt.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->i:Ljava/lang/String;

    const-string v0, "toomuchtnt.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "Mod Information Cannot Be Displayed Here,Please Click The \'Open Official Mod Page\' Button For Mod Information"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->b:Ljava/lang/String;

    const-string v0, "Made By : EagleRex"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/2dqG7Wp.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/KqHcAQL.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/g2MR2Sc.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2379915-money-mod-script-by-eaglerex-update-v12-added-investments/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/moneymod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->i:Ljava/lang/String;

    const-string v0, "moneymod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
