.class public Lcom/waps/AdView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/waps/DisplayAdNotifier;


# static fields
.field static e:J

.field static f:I


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Z

.field c:Landroid/view/View;

.field d:Landroid/content/Context;

.field g:Ljava/lang/String;

.field private h:[I

.field private i:I

.field private j:Lcom/waps/AnimationType;

.field private k:I

.field private l:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/waps/AdView;->e:J

    const/16 v0, 0x1e

    sput v0, Lcom/waps/AdView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/AdView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/waps/AdView;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/waps/AdView;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdView;->l:Ljava/lang/String;

    new-instance v0, Lcom/waps/b;

    invoke-direct {v0, p0}, Lcom/waps/b;-><init>(Lcom/waps/AdView;)V

    iput-object v0, p0, Lcom/waps/AdView;->mUpdateResults:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/waps/AdView;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/waps/AdView;->h:[I

    iput v1, p0, Lcom/waps/AdView;->i:I

    iput v1, p0, Lcom/waps/AdView;->k:I

    return-void
.end method

.method static synthetic access$000(Lcom/waps/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdView;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/waps/AdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/waps/AdView;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/waps/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/AdView;->updateResultsInUi()V

    return-void
.end method

.method private updateResultsInUi()V
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/waps/AdView;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    iget-object v0, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v0, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearDisappearingChildren()V

    iget-object v0, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/waps/AdView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/AdView;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AdView;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget v0, p0, Lcom/waps/AdView;->k:I

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/AnimationType;

    iget-object v1, p0, Lcom/waps/AdView;->h:[I

    invoke-direct {v0, v1}, Lcom/waps/AnimationType;-><init>([I)V

    iput-object v0, p0, Lcom/waps/AdView;->j:Lcom/waps/AnimationType;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/waps/AdView;->j:Lcom/waps/AnimationType;

    iget-object v1, p0, Lcom/waps/AdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/waps/AnimationType;->startAnimation(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/AdView;->b:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/waps/AdView;->k:I

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/waps/AnimationType;

    iget v1, p0, Lcom/waps/AdView;->i:I

    invoke-direct {v0, v1}, Lcom/waps/AnimationType;-><init>(I)V

    iput-object v0, p0, Lcom/waps/AdView;->j:Lcom/waps/AnimationType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    iget v0, p0, Lcom/waps/AdView;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/waps/AnimationType;

    iget-object v1, p0, Lcom/waps/AdView;->h:[I

    invoke-direct {v0, v1}, Lcom/waps/AnimationType;-><init>([I)V

    iput-object v0, p0, Lcom/waps/AdView;->j:Lcom/waps/AnimationType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public DisplayAd()V
    .locals 1

    sget v0, Lcom/waps/AdView;->f:I

    invoke-virtual {p0, v0}, Lcom/waps/AdView;->DisplayAd(I)V

    return-void
.end method

.method public DisplayAd(I)V
    .locals 4

    const/16 v3, 0x14

    iget-object v0, p0, Lcom/waps/AdView;->d:Landroid/content/Context;

    const-string v1, "ShowAdFlag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_ad_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/waps/AdView;->showADS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/waps/AdView;->e:J

    sget v0, Lcom/waps/AdView;->f:I

    if-ge v0, v3, :cond_0

    sput v3, Lcom/waps/AdView;->f:I

    :cond_0
    new-instance v0, Lcom/waps/a;

    invoke-direct {v0, p0}, Lcom/waps/a;-><init>(Lcom/waps/AdView;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/waps/AdView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/waps/AdView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v2, v2

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v4, v1

    div-double v1, v2, v4

    iput-object p1, p0, Lcom/waps/AdView;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/waps/AdView;->c:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    int-to-double v5, v0

    div-double v1, v5, v1

    double-to-int v1, v1

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v7, p0, Lcom/waps/AdView;->b:Z

    iget-object v0, p0, Lcom/waps/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waps/AdView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/waps/AdView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/waps/AdView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WAPS_SDK"

    invoke-static {v0, p1}, Lcom/waps/AppLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/AdView;->b:Z

    iget-object v0, p0, Lcom/waps/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waps/AdView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAnimationType(I)Lcom/waps/AdView;
    .locals 1

    iput p1, p0, Lcom/waps/AdView;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/waps/AdView;->k:I

    return-object p0
.end method

.method public setAnimationType([I)Lcom/waps/AdView;
    .locals 1

    iput-object p1, p0, Lcom/waps/AdView;->h:[I

    const/4 v0, 0x2

    iput v0, p0, Lcom/waps/AdView;->k:I

    return-object p0
.end method

.method public showADS()V
    .locals 1

    iget-object v0, p0, Lcom/waps/AdView;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waps/AppConnect;->getDisplayAd(Lcom/waps/DisplayAdNotifier;)V

    return-void
.end method
