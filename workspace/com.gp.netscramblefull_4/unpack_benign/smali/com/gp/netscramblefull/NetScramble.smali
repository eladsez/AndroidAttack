.class public Lcom/gp/netscramblefull/NetScramble;
.super Lorg/hermit/android/core/MainActivity;
.source "NetScramble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gp/netscramblefull/NetScramble$GameTimer;,
        Lcom/gp/netscramblefull/NetScramble$Sound;,
        Lcom/gp/netscramblefull/NetScramble$SoundMode;,
        Lcom/gp/netscramblefull/NetScramble$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gp$netscramblefull$NetScramble$State:[I = null

.field private static final ANIM_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "netscramble"


# instance fields
.field private adview:Lcom/adwo/adsdk/AdwoAdView;

.field private animEnable:Z

.field private animSlideInLeft:Landroid/view/animation/TranslateAnimation;

.field private animSlideInRight:Landroid/view/animation/TranslateAnimation;

.field private animSlideOutLeft:Landroid/view/animation/TranslateAnimation;

.field private animSlideOutRight:Landroid/view/animation/TranslateAnimation;

.field private appResources:Landroid/content/res/Resources;

.field private boardView:Lcom/gp/netscramblefull/BoardView;

.field private clickCount:I

.field private clicksText:Ljava/lang/StringBuilder;

.field private gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

.field private gameState:Lcom/gp/netscramblefull/NetScramble$State;

.field private gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

.field private isSolved:Z

.field private mainMenu:Landroid/view/Menu;

.field private mainView:Landroid/view/ViewGroup;

.field private final newGameListener:Landroid/content/DialogInterface$OnClickListener;

.field private prevClickedCell:Lcom/gp/netscramblefull/Cell;

.field private restoredGameState:Lcom/gp/netscramblefull/NetScramble$State;

.field private solverUsed:Z

.field private soundHandler:Landroid/os/Handler;

.field private soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

.field private soundPool:Landroid/media/SoundPool;

.field private splashText:Landroid/widget/TextView;

.field private final startGameListener:Landroid/content/DialogInterface$OnClickListener;

.field private startRunner:Ljava/lang/Runnable;

.field private stateHandler:Landroid/os/Handler;

.field private statusLeft:Landroid/widget/TextView;

.field private statusMid:Landroid/widget/TextView;

.field private statusRight:Landroid/widget/TextView;

.field private timeText:Ljava/lang/StringBuilder;

.field private viewSwitcher:Landroid/widget/ViewAnimator;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gp$netscramblefull$NetScramble$State()[I
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/gp/netscramblefull/NetScramble;->$SWITCH_TABLE$com$gp$netscramblefull$NetScramble$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gp/netscramblefull/NetScramble$State;->values()[Lcom/gp/netscramblefull/NetScramble$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->ABORTED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->INIT:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->NEW:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RESTORED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->SOLVED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/gp/netscramblefull/NetScramble;->$SWITCH_TABLE$com$gp$netscramblefull$NetScramble$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lorg/hermit/android/core/MainActivity;-><init>()V

    .line 886
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$1;

    invoke-direct {v0, p0}, Lcom/gp/netscramblefull/NetScramble$1;-><init>(Lcom/gp/netscramblefull/NetScramble;)V

    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->startGameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 958
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$2;

    invoke-direct {v0, p0}, Lcom/gp/netscramblefull/NetScramble$2;-><init>(Lcom/gp/netscramblefull/NetScramble;)V

    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->stateHandler:Landroid/os/Handler;

    .line 1042
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$3;

    invoke-direct {v0, p0}, Lcom/gp/netscramblefull/NetScramble$3;-><init>(Lcom/gp/netscramblefull/NetScramble;)V

    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->newGameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1179
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$4;

    invoke-direct {v0, p0}, Lcom/gp/netscramblefull/NetScramble$4;-><init>(Lcom/gp/netscramblefull/NetScramble;)V

    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->startRunner:Ljava/lang/Runnable;

    .line 1268
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$5;

    invoke-direct {v0, p0}, Lcom/gp/netscramblefull/NetScramble$5;-><init>(Lcom/gp/netscramblefull/NetScramble;)V

    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->soundHandler:Landroid/os/Handler;

    .line 1389
    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    .line 1407
    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->splashText:Landroid/widget/TextView;

    .line 1411
    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    .line 1446
    iput v2, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    .line 1450
    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->prevClickedCell:Lcom/gp/netscramblefull/Cell;

    .line 1453
    iput-boolean v2, p0, Lcom/gp/netscramblefull/NetScramble;->solverUsed:Z

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/gp/netscramblefull/NetScramble;Lcom/gp/netscramblefull/NetScramble$State;Z)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0, p1, p2}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/gp/netscramblefull/NetScramble;)Lcom/gp/netscramblefull/BoardView;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gp/netscramblefull/NetScramble;)V
    .locals 0

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->wakeUp()V

    return-void
.end method

