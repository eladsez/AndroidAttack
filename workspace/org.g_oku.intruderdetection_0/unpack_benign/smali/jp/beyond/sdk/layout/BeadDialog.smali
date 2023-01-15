.class public Ljp/beyond/sdk/layout/BeadDialog;
.super Landroid/app/Dialog;
.source "BeadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_APP:Ljava/lang/String; = "APP"


# instance fields
.field private BeadBackKeyClickedNotification:Ljava/lang/String;

.field private BeadCancelButtonClickedNotification:Ljava/lang/String;

.field private BeadDidDismissNotification:Ljava/lang/String;

.field private BeadDownloadButtonClickedNotification:Ljava/lang/String;

.field private BeadFinishButtonClickedNotification:Ljava/lang/String;

.field private BeadWillDismissNotification:Ljava/lang/String;

.field private mEventListener:Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

.field private final mHtmlFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->mEventListener:Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    .line 71
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->mHtmlFileName:Ljava/lang/String;

    .line 76
    const-string v0, "BeadWillDismissNotification"

    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadWillDismissNotification:Ljava/lang/String;

    .line 77
    const-string v0, "BeadDidDismissNotification"

    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadDidDismissNotification:Ljava/lang/String;

    .line 78
    const-string v0, "BeadBackKeyClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadBackKeyClickedNotification:Ljava/lang/String;

    .line 79
    const-string v0, "BeadCancelButtonClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadCancelButtonClickedNotification:Ljava/lang/String;

    .line 80
    const-string v0, "BeadFinishButtonClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadFinishButtonClickedNotification:Ljava/lang/String;

    .line 81
    const-string v0, "BeadDownloadButtonClickedNotification"

    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadDownloadButtonClickedNotification:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadDialog;->mEventListener:Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->requestWindowFeature(I)Z

    .line 94
    return-void
.end method

.method static synthetic access$0(Ljp/beyond/sdk/layout/BeadDialog;)Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->mEventListener:Ljp/beyond/sdk/layout/BeadDialog$BeadDialogEventListener;

    return-object v0
.end method

