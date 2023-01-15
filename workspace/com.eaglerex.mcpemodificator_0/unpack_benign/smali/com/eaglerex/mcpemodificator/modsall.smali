.class public Lcom/eaglerex/mcpemodificator/modsall;
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

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LightBlock Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Too Much TNT Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Money Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Arrow Bridge Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Rainbow Arrow Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Companion Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Enderpearl Mod"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TNT Bow Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Mob Disguise Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sand Bombs Mod"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Laser Mod"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Enchantment Table Mod"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Power Wand Mod"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->l:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f03002b

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/kw;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/kw;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/kx;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/kx;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ky;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ky;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/kz;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/kz;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/la;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/la;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/lb;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/lb;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/lc;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/lc;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ld;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ld;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/kv;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/kv;-><init>(Lcom/eaglerex/mcpemodificator/modsall;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsbrowse;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsall;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f070009

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->l:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsall;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->n:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->n:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v0, "PREFERENCE"

    invoke-virtual {p0, v0, v3}, Lcom/eaglerex/mcpemodificator/modsall;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firstopenmod"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/modsall;->a()V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030019

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v0, "Welcome"

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f050045

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Note 1-This List Does Not Have Alot Of Mods Yet But You Can Help Me Extend The List By Submitting Your Mods!\nNote 2-Not All The Mods Have Been Tested,There Could Be Some Mods That Don\'t Work.\n-Eaglerex"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f050046

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/eaglerex/mcpemodificator/ku;

    invoke-direct {v2, p0, v1}, Lcom/eaglerex/mcpemodificator/ku;-><init>(Lcom/eaglerex/mcpemodificator/modsall;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-string v0, "PREFERENCE"

    invoke-virtual {p0, v0, v3}, Lcom/eaglerex/mcpemodificator/modsall;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstopenmod"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
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

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : EagleRex"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/SIDkplz.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2490811-light-block-mod-by-eaglerex-adds-glowstone-like-light-emitting-blocks/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/lightblockmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "lightblockmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "Enter A Command And Then Tap On TNT With Torch\u2026.\n\nAre You Tired Of The Regular TNT ? Is Regular TNT Not Enough For You To Destroy Your World? You Want More TNTS? Then It Is The Perfect Mod For You \u2026\n\nThis Mod Doesn\u2019t Add More TNT But It Adds Some Commands Which Changes The Way The TNT Explodes\u2026Read The Commands/Info Before Using The MOD \n\nCommands : \n\n/commands : To Get The List Of All Commands In-Game..\n\n/meteortnt : Summons A Meteor\u2026.\n\n/compacttnt : Summons More TNT When Activated\u2026\n\n/reactiontnt : Random Explosions Happen When Activated\u2026\n\n/diggingtnt : Digs A Hole\u2026\n\n/flattnt : Deletes Some Blocks Around The TNT To Make A Flat Area\n\n/firetnt : Almost Like Flat TNT But Also Creates Fire on The Ground\u2026\n\n/cubictnt : Clears A 5x2x5 Area In The Ground..\n\n/housetnt : Creates A House When Activated.."

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : EagleRex"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/1942721-eaglerexs-modpe-scripts-all-mods-compatible-with-08x-added-3-new-mods-lightblockmodancientknowledgemodmoneymod/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/toomuchtnt.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "toomuchtnt.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "Mod Information Cannot Be Displayed Here,Please Click The \'Open Official Mod Page\' Button For Mod Information"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : EagleRex"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/2dqG7Wp.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/KqHcAQL.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/g2MR2Sc.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2379915-money-mod-script-by-eaglerex-update-v12-added-investments/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/moneymod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "moneymod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "Shoot an arrow to generate a bridge to the arrow\'s target"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : MattdaveMatt"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/oAWlGcM.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/1956348-matts-mods-soon-false-walls-laptop-fixed-back-to-modding-accepting-requests/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/arrowbridge.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "arrowbridge.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "Shoot an arrow to see a incredible rainbow trail!"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : MattdaveMatt"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/EmaJ9AS.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/1956348-matts-mods-soon-false-walls-laptop-fixed-back-to-modding-accepting-requests/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/rainbowarrow.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "rainbowarrow.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "Use the \'Companion Spawner\' item in the crafting table to spawn the companion. You can also use /companion command in chat to spawn a companion but if you are in survival mode your health will go at 0.5 half hearts.\n\nCompanions will try to follow you and when you hit a mob they will teleport near you and they will attack the mob. When one of your companions has killed some mobs he will level up and he will become more powerful!\n\nOnly the level of your companions is saved when you exit the game, so you have to re-spawn them when you re-enter in the world."

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : Desno365"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/yoXnLpW.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/lQX61SQ.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2614958-081modbeta-the-companion-mod-by-desno365/page__gopid__31255486#entry31255486"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/companionmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "companionmod.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "Eggs are ender pearl!! Throw them to teleport there"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : TheCactiGod"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2009870-thecactigods-modscripts-new-no-projectile-gravity-laser-mod-and-mob-fireworks-20-mods/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/enderpearl.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "enderpearl.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "Shoot tnt with your bow!!! Just use as you would a regular bow!!"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : TheCactiGod"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2009870-thecactigods-modscripts-new-no-projectile-gravity-laser-mod-and-mob-fireworks-20-mods/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/tntbow.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "tntbow.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "Tap with egg to cycle through mobs"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : TheCactiGod"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2009870-thecactigods-modscripts-new-no-projectile-gravity-laser-mod-and-mob-fireworks-20-mods/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/mobdisguise.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "mobdisguise.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, " Drop sand and it will explode where it lands"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : TheCactiGod"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2009870-thecactigods-modscripts-new-no-projectile-gravity-laser-mod-and-mob-fireworks-20-mods/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/sandbomb.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "sandbomb.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "Place mossy cobble stone then click on a side and it will shoot in the direction your facing\n\nIt will destroy any blocks in its path"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : TheCactiGod"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2009870-thecactigods-modscripts-new-no-projectile-gravity-laser-mod-and-mob-fireworks-20-mods/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/laser.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "laser.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "How to get The Enchantment Table Craft It on a Crafting Table or get it by the Id = 205\n\nAdds Emerald Ore\'s and Emerald block and of course Emeralds\n\nAdds The Enchant for Sword,Axe,Hoe,Pickaxe,Shovel and Bow"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : Metamorposis_2"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/forums/minecraft-pocket-edition/mcpe-mods-tools/2097324-enchantment-mod-enables-you-to-enchant-sword-axe"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/enchantments.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "enchantments.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "This adds a new, OP item to the game : the power wand. You can craft it with pretty expensive resources\n\nThe game is 100% normal until you hold the item, which is cool because you can keep the mod open and it won\'t disturb you, and use it only when you need it\n\n To know everything precisely, type /help this is important. Everything is clearly explained there"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    const-string v0, "Made By : _Sin0psysS_"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/LKRAl0U.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/forums/minecraft-pocket-edition/mcpe-mods-tools/2113859-power-wand-mod-everything-you-need-in-one-single"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/powerwand.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    const-string v0, "powerwand.js"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsall;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsall;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

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
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

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