.method private createGui()Landroid/view/ViewGroup;
    .locals 15

    .prologue
    .line 502
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/NetScramble;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 503
    .local v14, "wm":Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 504
    .local v10, "disp":Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 505
    .local v13, "width":I
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 508
    .local v11, "height":I
    new-instance v0, Landroid/widget/ViewAnimator;

    invoke-direct {v0, p0}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    .line 509
    const/4 v9, -0x1

    .line 512
    .local v9, "FPAR":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    .line 513
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 514
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 515
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 512
    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideInLeft:Landroid/view/animation/TranslateAnimation;

    .line 516
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideInLeft:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 517
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    .line 518
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    .line 519
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 520
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 517
    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideOutLeft:Landroid/view/animation/TranslateAnimation;

    .line 521
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideOutLeft:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 522
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    .line 523
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 524
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 525
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 522
    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideInRight:Landroid/view/animation/TranslateAnimation;

    .line 526
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideInRight:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 527
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    .line 528
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 529
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 530
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 527
    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideOutRight:Landroid/view/animation/TranslateAnimation;

    .line 531
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideOutRight:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 534
    if-le v13, v11, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/gp/netscramblefull/NetScramble;->createPlayView(Z)Landroid/view/View;

    move-result-object v12

    .line 535
    .local v12, "playView":Landroid/view/View;
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    .line 536
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 535
    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 540
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->createSplashScreen()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->splashText:Landroid/widget/TextView;

    .line 541
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->splashText:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    .line 542
    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 541
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    return-object v0

    .line 534
    .end local v12    # "playView":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createPlayView(Z)Landroid/view/View;
    .locals 13
    .param p1, "landscape"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v12, -0x1

    .line 556
    const/4 v3, -0x2

    .line 557
    .local v3, "WCON":I
    const/4 v0, -0x1

    .line 558
    .local v0, "FPAR":I
    const/4 v1, 0x0

    .line 559
    .local v1, "HORI":I
    const/4 v2, 0x1

    .line 562
    .local v2, "VERT":I
    if-eqz p1, :cond_0

    move v6, v10

    .line 563
    .local v6, "orient":I
    :goto_0
    if-eqz p1, :cond_1

    move v7, v11

    .line 564
    .local v7, "orient2":I
    :goto_1
    if-eqz p1, :cond_2

    move v5, v9

    .line 565
    .local v5, "hfill":I
    :goto_2
    if-eqz p1, :cond_3

    move v8, v12

    .line 568
    .local v8, "vfill":I
    :goto_3
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 569
    .local v4, "boardWrapper":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 572
    new-instance v9, Lcom/gp/netscramblefull/BoardView;

    invoke-direct {v9, p0}, Lcom/gp/netscramblefull/BoardView;-><init>(Lcom/gp/netscramblefull/NetScramble;)V

    iput-object v9, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    .line 573
    iget-object v9, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 574
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v12, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 573
    invoke-virtual {v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    invoke-direct {p0, v7}, Lcom/gp/netscramblefull/NetScramble;->createStatusBar(I)Landroid/view/View;

    move-result-object v9

    .line 578
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 577
    invoke-virtual {v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    return-object v4

    .end local v4    # "boardWrapper":Landroid/widget/LinearLayout;
    .end local v5    # "hfill":I
    .end local v6    # "orient":I
    .end local v7    # "orient2":I
    .end local v8    # "vfill":I
    :cond_0
    move v6, v11

    .line 562
    goto :goto_0

    .restart local v6    # "orient":I
    :cond_1
    move v7, v10

    .line 563
    goto :goto_1

    .restart local v7    # "orient2":I
    :cond_2
    move v5, v12

    .line 564
    goto :goto_2

    .restart local v5    # "hfill":I
    :cond_3
    move v8, v9

    .line 565
    goto :goto_3
.end method

.method private createSoundPool()Landroid/media/SoundPool;
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 1251
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v2, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    .line 1252
    .local v0, "pool":Landroid/media/SoundPool;
    invoke-static {}, Lcom/gp/netscramblefull/NetScramble$Sound;->values()[Lcom/gp/netscramblefull/NetScramble$Sound;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-lt v4, v3, :cond_0

    .line 1255
    return-object v0

    .line 1252
    :cond_0
    aget-object v1, v2, v4

    .line 1253
    .local v1, "sound":Lcom/gp/netscramblefull/NetScramble$Sound;
    invoke-static {v1}, Lcom/gp/netscramblefull/NetScramble$Sound;->access$3(Lcom/gp/netscramblefull/NetScramble$Sound;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, p0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v1, v5}, Lcom/gp/netscramblefull/NetScramble$Sound;->access$4(Lcom/gp/netscramblefull/NetScramble$Sound;I)V

    .line 1252
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private createSplashScreen()Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 633
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$6;

    invoke-direct {v0, p0, p0}, Lcom/gp/netscramblefull/NetScramble$6;-><init>(Lcom/gp/netscramblefull/NetScramble;Landroid/content/Context;)V

    .line 651
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 652
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 653
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 654
    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 655
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 657
    const-string v1, "Wait..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    return-object v0
.end method

.method private createStatusBar(I)Landroid/view/View;
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    const/16 v8, 0xa

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    .line 590
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 591
    .local v3, "statusWrapper":Landroid/widget/LinearLayout;
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 592
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 595
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusLeft:Landroid/widget/TextView;

    .line 596
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusLeft:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 597
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusLeft:Landroid/widget/TextView;

    const-string v5, "00"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 601
    .local v0, "lpl":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusMid:Landroid/widget/TextView;

    .line 605
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusMid:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 606
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusMid:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 610
    .local v1, "lpm":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusMid:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusRight:Landroid/widget/TextView;

    .line 614
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusRight:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->clicksText:Ljava/lang/StringBuilder;

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    .line 617
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 620
    .local v2, "lpr":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusRight:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    return-object v3
.end method

.method private registerScore(Lcom/gp/netscramblefull/BoardView$Skill;III)Ljava/lang/String;
    .locals 15
    .param p1, "skill"    # Lcom/gp/netscramblefull/BoardView$Skill;
    .param p2, "ntiles"    # I
    .param p3, "clicks"    # I
    .param p4, "seconds"    # I

    .prologue
    .line 1207
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "size"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1208
    .local v11, "sizeName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "clicks"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1209
    .local v5, "clickName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "time"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1212
    .local v12, "timeName":Ljava/lang/String;
    const-string v13, "scores"

    .line 1213
    const/4 v14, 0x0

    .line 1212
    invoke-virtual {p0, v13, v14}, Lcom/gp/netscramblefull/NetScramble;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1214
    .local v10, "scorePrefs":Landroid/content/SharedPreferences;
    const/4 v13, -0x1

    invoke-interface {v10, v5, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1215
    .local v3, "bestClicks":I
    const/4 v13, -0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1218
    .local v4, "bestTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1219
    .local v8, "now":J
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1220
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v7, 0x0

    .line 1221
    .local v7, "msg":Ljava/lang/String;
    if-lez p3, :cond_1

    if-ltz v3, :cond_0

    move/from16 v0, p3

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 1222
    :cond_0
    move-object v0, v6

    move-object v1, v11

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1223
    move-object v0, v6

    move-object v1, v5

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1224
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "Date"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1225
    iget-object v13, p0, Lcom/gp/netscramblefull/NetScramble;->appResources:Landroid/content/res/Resources;

    const v14, 0x7f06001b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1227
    :cond_1
    if-lez p4, :cond_3

    if-ltz v4, :cond_2

    move/from16 v0, p4

    move v1, v4

    if-ge v0, v1, :cond_3

    .line 1228
    :cond_2
    move-object v0, v6

    move-object v1, v11

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1229
    move-object v0, v6

    move-object v1, v12

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1230
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "Date"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1231
    if-nez v7, :cond_5

    .line 1232
    iget-object v13, p0, Lcom/gp/netscramblefull/NetScramble;->appResources:Landroid/content/res/Resources;

    const v14, 0x7f06001c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1237
    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    .line 1238
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1240
    :cond_4
    return-object v7

    .line 1234
    :cond_5
    iget-object v13, p0, Lcom/gp/netscramblefull/NetScramble;->appResources:Landroid/content/res/Resources;

    const v14, 0x7f06001d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private reportWin(I)V
    .locals 14
    .param p1, "unused"    # I

    .prologue
    .line 1058
    iget-object v8, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v8}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->getTime()J

    move-result-wide v5

    .line 1059
    .local v5, "time":J
    const v7, 0x7f060017

    .line 1062
    .local v7, "titleId":I
    if-eqz p1, :cond_1

    .line 1063
    iget-object v8, p0, Lcom/gp/netscramblefull/NetScramble;->appResources:Landroid/content/res/Resources;

    const v9, 0x7f06001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "fmt":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/32 v10, 0xea60

    div-long v10, v5, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    div-long v10, v5, v10

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 1065
    iget v10, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1064
    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v8}, Lcom/gp/netscramblefull/BoardView;->getBoardWidth()I

    move-result v8

    iget-object v9, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v9}, Lcom/gp/netscramblefull/BoardView;->getBoardHeight()I

    move-result v9

    mul-int v3, v8, v9

    .line 1074
    .local v3, "ntiles":I
    iget-object v8, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    iget v9, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    .line 1075
    const-wide/16 v10, 0x3e8

    div-long v10, v5, v10

    long-to-int v10, v10

    .line 1074
    invoke-direct {p0, v8, v3, v9, v10}, Lcom/gp/netscramblefull/NetScramble;->registerScore(Lcom/gp/netscramblefull/BoardView$Skill;III)Ljava/lang/String;

    move-result-object v4

    .line 1076
    .local v4, "score":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1077
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    const v7, 0x7f060018

    .line 1082
    :cond_0
    iget-object v8, p0, Lcom/gp/netscramblefull/NetScramble;->appResources:Landroid/content/res/Resources;

    const v9, 0x7f06001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "finish":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1084
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1085
    const v9, 0x7f06001f

    iget-object v10, p0, Lcom/gp/netscramblefull/NetScramble;->newGameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1086
    const v9, 0x7f060020

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1087
    return-void

    .line 1067
    .end local v0    # "finish":Ljava/lang/String;
    .end local v1    # "fmt":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ntiles":I
    .end local v4    # "score":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/gp/netscramblefull/NetScramble;->appResources:Landroid/content/res/Resources;

    const v9, 0x7f060019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    .restart local v1    # "fmt":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/32 v10, 0xea60

    div-long v10, v5, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    div-long v10, v5, v10

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    .restart local v2    # "msg":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 1328
    const-string v1, "gameSkill"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/BoardView$Skill;

    move-result-object v1

    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 1329
    const-string v1, "gameState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gp/netscramblefull/NetScramble$State;->valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/NetScramble$State;

    move-result-object v1

    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    .line 1330
    const-string v1, "isSolved"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->isSolved:Z

    .line 1333
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1, p1, v2}, Lcom/gp/netscramblefull/BoardView;->restoreState(Landroid/os/Bundle;Lcom/gp/netscramblefull/BoardView$Skill;)Z

    move-result v0

    .line 1336
    .local v0, "restored":Z
    if-eqz v0, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->restoreState(Landroid/os/Bundle;Z)Z

    move-result v0

    .line 1338
    const-string v1, "clickCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    .line 1339
    const-string v1, "solverUsed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->solverUsed:Z

    .line 1342
    :cond_0
    return v0
