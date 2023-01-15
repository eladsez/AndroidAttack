.class public Ljp/Adlantis/Android/AdlantisView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/Adlantis/Android/AdlantisView$8;,
        Ljp/Adlantis/Android/AdlantisView$AnimationType;,
        Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;,
        Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;
    }
.end annotation


# static fields
.field private static _defaultBackgroundColor:I = 0x0

.field static final touchHighlightAnimationDuration:I = 0x96


# instance fields
.field private _adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

.field private _buttonPressed:Z

.field private _currentAdIndex:I

.field private _doDeferredAdSetup:Z

.field private _handler:Landroid/os/Handler;

.field private _handlingUserEvent:Z

.field private _idNotSpecifiedWarningInterval:J

.field private _layoutComplete:Z

.field private _previousAdCount:I

.field private _processIndicator:Landroid/widget/ProgressBar;

.field private _rootViewFlipper:Landroid/widget/ViewFlipper;

.field private _touchHighlight:Landroid/view/View;

.field public animationDuration:I

.field private mRotateAdTask:Ljava/lang/Runnable;

.field private mUpdateAdsTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x38000000    # -131072.0f

    sput v0, Ljp/Adlantis/Android/AdlantisView;->_defaultBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Ljp/Adlantis/Android/AdlantisView;->_idNotSpecifiedWarningInterval:J

    iput v2, p0, Ljp/Adlantis/Android/AdlantisView;->_previousAdCount:I

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$1;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisView$1;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->mRotateAdTask:Ljava/lang/Runnable;

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$2;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisView$2;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->mUpdateAdsTask:Ljava/lang/Runnable;

    const/16 v0, 0x1f4

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->commonInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Ljp/Adlantis/Android/AdlantisView;->_idNotSpecifiedWarningInterval:J

    iput v2, p0, Ljp/Adlantis/Android/AdlantisView;->_previousAdCount:I

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$1;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisView$1;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->mRotateAdTask:Ljava/lang/Runnable;

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$2;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisView$2;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->mUpdateAdsTask:Ljava/lang/Runnable;

    const/16 v0, 0x1f4

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    const-string v0, "http://schemas.android.com/apk/res/jp.Adlantis.Android"

    const-string v1, "publisherID"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->setPublisherID(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->commonInit()V

    return-void
.end method

.method static synthetic access$000(Ljp/Adlantis/Android/AdlantisView;)Landroid/view/animation/Animation;
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljp/Adlantis/Android/AdlantisView;)Landroid/view/animation/Animation;
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljp/Adlantis/Android/AdlantisView;)I
    .locals 1

    iget v0, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    return v0
.end method

.method static synthetic access$1002(Ljp/Adlantis/Android/AdlantisView;I)I
    .locals 0

    iput p1, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    return p1
.end method

.method static synthetic access$1100(Ljp/Adlantis/Android/AdlantisView;)Z
    .locals 1

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisView;->_layoutComplete:Z

    return v0
.end method