.method static synthetic access$1(Ljp/beyond/sdk/layout/BeadDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadBackKeyClickedNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Ljp/beyond/sdk/layout/BeadDialog;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->animateHideLogo()V

    return-void
.end method

.method static synthetic access$2(Ljp/beyond/sdk/layout/BeadDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljp/beyond/sdk/layout/BeadDialog;->sendMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Ljp/beyond/sdk/layout/BeadDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadWillDismissNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Ljp/beyond/sdk/layout/BeadDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadDidDismissNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Ljp/beyond/sdk/layout/BeadDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadCancelButtonClickedNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Ljp/beyond/sdk/layout/BeadDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadDownloadButtonClickedNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Ljp/beyond/sdk/layout/BeadDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadDialog;->BeadFinishButtonClickedNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Ljp/beyond/sdk/layout/BeadDialog;)V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->animateButton()V

    return-void
.end method

.method static synthetic access$9(Ljp/beyond/sdk/layout/BeadDialog;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->animatePopLogo()V

    return-void
.end method

.method private animateButton()V
    .locals 6

    .prologue
    .line 620
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 622
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 626
    :cond_0
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 627
    .local v1, "rotate":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 628
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 629
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 630
    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateHideFastLogo()V
    .locals 4

    .prologue
    .line 700
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$14;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadDialog$14;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    .line 716
    const-wide/16 v2, 0xa

    .line 700
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 718
    return-void
.end method

.method private animateHideLogo()V
    .locals 4

    .prologue
    .line 675
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$13;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadDialog$13;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    .line 691
    const-wide/16 v2, 0x5dc

    .line 675
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 693
    return-void
.end method

.method private animatePopLogo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 637
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 639
    .local v1, "logo":Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 643
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v2, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 644
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 646
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 647
    new-instance v2, Ljp/beyond/sdk/layout/BeadDialog$12;

    invoke-direct {v2, p0}, Ljp/beyond/sdk/layout/BeadDialog$12;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 666
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private isAppActionType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "APP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private sendMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v1, "Bead sender"

    const-string v2, "Broadcasting message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "jp.beyond.MESSAGE_RECEIVED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "jp.beyond.MESSAGE_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 106
    return-void
.end method

.method private setBackKeyClickListener()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method private setBackKeyClickListener(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    new-instance v0, Ljp/beyond/sdk/layout/BeadDialog$1;

    invoke-direct {v0, p0, p1}, Ljp/beyond/sdk/layout/BeadDialog$1;-><init>(Ljp/beyond/sdk/layout/BeadDialog;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 348
    return-void
.end method

.method private setCancelButtonClickListener()V
    .locals 2

    .prologue
    .line 443
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 445
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$5;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadDialog$5;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setCancelButtonClickListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 356
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$2;

    invoke-direct {v1, p0, p1}, Ljp/beyond/sdk/layout/BeadDialog$2;-><init>(Ljp/beyond/sdk/layout/BeadDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setDownloadButtonClickListener(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 383
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$3;

    invoke-direct {v1, p0, p2, p1}, Ljp/beyond/sdk/layout/BeadDialog$3;-><init>(Ljp/beyond/sdk/layout/BeadDialog;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setDownloadButtonClickListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 471
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 475
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$6;

    invoke-direct {v1, p0, p1}, Ljp/beyond/sdk/layout/BeadDialog$6;-><init>(Ljp/beyond/sdk/layout/BeadDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setFinishButtonClickListener()V
    .locals 2

    .prologue
    .line 492
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 494
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 498
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$7;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadDialog$7;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setFinishButtonClickListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 407
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$4;

    invoke-direct {v1, p0, p1}, Ljp/beyond/sdk/layout/BeadDialog$4;-><init>(Ljp/beyond/sdk/layout/BeadDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setLabelTextClickListener()V
    .locals 2

    .prologue
    .line 595
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 598
    .local v0, "logo":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 602
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$11;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadDialog$11;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setLoadWebListener()V
    .locals 5

    .prologue
    .line 516
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 518
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance v3, Ljp/beyond/sdk/layout/BeadDialog$8;

    invoke-direct {v3, p0, v2}, Ljp/beyond/sdk/layout/BeadDialog$8;-><init>(Ljp/beyond/sdk/layout/BeadDialog;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 543
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ljp/beyond/sdk/layout/BeadDialog;->mHtmlFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 544
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private setLogoClickListener()V
    .locals 2

    .prologue
    .line 573
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 576
    .local v0, "logo":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->animateHideFastLogo()V

    .line 580
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$10;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadDialog$10;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setWebViewClickListener()V
    .locals 2

    .prologue
    .line 552
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 554
    .local v0, "webView":Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 558
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadDialog$9;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadDialog$9;-><init>(Ljp/beyond/sdk/layout/BeadDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public applyAdLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adData"    # Ljp/beyond/sdk/BeadData;
    .param p3, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageName"    # Ljava/lang/String;
    .param p5, "layout"    # Ljp/beyond/sdk/layout/BeadLayout;

    .prologue
    .line 271
    const/4 v6, 0x1

    .line 272
    .local v6, "isApp":Z
    const-string v7, ""

    .line 273
    .local v7, "label":Ljava/lang/String;
    const-string v8, ""

    .line 274
    .local v8, "strBtnText":Ljava/lang/String;
    const-string v9, ""

    .line 275
    .local v9, "strTemp":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 276
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->isAppActionType(Ljava/lang/String;)Z

    move-result v6

    .line 277
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getBtnText()Ljava/lang/String;

    move-result-object v8

    .line 278
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getAlt()Ljava/lang/String;

    move-result-object v9

    .line 279
    if-eqz v8, :cond_0

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    :cond_0
    if-eqz v9, :cond_1

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    :cond_1
    if-eqz v6, :cond_4

    .line 283
    sget-object v0, Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;->ClickAppButton:Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialogStrings;->getString(Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v7

    .line 298
    :cond_2
    :goto_0
    const-string v4, ""

    .line 299
    .local v4, "txtIconText":Ljava/lang/String;
    const-string v5, ""

    .local v5, "txtIconTitle":Ljava/lang/String;
    move-object v0, p5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    .line 301
    invoke-virtual/range {v0 .. v7}, Ljp/beyond/sdk/layout/BeadLayout;->createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setContentView(Landroid/view/View;)V

    .line 303
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->setWebViewClickListener()V

    .line 306
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setCancelButtonClickListener(Landroid/content/Context;)V

    .line 309
    if-eqz p2, :cond_3

    .line 310
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setDownloadButtonClickListener(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    :cond_3
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setFinishButtonClickListener(Landroid/content/Context;)V

    .line 322
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setBackKeyClickListener(Landroid/content/Context;)V

    .line 323
    return-void

    .line 286
    .end local v4    # "txtIconText":Ljava/lang/String;
    .end local v5    # "txtIconTitle":Ljava/lang/String;
    :cond_4
    sget-object v0, Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;->ClickWebButton:Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialogStrings;->getString(Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v7

    .line 289
    goto :goto_0

    .line 290
    :cond_5
    move-object v7, v9

    .line 292
    goto :goto_0

    .line 293
    :cond_6
    move-object v7, v9

    goto :goto_0
.end method

.method public applyBannerLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adData"    # Ljp/beyond/sdk/BeadData;
    .param p3, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageName"    # Ljava/lang/String;
    .param p5, "layout"    # Ljp/beyond/sdk/layout/BeadLayout;

    .prologue
    .line 242
    if-nez p2, :cond_0

    .line 243
    const-string v0, "Bead"

    const-string v1, "BANNER NO DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v6, 0x1

    .line 248
    .local v6, "isApp":Z
    const-string v7, ""

    .line 251
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getIcon_Text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getIcon_title()Ljava/lang/String;

    move-result-object v5

    move-object v0, p5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Ljp/beyond/sdk/layout/BeadLayout;->createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setContentView(Landroid/view/View;)V

    .line 254
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setDownloadButtonClickListener(Ljava/lang/String;)V

    .line 259
    :cond_1
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->setLogoClickListener()V

    goto :goto_0
.end method

.method public applyIcon2Layout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adData"    # Ljp/beyond/sdk/BeadData;
    .param p3, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageName"    # Ljava/lang/String;
    .param p5, "layout"    # Ljp/beyond/sdk/layout/BeadLayout;

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 180
    const-string v0, "Bead"

    const-string v1, "ICON 2 NO DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v6, 0x1

    .line 185
    .local v6, "isApp":Z
    const-string v7, ""

    .line 186
    .local v7, "label":Ljava/lang/String;
    const-string v8, ""

    .line 187
    .local v8, "strBtnText":Ljava/lang/String;
    const-string v9, ""

    .line 188
    .local v9, "strTemp":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 189
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->isAppActionType(Ljava/lang/String;)Z

    move-result v6

    .line 190
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getBtnText()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getAlt()Ljava/lang/String;

    move-result-object v9

    .line 192
    if-eqz v8, :cond_1

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    :cond_1
    if-eqz v9, :cond_2

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    :cond_2
    if-eqz v6, :cond_5

    .line 196
    sget-object v0, Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;->ClickAppButton:Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialogStrings;->getString(Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v7

    .line 211
    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getIcon_Text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getIcon_title()Ljava/lang/String;

    move-result-object v5

    move-object v0, p5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Ljp/beyond/sdk/layout/BeadLayout;->createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setContentView(Landroid/view/View;)V

    .line 214
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setCancelButtonClickListener(Landroid/content/Context;)V

    .line 217
    if-eqz p2, :cond_4

    .line 218
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setDownloadButtonClickListener(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    :cond_4
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setFinishButtonClickListener(Landroid/content/Context;)V

    .line 225
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->setLabelTextClickListener()V

    .line 228
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->setLogoClickListener()V

    .line 231
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setBackKeyClickListener(Landroid/content/Context;)V

    goto :goto_0

    .line 199
    :cond_5
    sget-object v0, Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;->ClickWebButton:Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialogStrings;->getString(Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v7

    .line 201
    goto :goto_1

    .line 202
    :cond_6
    move-object v7, v9

    .line 204
    goto :goto_1

    .line 205
    :cond_7
    move-object v7, v9

    goto :goto_1
.end method

.method public applyIconLayout(Landroid/content/Context;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adData"    # Ljp/beyond/sdk/BeadData;
    .param p3, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageName"    # Ljava/lang/String;
    .param p5, "layout"    # Ljp/beyond/sdk/layout/BeadLayout;

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 117
    const-string v0, "Bead"

    const-string v1, "ICON NO DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v6, 0x1

    .line 122
    .local v6, "isApp":Z
    const-string v7, ""

    .line 123
    .local v7, "label":Ljava/lang/String;
    const-string v8, ""

    .line 124
    .local v8, "strBtnText":Ljava/lang/String;
    const-string v9, ""

    .line 125
    .local v9, "strTemp":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 126
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->isAppActionType(Ljava/lang/String;)Z

    move-result v6

    .line 127
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getBtnText()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getAlt()Ljava/lang/String;

    move-result-object v9

    .line 129
    if-eqz v8, :cond_1

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    :cond_1
    if-eqz v9, :cond_2

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    :cond_2
    if-eqz v6, :cond_5

    .line 133
    sget-object v0, Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;->ClickAppButton:Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialogStrings;->getString(Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v7

    .line 148
    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getIcon_Text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getIcon_title()Ljava/lang/String;

    move-result-object v5

    move-object v0, p5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Ljp/beyond/sdk/layout/BeadLayout;->createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setContentView(Landroid/view/View;)V

    .line 151
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setCancelButtonClickListener(Landroid/content/Context;)V

    .line 154
    if-eqz p2, :cond_4

    .line 155
    invoke-virtual {p2}, Ljp/beyond/sdk/BeadData;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp/beyond/sdk/layout/BeadDialog;->setDownloadButtonClickListener(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :cond_4
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setFinishButtonClickListener(Landroid/content/Context;)V

    .line 162
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->setLabelTextClickListener()V

    .line 165
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadDialog;->setLogoClickListener()V

    .line 168
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadDialog;->setBackKeyClickListener(Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :cond_5
    sget-object v0, Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;->ClickWebButton:Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0}, Ljp/beyond/sdk/layout/BeadDialogStrings;->getString(Ljp/beyond/sdk/layout/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v7

    .line 138
    goto :goto_1

    .line 139
    :cond_6
    move-object v7, v9

    .line 141
    goto :goto_1

    .line 142
    :cond_7
    move-object v7, v9

    goto :goto_1
.end method