.end method

.method private saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1305
    const-string v0, "gameSkill"

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v0, "gameState"

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v0, "isSolved"

    iget-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->isSolved:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1310
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v0, p1}, Lcom/gp/netscramblefull/BoardView;->saveState(Landroid/os/Bundle;)V

    .line 1313
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v0, p1}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->saveState(Landroid/os/Bundle;)V

    .line 1314
    const-string v0, "clickCount"

    iget v1, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    const-string v0, "solverUsed"

    iget-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->solverUsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1316
    return-void
.end method

.method private selectAnimEnable()V
    .locals 3

    .prologue
    .line 725
    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 726
    iget-boolean v2, p0, Lcom/gp/netscramblefull/NetScramble;->animEnable:Z

    if-eqz v2, :cond_1

    const v2, 0x7f050033

    move v1, v2

    .line 727
    .local v1, "id":I
    :goto_0
    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 728
    .local v0, "animItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 729
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 731
    .end local v0    # "animItem":Landroid/view/MenuItem;
    .end local v1    # "id":I
    :cond_0
    return-void

    .line 726
    :cond_1
    const v2, 0x7f050032

    move v1, v2

    goto :goto_0
.end method

.method private selectCurrentSkill()V
    .locals 3

    .prologue
    .line 706
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    iget v2, v2, Lcom/gp/netscramblefull/BoardView$Skill;->id:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 708
    .local v0, "skillItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 709
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 711
    .end local v0    # "skillItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private selectSoundMode()V
    .locals 3

    .prologue
    .line 715
    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    invoke-static {v2}, Lcom/gp/netscramblefull/NetScramble$SoundMode;->access$2(Lcom/gp/netscramblefull/NetScramble$SoundMode;)I

    move-result v0

    .line 717
    .local v0, "id":I
    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 718
    .local v1, "soundItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 719
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 721
    .end local v0    # "id":I
    .end local v1    # "soundItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private setAnimEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 838
    iput-boolean p1, p0, Lcom/gp/netscramblefull/NetScramble;->animEnable:Z

    .line 839
    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    iget-boolean v3, p0, Lcom/gp/netscramblefull/NetScramble;->animEnable:Z

    invoke-virtual {v2, v3}, Lcom/gp/netscramblefull/BoardView;->setAnimEnable(Z)V

    .line 842
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 843
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 844
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "animEnable"

    iget-boolean v3, p0, Lcom/gp/netscramblefull/NetScramble;->animEnable:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 845
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 847
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->selectAnimEnable()V

    .line 848
    return-void
