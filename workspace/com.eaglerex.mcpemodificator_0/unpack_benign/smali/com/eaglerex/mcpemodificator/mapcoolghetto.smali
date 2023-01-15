.class public Lcom/eaglerex/mcpemodificator/mapcoolghetto;
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gravity Runner"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MINI-GAME AMUSEMENT PARK"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->l:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/dz;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/dz;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/eb;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/eb;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ec;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ec;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ed;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ed;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ee;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ee;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ef;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ef;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/eg;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/eg;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/eh;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/eh;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ei;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ei;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ea;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ea;-><init>(Lcom/eaglerex/mcpemodificator/mapcoolghetto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/mapcreators;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f070009

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->l:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->n:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->n:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->a()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "You try to do the parkour and puzzle challenges before the time is up. When the time is up then all the sand will fall (using redstone alternatives) and you will die and not be able to finish. Try to finish or get a better distance.\n\nChallenge your friends to see who\'s the fastest and the smartest. This Mini-Game was created to test your skills and your speed. Good Luck.\n\nP.S. This Mini-Game is possible to finish but you need a nearly perfect run to beat it."

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->b:Ljava/lang/String;

    const-string v0, "Made By : KoolGhettoKid"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/90mBEKY.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/RlLo4ik.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/jjQuVX9.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/J51ku26.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2626528-gravity-runner-mini-game-speed-parkourpuzzle/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/gravity-runner.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->i:Ljava/lang/String;

    const-string v0, "gravity-runner.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "This map includes: 1 BomberMan map, 2 Skyblock Warriors, 2 Rollercoasters, 3 Spleef Arenas, 3 Hot Sand Maps, 4 Lava Warriors, and 1 Hardcore Parkour Challenge. This map was made for multiplayer. You will have many maps to choose from in one map."

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->b:Ljava/lang/String;

    const-string v0, "Made By : KoolGhettoKid"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->c:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/M2VwvyR.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->d:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/95zxWn3.png"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->e:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/D8N3cG7.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->f:Ljava/lang/String;

    const-string v0, "http://i.imgur.com/EPE72Wc.jpg"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->g:Ljava/lang/String;

    const-string v0, "http://www.minecraftforum.net/topic/2665189-mini-game-amusement-park-v1-081hot-sandlava-warriorsskyblock-warriorsbombermanmore/"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->h:Ljava/lang/String;

    const-string v0, "http://ideacloudlabs.com/test/MCPE/minigamespark.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->i:Ljava/lang/String;

    const-string v0, "minigamespark.zip"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "maker"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen1"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen2"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen3"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "screen4"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "officialmodpage"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "downloadlink"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    const-string v1, "modname"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->startActivity(Landroid/content/Intent;)V

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

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/mapcoolghetto;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
