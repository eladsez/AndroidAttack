.class public Lcom/eaglerex/mcpemodificator/modsshow;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Landroid/webkit/WebView;

.field c:Landroid/webkit/WebView;

.field d:Landroid/webkit/WebView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Landroid/app/ActionBar;

.field t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->t:I

    return-void
.end method

.method private b()V
    .locals 2

    const v0, 0x7f050064

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->a:Landroid/webkit/WebView;

    const v0, 0x7f050065

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->b:Landroid/webkit/WebView;

    const v0, 0x7f050066

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->c:Landroid/webkit/WebView;

    const v0, 0x7f050067

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->d:Landroid/webkit/WebView;

    const v0, 0x7f050068

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->g:Landroid/widget/Button;

    const v0, 0x7f050069

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const v0, 0x7f05006a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->e:Landroid/widget/TextView;

    const v0, 0x7f05006b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mf;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mf;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/m;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mg;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mg;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/o;)V

    const v0, 0x7f050075

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mh;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mh;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mi;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mi;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050077

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mj;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mj;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mk;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mk;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ml;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ml;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mb;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mb;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007b

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/mc;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/mc;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/eaglerex/mcpemodificator/md;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/md;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v0, "/mcpemodificator"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/modsshow;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsshow;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->setContentView(I)V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsshow;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->j:Ljava/lang/String;

    const-string v1, "maker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->k:Ljava/lang/String;

    const-string v1, "screen1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->l:Ljava/lang/String;

    const-string v1, "screen2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->m:Ljava/lang/String;

    const-string v1, "screen3"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->n:Ljava/lang/String;

    const-string v1, "screen4"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->o:Ljava/lang/String;

    const-string v1, "officialmodpage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->p:Ljava/lang/String;

    const-string v1, "downloadlink"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eaglerex/mcpemodificator/modsshow;->q:Ljava/lang/String;

    const-string v1, "modname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EJM Butter Edition V4.0.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/eaglerex/mcpemodificator/modsshow;->t:I

    :cond_0
    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/modsshow;->b()V

    invoke-direct {p0}, Lcom/eaglerex/mcpemodificator/modsshow;->c()V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/modsshow;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->s:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->s:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->g:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/ma;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/ma;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->h:Landroid/widget/Button;

    new-instance v1, Lcom/eaglerex/mcpemodificator/me;

    invoke-direct {v1, p0}, Lcom/eaglerex/mcpemodificator/me;-><init>(Lcom/eaglerex/mcpemodificator/modsshow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/modsshow;->i:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

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