.end method

.method private setSoundMode(Lcom/gp/netscramblefull/NetScramble$SoundMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/gp/netscramblefull/NetScramble$SoundMode;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    .line 829
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 830
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 831
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "soundMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 832
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 834
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->selectSoundMode()V

    .line 835
    return-void
.end method

.method private setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V
    .locals 5
    .param p1, "state"    # Lcom/gp/netscramblefull/NetScramble$State;
    .param p2, "showSplash"    # Z

    .prologue
    const/4 v4, 0x0

    .line 976
    const-string v1, "netscramble"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    if-ne p1, v1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    .line 984
    .local v0, "prev":Lcom/gp/netscramblefull/NetScramble$State;
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    .line 987
    invoke-static {}, Lcom/gp/netscramblefull/NetScramble;->$SWITCH_TABLE$com$gp$netscramblefull$NetScramble$State()[I

    move-result-object v1

    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v2}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 993
    :pswitch_1
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->stop()V

    .line 994
    if-eqz p2, :cond_0

    .line 995
    const v1, 0x7f060007

    invoke-direct {p0, v1}, Lcom/gp/netscramblefull/NetScramble;->showSplashText(I)V

    goto :goto_0

    .line 999
    :pswitch_2
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->stop()V

    .line 1000
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView;->setSolved()V

    .line 1005
    iget-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->isSolved:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->solverUsed:Z

    if-nez v1, :cond_2

    .line 1006
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/BoardView;->unconnectedCells()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gp/netscramblefull/NetScramble;->reportWin(I)V

    .line 1007
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->isSolved:Z

    .line 1010
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    goto :goto_0

    .line 1015
    :pswitch_3
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->stop()V

    goto :goto_0

    .line 1018
    :pswitch_4
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->stop()V

    .line 1019
    if-eqz p2, :cond_0

    .line 1020
    const v1, 0x7f060016

    invoke-direct {p0, v1}, Lcom/gp/netscramblefull/NetScramble;->showSplashText(I)V

    goto :goto_0

    .line 1024
    :pswitch_5
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RESTORED:Lcom/gp/netscramblefull/NetScramble$State;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    if-eq v0, v1, :cond_3

    .line 1025
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v1, v2}, Lcom/gp/netscramblefull/BoardView;->setupBoard(Lcom/gp/netscramblefull/BoardView$Skill;)V

    .line 1026
    iput-boolean v4, p0, Lcom/gp/netscramblefull/NetScramble;->isSolved:Z

    .line 1027
    iput v4, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    .line 1028
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->prevClickedCell:Lcom/gp/netscramblefull/Cell;

    .line 1029
    iput-boolean v4, p0, Lcom/gp/netscramblefull/NetScramble;->solverUsed:Z

    .line 1030
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->reset()V

    .line 1031
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->updateStatus()V

    .line 1032
    sget-object v1, Lcom/gp/netscramblefull/NetScramble$Sound;->START:Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-static {v1}, Lcom/gp/netscramblefull/NetScramble$Sound;->access$2(Lcom/gp/netscramblefull/NetScramble$Sound;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/NetScramble;->makeSound(I)V

    .line 1034
    :cond_3
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->hideSplashText()V

    .line 1035
    iget-boolean v1, p0, Lcom/gp/netscramblefull/NetScramble;->isSolved:Z

    if-nez v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v1}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->start()V

    goto/16 :goto_0

    .line 987
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showSplashText(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1148
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->splashText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1149
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/BoardView;->surfaceStop()V

    .line 1153
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideInRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1154
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideOutRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1155
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->splashText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 1160
    return-void
.end method

.method private wakeUp()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    if-ne v0, v1, :cond_0

    .line 880
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 883
    :goto_0
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    goto :goto_0
.end method


# virtual methods
.method cellClicked(Lcom/gp/netscramblefull/Cell;)V
    .locals 1
    .param p1, "cell"    # Lcom/gp/netscramblefull/Cell;

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/gp/netscramblefull/NetScramble;->isSolved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->prevClickedCell:Lcom/gp/netscramblefull/Cell;

    if-eq p1, v0, :cond_0

    .line 863
    iget v0, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    .line 864
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->updateStatus()V

    .line 865
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble;->prevClickedCell:Lcom/gp/netscramblefull/Cell;

    .line 867
    :cond_0
    return-void
.end method

.method hideSplashText()V
    .locals 4

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideInLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1168
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->animSlideOutLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1169
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->viewSwitcher:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1172
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->soundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->startRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1177
    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/BoardView;->surfaceStart()V

    goto :goto_0
.end method

.method makeSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$SoundMode;->NONE:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    if-ne v0, v1, :cond_0

    .line 1289
    :goto_0
    return-void

    .line 1285
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1286
    .local v2, "vol":F
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$SoundMode;->QUIET:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    if-ne v0, v1, :cond_1

    .line 1287
    const v2, 0x3e99999a    # 0.3f

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->soundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1106
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/NetScramble;->startActivity(Landroid/content/Intent;)V

    .line 1109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x400

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 138
    const-string v7, "netscramble"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onCreate(): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    if-nez p1, :cond_4

    const-string v9, "clean start"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0, p1}, Lorg/hermit/android/core/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v7, 0x7f06000a

    invoke-virtual {p0, v7}, Lcom/gp/netscramblefull/NetScramble;->setAboutInfo(I)V

    .line 145
    const v7, 0x7f060038

    invoke-virtual {p0, v7}, Lcom/gp/netscramblefull/NetScramble;->setHomeInfo(I)V

    .line 146
    const v7, 0x7f060037

    invoke-virtual {p0, v7}, Lcom/gp/netscramblefull/NetScramble;->setLicenseInfo(I)V

    .line 149
    const v7, 0x7f06000b

    const v8, 0x7f06000c

    .line 150
    const/high16 v9, 0x7f060000

    .line 149
    invoke-virtual {p0, v7, v8, v9}, Lcom/gp/netscramblefull/NetScramble;->createEulaBox(III)V

    .line 152
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->appResources:Landroid/content/res/Resources;

    .line 154
    new-instance v7, Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-direct {v7, p0}, Lcom/gp/netscramblefull/NetScramble$GameTimer;-><init>(Lcom/gp/netscramblefull/NetScramble;)V

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    .line 157
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 159
    invoke-virtual {p0, v12}, Lcom/gp/netscramblefull/NetScramble;->requestWindowFeature(I)Z

    .line 162
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/gp/netscramblefull/NetScramble;->setVolumeControlStream(I)V

    .line 176
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->createGui()Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->mainView:Landroid/view/ViewGroup;

    .line 177
    iget-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->mainView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Lcom/gp/netscramblefull/NetScramble;->setContentView(Landroid/view/View;)V

    .line 181
    invoke-static {v11}, Lcom/admogo/AdMogoTargeting;->setTestMode(Z)V

    .line 183
    new-instance v0, Lcom/admogo/AdMogoLayout;

    .line 184
    const-string v7, "eafeecf959994c9bb50b80f15f909014"

    .line 183
    invoke-direct {v0, p0, v7}, Lcom/admogo/AdMogoLayout;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 185
    .local v0, "adMogoLayoutCode":Lcom/admogo/AdMogoLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    const/4 v7, -0x1

    .line 187
    const/4 v8, -0x2

    .line 185
    invoke-direct {v1, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 190
    const/16 v7, 0x50

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/gp/netscramblefull/NetScramble;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {p0, v11}, Lcom/gp/netscramblefull/NetScramble;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-object v7, Lcom/gp/netscramblefull/NetScramble$SoundMode;->FULL:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    .line 200
    const-string v7, "soundMode"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "smode":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 202
    invoke-static {v5}, Lcom/gp/netscramblefull/NetScramble$SoundMode;->valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/NetScramble$SoundMode;

    move-result-object v7

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    .line 212
    :cond_0
    :goto_1
    const-string v7, "animEnable"

    invoke-interface {v2, v7, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/gp/netscramblefull/NetScramble;->animEnable:Z

    .line 213
    iget-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    iget-boolean v8, p0, Lcom/gp/netscramblefull/NetScramble;->animEnable:Z

    invoke-virtual {v7, v8}, Lcom/gp/netscramblefull/BoardView;->setAnimEnable(Z)V

    .line 216
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->createSoundPool()Landroid/media/SoundPool;

    move-result-object v7

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->soundPool:Landroid/media/SoundPool;

    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, "restored":Z
    if-eqz p1, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lcom/gp/netscramblefull/NetScramble;->restoreState(Landroid/os/Bundle;)Z

    move-result v3

    .line 225
    :cond_1
    if-nez v3, :cond_7

    .line 226
    iput-object v10, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 227
    const-string v7, "skillLevel"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "skill":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 229
    invoke-static {v4}, Lcom/gp/netscramblefull/BoardView$Skill;->valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/BoardView$Skill;

    move-result-object v7

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 230
    :cond_2
    iget-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    if-nez v7, :cond_3

    .line 231
    sget-object v7, Lcom/gp/netscramblefull/BoardView$Skill;->NOVICE:Lcom/gp/netscramblefull/BoardView$Skill;

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 232
    :cond_3
    sget-object v7, Lcom/gp/netscramblefull/NetScramble$State;->NEW:Lcom/gp/netscramblefull/NetScramble$State;

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    .line 238
    .end local v4    # "skill":Ljava/lang/String;
    :goto_2
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    .line 239
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v7

    const v8, 0x7f02004a

    invoke-virtual {v7, v8}, Lcom/waps/AppConnect;->setPushIcon(I)V

    .line 240
    return-void

    .line 139
    .end local v0    # "adMogoLayoutCode":Lcom/admogo/AdMogoLayout;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "restored":Z
    .end local v5    # "smode":Ljava/lang/String;
    :cond_4
    const-string v9, "restart"

    goto/16 :goto_0

    .line 204
    .restart local v0    # "adMogoLayoutCode":Lcom/admogo/AdMogoLayout;
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v5    # "smode":Ljava/lang/String;
    :cond_5
    const-string v7, "soundEnable"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "son":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 206
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/gp/netscramblefull/NetScramble$SoundMode;->FULL:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    :goto_3
    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->soundMode:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    goto :goto_1

    .line 207
    :cond_6
    sget-object v7, Lcom/gp/netscramblefull/NetScramble$SoundMode;->NONE:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    goto :goto_3

    .line 235
    .end local v6    # "son":Ljava/lang/String;
    .restart local v3    # "restored":Z
    :cond_7
    iget-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->restoredGameState:Lcom/gp/netscramblefull/NetScramble$State;

    .line 236
    sget-object v7, Lcom/gp/netscramblefull/NetScramble$State;->RESTORED:Lcom/gp/netscramblefull/NetScramble$State;

    iput-object v7, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    .line 690
    invoke-super {p0, p1}, Lorg/hermit/android/core/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 692
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 693
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 697
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->selectCurrentSkill()V

    .line 698
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->selectSoundMode()V

    .line 699
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->selectAnimEnable()V

    .line 701
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 484
    const-string v0, "netscramble"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waps/AppConnect;->finalize()V

    .line 486
    invoke-super {p0}, Lorg/hermit/android/core/MainActivity;->onDestroy()V

    .line 487
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 760
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 819
    :pswitch_0
    invoke-super {p0, p1}, Lorg/hermit/android/core/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 822
    :goto_0
    return v2

    .line 762
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    :goto_1
    move v2, v3

    .line 822
    goto :goto_0

    .line 765
    :pswitch_2
    sget-object v2, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-direct {p0, v2, v3}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    goto :goto_1

    .line 769
    :pswitch_3
    sget-object v2, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-direct {p0, v2, v4}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 770
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 771
    .local v1, "sIntent":Landroid/content/Intent;
    const-class v2, Lcom/gp/netscramblefull/ScoreList;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0, v1}, Lcom/gp/netscramblefull/NetScramble;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 776
    .end local v1    # "sIntent":Landroid/content/Intent;
    :pswitch_4
    sget-object v2, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-direct {p0, v2, v4}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 778
    .local v0, "hIntent":Landroid/content/Intent;
    const-class v2, Lcom/gp/netscramblefull/Help;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 779
    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/NetScramble;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 782
    .end local v0    # "hIntent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->showAbout()V

    goto :goto_1

    .line 785
    :pswitch_6
    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->NOVICE:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    goto :goto_1

    .line 788
    :pswitch_7
    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->NORMAL:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    goto :goto_1

    .line 791
    :pswitch_8
    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->EXPERT:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    goto :goto_1

    .line 794
    :pswitch_9
    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    goto :goto_1

    .line 797
    :pswitch_a
    sget-object v2, Lcom/gp/netscramblefull/BoardView$Skill;->INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    goto :goto_1

    .line 800
    :pswitch_b
    sget-object v2, Lcom/gp/netscramblefull/NetScramble$SoundMode;->NONE:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    invoke-direct {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->setSoundMode(Lcom/gp/netscramblefull/NetScramble$SoundMode;)V

    goto :goto_1

    .line 803
    :pswitch_c
    sget-object v2, Lcom/gp/netscramblefull/NetScramble$SoundMode;->QUIET:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    invoke-direct {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->setSoundMode(Lcom/gp/netscramblefull/NetScramble$SoundMode;)V

    goto :goto_1

    .line 806
    :pswitch_d
    sget-object v2, Lcom/gp/netscramblefull/NetScramble$SoundMode;->FULL:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    invoke-direct {p0, v2}, Lcom/gp/netscramblefull/NetScramble;->setSoundMode(Lcom/gp/netscramblefull/NetScramble$SoundMode;)V

    goto :goto_1

    .line 809
    :pswitch_e
    invoke-direct {p0, v4}, Lcom/gp/netscramblefull/NetScramble;->setAnimEnable(Z)V

    goto :goto_1

    .line 812
    :pswitch_f
    invoke-direct {p0, v3}, Lcom/gp/netscramblefull/NetScramble;->setAnimEnable(Z)V

    goto :goto_1

    .line 815
    :pswitch_10
    iput-boolean v3, p0, Lcom/gp/netscramblefull/NetScramble;->solverUsed:Z

    .line 816
    iget-object v2, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v2}, Lcom/gp/netscramblefull/BoardView;->autosolve()V

    goto :goto_1

    .line 760
    :pswitch_data_0
    .packed-switch 0x7f050020
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "netscramble"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-super {p0}, Lorg/hermit/android/core/MainActivity;->onPause()V

    .line 433
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/BoardView;->onPause()V

    .line 437
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    if-ne v0, v1, :cond_0

    .line 438
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 439
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "netscramble"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-super {p0}, Lorg/hermit/android/core/MainActivity;->onRestart()V

    .line 259
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    const-string v0, "netscramble"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0, p1}, Lorg/hermit/android/core/MainActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 301
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "netscramble"

    .line 319
    const-string v0, "netscramble"

    const-string v0, "onResume()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-super {p0}, Lorg/hermit/android/core/MainActivity;->onResume()V

    .line 324
    invoke-virtual {p0}, Lcom/gp/netscramblefull/NetScramble;->showFirstEula()V

    .line 327
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->statusMid:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    iget v1, v1, Lcom/gp/netscramblefull/BoardView$Skill;->label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->NEW:Lcom/gp/netscramblefull/NetScramble$State;

    if-ne v0, v1, :cond_1

    .line 332
    const-string v0, "netscramble"

    const-string v0, "onResume() NEW: init"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$State;->INIT:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-direct {p0, v0, v3}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 352
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/BoardView;->onResume()V

    .line 353
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RESTORED:Lcom/gp/netscramblefull/NetScramble$State;

    if-ne v0, v1, :cond_2

    .line 335
    const-string v0, "netscramble"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume() RESTORED: set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->restoredGameState:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->restoredGameState:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-direct {p0, v0, v3}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 340
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->restoredGameState:Lcom/gp/netscramblefull/NetScramble$State;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->ABORTED:Lcom/gp/netscramblefull/NetScramble$State;

    if-ne v0, v1, :cond_0

    .line 341
    const-string v0, "netscramble"

    const-string v0, "onResume() RESTORED ABORTED: start"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gp/netscramblefull/NetScramble;->startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    if-ne v0, v1, :cond_3

    .line 346
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-direct {p0, v0, v3}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    goto :goto_0

    .line 348
    :cond_3
    const-string v0, "netscramble"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume() !!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->gameState:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!: init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 387
    const-string v0, "netscramble"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-super {p0, p1}, Lorg/hermit/android/core/MainActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 392
    invoke-direct {p0, p1}, Lcom/gp/netscramblefull/NetScramble;->saveState(Landroid/os/Bundle;)V

    .line 393
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "netscramble"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0}, Lorg/hermit/android/core/MainActivity;->onStart()V

    .line 274
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/BoardView;->onStart()V

    .line 275
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 455
    const-string v0, "netscramble"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-super {p0}, Lorg/hermit/android/core/MainActivity;->onStop()V

    .line 458
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->boardView:Lcom/gp/netscramblefull/BoardView;

    invoke-virtual {v0}, Lcom/gp/netscramblefull/BoardView;->onStop()V

    .line 459
    return-void