.method static synthetic access$1202(Ljp/Adlantis/Android/AdlantisView;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisView;->_doDeferredAdSetup:Z

    return p1
.end method

.method static synthetic access$1300(Ljp/Adlantis/Android/AdlantisView;)V
    .locals 0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->startTimers()V

    return-void
.end method

.method static synthetic access$1400(Ljp/Adlantis/Android/AdlantisView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1502(Ljp/Adlantis/Android/AdlantisView;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisView;->_handlingUserEvent:Z

    return p1
.end method

.method static synthetic access$1600(Ljp/Adlantis/Android/AdlantisView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Ljp/Adlantis/Android/AdlantisView;)[Ljp/Adlantis/Android/AdlantisAd;
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adsForCurrentOrientation()[Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljp/Adlantis/Android/AdlantisView;)Ljp/Adlantis/Android/AdManager;
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljp/Adlantis/Android/AdlantisView;)J
    .locals 2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adDisplayInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Ljp/Adlantis/Android/AdlantisView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Ljp/Adlantis/Android/AdlantisView;)I
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljp/Adlantis/Android/AdlantisView;)V
    .locals 0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountChanged()V

    return-void
.end method

.method private adCountChanged()V
    .locals 3

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_2

    if-lez v0, :cond_1

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->_previousAdCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    iput v0, p0, Ljp/Adlantis/Android/AdlantisView;->_previousAdCount:I

    return-void

    :cond_1
    if-nez v0, :cond_0

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->_previousAdCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v1, "AdlantisView"

    const-string v2, "adCountChanged called when _rootViewFlipper is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private adCountForCurrentOrientation()I
    .locals 2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->orientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/Adlantis/Android/AdManager;->adCountForOrientation(I)I

    move-result v0

    return v0
.end method

.method private adDisplayInterval()J
    .locals 2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    iget-wide v0, v0, Ljp/Adlantis/Android/AdManager;->adDisplayInterval:J

    return-wide v0
.end method

.method private adFetchInterval()J
    .locals 2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    iget-wide v0, v0, Ljp/Adlantis/Android/AdManager;->adFetchInterval:J

    return-wide v0
.end method

.method private adManager()Ljp/Adlantis/Android/AdManager;
    .locals 1

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->getInstance()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    return-object v0
.end method

.method private adsForCurrentOrientation()[Ljp/Adlantis/Android/AdlantisAd;
    .locals 2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->orientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/Adlantis/Android/AdManager;->adsForOrientation(I)[Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    return-object v0
.end method

.method private commonInit()V
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->setupLayout()V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdManager;->getPublisherID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->packagePublisherID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->isGreeSdk()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Ljp/Adlantis/Android/AdlantisView;->setGapPublisherID(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->startTimers()V

    :cond_1
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager;->getPublisherID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$3;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisView$3;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-wide v2, p0, Ljp/Adlantis/Android/AdlantisView;->_idNotSpecifiedWarningInterval:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v1}, Ljp/Adlantis/Android/AdlantisView;->setPublisherID(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v1

    if-lez v1, :cond_5

    iput-boolean v2, p0, Ljp/Adlantis/Android/AdlantisView;->_doDeferredAdSetup:Z

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->connect()V

    goto :goto_0
.end method

.method private currentAd()Ljp/Adlantis/Android/AdlantisAd;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adsForCurrentOrientation()[Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    iget v2, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget v0, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    aget-object v0, v1, v0

    :cond_0
    return-object v0
.end method

.method private fadeInAnimation()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method private fadeOutAnimation()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method private handleUserTouchUp()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->currentAd()Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ljp/Adlantis/Android/AdlantisView;->_handlingUserEvent:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/Adlantis/Android/AdlantisView;->_handlingUserEvent:Z

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisAd;->sendImpressionCount()V

    invoke-virtual {v0, p0}, Ljp/Adlantis/Android/AdlantisAd;->expandedContentImageURLForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->showExpandedAd()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisAd;->tapUrlString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisAd;->tapUrlString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljp/Adlantis/Android/AdlantisView$5;

    invoke-direct {v2, p0}, Ljp/Adlantis/Android/AdlantisView$5;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    invoke-virtual {v1, v0, v2}, Ljp/Adlantis/Android/AdManager;->handleClickRequest(Ljava/lang/String;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Ljp/Adlantis/Android/AdlantisView;->_handlingUserEvent:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private inFromLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method private inView(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v4, v0, v5

    if-ltz v4, :cond_1

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    cmpl-float v0, v1, v5

    if-ltz v0, :cond_1

    cmpg-float v0, v1, v2

    if-gtz v0, :cond_1

    move v0, v7

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method private orientation()I
    .locals 1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method private outToRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method private packagePublisherID()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager;->getTestAdRequestUrls()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "Adlantis_adRequestUrl"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljp/Adlantis/Android/AdManager;->setTestAdRequestUrls([Ljava/lang/String;)V

    :cond_0
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "Adlantis_keywords"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljp/Adlantis/Android/AdManager;->setKeywords(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "Adlantis_host"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljp/Adlantis/Android/AdManager;->setHost(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->getInstance()Ljp/Adlantis/Android/AdManager;

    move-result-object v2

    invoke-virtual {v2}, Ljp/Adlantis/Android/AdManager;->publisherIDMetadataKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AdlantisView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commonInit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private publisherIDChanged()V
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager;->getPublisherID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->connect()V

    :cond_0
    return-void
.end method

.method private setButtonState(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisView;->_buttonPressed:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->touchFadeIn()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->setPressed(Z)V

    :goto_0
    iput-boolean p1, p0, Ljp/Adlantis/Android/AdlantisView;->_buttonPressed:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->touchFadeOut()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Ljp/Adlantis/Android/AdlantisView;->setPressed(Z)V

    goto :goto_0
.end method

.method private setupLayout()V
    .locals 10

    const/4 v9, -0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v6}, Ljp/Adlantis/Android/AdlantisView;->setClickable(Z)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->orientation()I

    move-result v1

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisUtils;->adSizeForOrientation(I)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Ljp/Adlantis/Android/AdlantisViewFlipper;

    invoke-direct {v2, v0}, Ljp/Adlantis/Android/AdlantisViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    sget v3, Ljp/Adlantis/Android/AdlantisView;->_defaultBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setBackgroundColor(I)V

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljp/Adlantis/Android/AdlantisUtils;->displayDensity(Landroid/content/Context;)F

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v8}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v1, v3}, Ljp/Adlantis/Android/AdlantisView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    iput-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    new-instance v2, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    invoke-direct {v2, p0, v0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;-><init>(Ljp/Adlantis/Android/AdlantisView;Landroid/content/Context;)V

    aput-object v2, v1, v7

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    new-instance v2, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    invoke-direct {v2, p0, v0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;-><init>(Ljp/Adlantis/Android/AdlantisView;Landroid/content/Context;)V

    aput-object v2, v1, v6

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    aget-object v1, v1, v7

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    aget-object v1, v1, v6

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    const v2, 0x66ffffff

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_touchHighlight:Landroid/view/View;

    invoke-virtual {p0, v1}, Ljp/Adlantis/Android/AdlantisView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->addView(Landroid/view/View;)V

    iput-boolean v6, p0, Ljp/Adlantis/Android/AdlantisView;->_layoutComplete:Z

    sget-object v0, Ljp/Adlantis/Android/AdlantisView$AnimationType;->FADE:Ljp/Adlantis/Android/AdlantisView$AnimationType;

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->setAnimationType(Ljp/Adlantis/Android/AdlantisView$AnimationType;)V

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdlantisView;->_doDeferredAdSetup:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    iget v0, v0, Ljp/Adlantis/Android/AdManager;->adIndex:I

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->setAdByIndex(I)V

    :cond_1
    return-void
.end method

.method private showExpandedAd()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "jp.Adlantis.Android.AdlantisAd"

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->currentAd()Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-class v2, Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to display expanded ad, perhaps jp.Adlantis.Android.AdlantisAdActivity is not in the manifest file?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v2, Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startTimers()V
    .locals 4

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->mRotateAdTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->mRotateAdTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adDisplayInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->mUpdateAdsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->mUpdateAdsTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopTimers()V
    .locals 2

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->mRotateAdTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->mUpdateAdsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearAds()V
    .locals 2

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->mRotateAdTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager;->clearAds()V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountChanged()V

    return-void
.end method

.method public connect()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView;->_previousAdCount:I

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v0

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView;->_previousAdCount:I

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager;->getPublisherID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AdlantisView"

    const-string v1, "AdlantisView.connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljp/Adlantis/Android/AdlantisView$4;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisView$4;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljp/Adlantis/Android/AdManager;->connect(Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdlantisView"

    const-string v1, "AdlantisView: can\'t connect because publisherID hasn\'t been set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljp/Adlantis/Android/AdManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->startTimers()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->stopTimers()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->currentAd()Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->stopTimers()V

    invoke-direct {p0, v2}, Ljp/Adlantis/Android/AdlantisView;->setButtonState(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisView;->inView(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->setButtonState(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1}, Ljp/Adlantis/Android/AdlantisView;->setButtonState(Z)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->startTimers()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v1}, Ljp/Adlantis/Android/AdlantisView;->setButtonState(Z)V

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisView;->inView(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->handleUserTouchUp()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->startTimers()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->setButtonState(Z)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->stopTimers()V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_processIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->startTimers()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendConversionTag(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljp/Adlantis/Android/AdManager;->sendConversionTag(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setAdByIndex(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    if-lt p1, v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    :goto_2
    invoke-virtual {v1, v0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setAdByIndex(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView;->_adViews:[Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    aget-object v1, v1, v3

    goto :goto_2

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setAnimationType(Ljp/Adlantis/Android/AdlantisView$AnimationType;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljp/Adlantis/Android/AdlantisView$8;->$SwitchMap$jp$Adlantis$Android$AdlantisView$AnimationType:[I

    invoke-virtual {p1}, Ljp/Adlantis/Android/AdlantisView$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView;->_rootViewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setGapPublisherID(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/Adlantis/Android/AdManager;->setGapPublisherID(Ljava/lang/String;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->publisherIDChanged()V

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/Adlantis/Android/AdManager;->setKeywords(Ljava/lang/String;)V

    return-void
.end method

.method public setPublisherID(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adManager()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/Adlantis/Android/AdManager;->setPublisherID(Ljava/lang/String;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->publisherIDChanged()V

    return-void
.end method

.method public showNextAd()V
    .locals 2

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->adCountForCurrentOrientation()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int v0, v1, v0

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    iget v0, p0, Ljp/Adlantis/Android/AdlantisView;->_currentAdIndex:I

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView;->setAdByIndex(I)V

    :cond_0
    return-void
.end method

.method touchFadeIn()Landroid/view/animation/Animation;
    .locals 3

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Ljp/Adlantis/Android/AdlantisView$6;

    invoke-direct {v1, p0}, Ljp/Adlantis/Android/AdlantisView$6;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method touchFadeOut()Landroid/view/animation/Animation;
    .locals 3

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView;->fadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Ljp/Adlantis/Android/AdlantisView$7;

    invoke-direct {v1, p0}, Ljp/Adlantis/Android/AdlantisView$7;-><init>(Ljp/Adlantis/Android/AdlantisView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method
