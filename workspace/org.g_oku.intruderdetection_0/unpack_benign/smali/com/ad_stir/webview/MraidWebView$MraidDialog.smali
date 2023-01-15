.class Lcom/ad_stir/webview/MraidWebView$MraidDialog;
.super Landroid/app/Dialog;
.source "MraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/webview/MraidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MraidDialog"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final backPressed:Ljava/lang/Runnable;

.field private final layout1:Landroid/widget/FrameLayout;

.field private final layout2:Landroid/widget/FrameLayout;

.field private orientation:I

.field private final wv:Lcom/ad_stir/webview/MraidWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ad_stir/webview/MraidWebView;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wv"    # Lcom/ad_stir/webview/MraidWebView;
    .param p3, "backPressed"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, -0x2

    .line 420
    const v1, 0x1030007

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 455
    const/16 v1, -0x64

    iput v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->orientation:I

    .line 421
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->layout1:Landroid/widget/FrameLayout;

    .line 422
    iput-object p2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->wv:Lcom/ad_stir/webview/MraidWebView;

    .line 423
    iput-object p3, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->backPressed:Ljava/lang/Runnable;

    .line 424
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    .line 425
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->layout1:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->setContentView(Landroid/view/View;)V

    .line 426
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->layout2:Landroid/widget/FrameLayout;

    .line 427
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->layout2:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->layout1:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->layout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v1}, Lcom/ad_stir/webview/MraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 430
    .local v0, "p":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 431
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "p":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->layout2:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 435
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->onStart()V

    .line 436
    return-void
.end method

.method private lockOrientation()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 458
    iget v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->orientation:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    .line 459
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->orientation:I

    .line 460
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 461
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 464
    .local v0, "orientation":I
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 467
    .local v1, "rotation":I
    if-ne v0, v5, :cond_3

    if-nez v1, :cond_3

    .line 468
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 469
    :cond_3
    if-ne v0, v5, :cond_4

    if-ne v1, v5, :cond_4

    .line 470
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 471
    :cond_4
    if-ne v0, v4, :cond_5

    if-ne v1, v4, :cond_5

    .line 472
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 473
    :cond_5
    if-ne v0, v4, :cond_6

    if-ne v1, v7, :cond_6

    .line 474
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 476
    :cond_6
    if-ne v0, v4, :cond_7

    if-nez v1, :cond_7

    .line 477
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 478
    :cond_7
    if-ne v0, v4, :cond_8

    if-ne v1, v5, :cond_8

    .line 479
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 480
    :cond_8
    if-ne v0, v5, :cond_9

    if-ne v1, v4, :cond_9

    .line 481
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 482
    :cond_9
    if-ne v0, v5, :cond_1

    if-ne v1, v7, :cond_1

    .line 483
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private unlockOrientation()V
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 488
    iget v0, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->orientation:I

    if-eq v0, v2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->orientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 490
    :cond_0
    iput v2, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->orientation:I

    .line 491
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 451
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->backPressed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->backPressed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 453
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->lockOrientation()V

    .line 441
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/ad_stir/webview/MraidWebView$MraidDialog;->unlockOrientation()V

    .line 446
    return-void
.end method