.end method

.method postSound(Lcom/gp/netscramblefull/NetScramble$Sound;)V
    .locals 2
    .param p1, "which"    # Lcom/gp/netscramblefull/NetScramble$Sound;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->soundHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/gp/netscramblefull/NetScramble$Sound;->access$2(Lcom/gp/netscramblefull/NetScramble$Sound;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1266
    return-void
.end method

.method postState(Lcom/gp/netscramblefull/NetScramble$State;)V
    .locals 2
    .param p1, "which"    # Lcom/gp/netscramblefull/NetScramble$State;

    .prologue
    .line 955
    iget-object v0, p0, Lcom/gp/netscramblefull/NetScramble;->stateHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/gp/netscramblefull/NetScramble$State;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 956
    return-void
.end method

.method selectAutosolveMode(Z)V
    .locals 3
    .param p1, "solving"    # Z

    .prologue
    .line 735
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/gp/netscramblefull/NetScramble;->mainMenu:Landroid/view/Menu;

    const v2, 0x7f05002a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 737
    .local v0, "solveItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 738
    if-eqz p1, :cond_1

    .line 739
    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 740
    const v1, 0x7f06002a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 747
    .end local v0    # "solveItem":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 742
    .restart local v0    # "solveItem":Landroid/view/MenuItem;
    :cond_1
    const v1, 0x7f020030

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 743
    const v1, 0x7f060029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public startGame(Lcom/gp/netscramblefull/BoardView$Skill;)V
    .locals 7
    .param p1, "sk"    # Lcom/gp/netscramblefull/BoardView$Skill;

    .prologue
    const/4 v5, 0x0

    .line 903
    sget-object v4, Lcom/gp/netscramblefull/NetScramble$State;->ABORTED:Lcom/gp/netscramblefull/NetScramble$State;

    invoke-direct {p0, v4, v5}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    .line 907
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 908
    .local v3, "prevSkill":Lcom/gp/netscramblefull/BoardView$Skill;
    if-eqz p1, :cond_1

    move-object v4, p1

    :goto_0
    iput-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    .line 911
    invoke-virtual {p0, v5}, Lcom/gp/netscramblefull/NetScramble;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 912
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 913
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "skillLevel"

    iget-object v5, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v5}, Lcom/gp/netscramblefull/BoardView$Skill;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 914
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 917
    invoke-direct {p0}, Lcom/gp/netscramblefull/NetScramble;->selectCurrentSkill()V

    .line 918
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->statusMid:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    iget v5, v5, Lcom/gp/netscramblefull/BoardView$Skill;->label:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 921
    const-string v4, "netscramble"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startGame: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v1, 0x0

    .line 926
    .local v1, "msg":I
    sget-object v4, Lcom/gp/netscramblefull/BoardView$Skill;->INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

    if-eq v3, v4, :cond_0

    .line 927
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    sget-object v5, Lcom/gp/netscramblefull/BoardView$Skill;->INSANE:Lcom/gp/netscramblefull/BoardView$Skill;

    if-ne v4, v5, :cond_2

    .line 928
    const v1, 0x7f060009

    .line 937
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 938
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 939
    const v5, 0x7f060022

    iget-object v6, p0, Lcom/gp/netscramblefull/NetScramble;->startGameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 938
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 939
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 942
    :goto_2
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "msg":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    move-object v4, v3

    .line 908
    goto :goto_0

    .line 929
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "msg":I
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->gameSkill:Lcom/gp/netscramblefull/BoardView$Skill;

    sget-object v5, Lcom/gp/netscramblefull/BoardView$Skill;->MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

    if-ne v4, v5, :cond_0

    .line 930
    sget-object v4, Lcom/gp/netscramblefull/BoardView$Skill;->MASTER:Lcom/gp/netscramblefull/BoardView$Skill;

    if-eq v3, v4, :cond_0

    .line 931
    const v1, 0x7f060008

    goto :goto_1

    .line 941
    :cond_3
    sget-object v4, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/gp/netscramblefull/NetScramble;->setState(Lcom/gp/netscramblefull/NetScramble$State;Z)V

    goto :goto_2
.end method

.method updateStatus()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1123
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->clicksText:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1124
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->clicksText:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    div-int/lit8 v4, v4, 0x64

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1125
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->clicksText:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1126
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->clicksText:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/gp/netscramblefull/NetScramble;->clickCount:I

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v9, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1127
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->statusLeft:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->clicksText:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1130
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->gameTimer:Lcom/gp/netscramblefull/NetScramble$GameTimer;

    invoke-virtual {v3}, Lcom/gp/netscramblefull/NetScramble$GameTimer;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 1131
    .local v2, "time":I
    div-int/lit8 v0, v2, 0x3c

    .line 1132
    .local v0, "min":I
    rem-int/lit8 v1, v2, 0x3c

    .line 1133
    .local v1, "sec":I
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    div-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1134
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    rem-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1135
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v9, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1136
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v10, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1137
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1138
    iget-object v3, p0, Lcom/gp/netscramblefull/NetScramble;->statusRight:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/gp/netscramblefull/NetScramble;->timeText:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    return-void
.end method
