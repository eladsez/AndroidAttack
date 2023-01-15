.class Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/Adlantis/Android/AdlantisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdlantisAdView"
.end annotation


# static fields
.field private static final BANNER_ALTTEXT_VIEW:I = 0x1

.field private static final BANNER_IMAGE_VIEW:I = 0x0

.field private static final BANNER_VIEW:I = 0x0

.field private static final TEXTAD_VIEW:I = 0x1


# instance fields
.field private _ad:Ljp/Adlantis/Android/AdlantisAd;

.field private _adAltText:Landroid/widget/TextView;

.field private _adBanner:Landroid/widget/ImageView;

.field private _adBannerViewFlipper:Landroid/widget/ViewFlipper;

.field private _adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

.field private _adtextIconView:Landroid/widget/ImageView;

.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisView;


# direct methods
.method public constructor <init>(Ljp/Adlantis/Android/AdlantisView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->commonInitLayout()V

    return-void
.end method

.method public constructor <init>(Ljp/Adlantis/Android/AdlantisView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0, p2, p3}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->commonInitLayout()V

    return-void
.end method

.method static synthetic access$400(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setBannerDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic access$500(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private commonInitLayout()V
    .locals 10

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v8, -0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v0, Ljp/Adlantis/Android/AdlantisViewFlipper;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/Adlantis/Android/AdlantisViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v7, v1}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$000(Ljp/Adlantis/Android/AdlantisView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$100(Ljp/Adlantis/Android/AdlantisView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBanner:Landroid/widget/ImageView;

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBanner:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBanner:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adAltText:Landroid/widget/TextView;

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adAltText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adAltText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adAltText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adAltText:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v5, v1}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->displayDensity()F

    move-result v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtextIconView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtextIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;-><init>(Ljp/Adlantis/Android/AdlantisView;Landroid/content/Context;)V

    iput-object v2, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x42280000    # 42.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    invoke-virtual {v3, v9}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setTextSize(F)V

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    invoke-virtual {v3, v6}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setTextColor(I)V

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    invoke-virtual {v3, v5}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setLines(I)V

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    invoke-virtual {v3, v5}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setMaxLines(I)V

    iget-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const-string v1, "Ads by AdLantis"

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private displayDensity()F
    .locals 1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisUtils;->displayDensity(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private setBannerDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBanner:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBanner:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBanner:Landroid/widget/ImageView;

    if-eq v1, v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method private setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtextIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtextIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setAdByIndex(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisView;->access$200(Ljp/Adlantis/Android/AdlantisView;)[Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v1, v0

    if-eqz v1, :cond_0

    if-lt p1, v1, :cond_5

    move v2, v5

    :goto_1
    aget-object v3, v0, v2

    iget-object v4, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v4}, Ljp/Adlantis/Android/AdlantisView;->access$300(Ljp/Adlantis/Android/AdlantisView;)Ljp/Adlantis/Android/AdManager;

    move-result-object v4

    iput v2, v4, Ljp/Adlantis/Android/AdManager;->adIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int v1, v2, v1

    aget-object v0, v0, v1

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisAd;->viewingEnded()V

    :cond_2
    iput-object v3, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisAd;->viewingStarted()V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdlantisAd;->adType()I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-virtual {p0, v5}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setDisplayedChild(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adAltText:Landroid/widget/TextView;

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v2, p0}, Ljp/Adlantis/Android/AdlantisAd;->altTextString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$300(Ljp/Adlantis/Android/AdlantisView;)Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdManager;->asyncImageLoader()Ljp/Adlantis/Android/AsyncImageLoader;

    move-result-object v1

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v2, p0}, Ljp/Adlantis/Android/AdlantisAd;->bannerURLForCurrentOrientation(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$1;

    invoke-direct {v3, p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$1;-><init>(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;)V

    invoke-virtual {v1, v2, v3}, Ljp/Adlantis/Android/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setBannerDrawable(Landroid/graphics/drawable/Drawable;Z)V

    if-nez v1, :cond_3

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adAltText:Landroid/widget/TextView;

    if-eq v2, v1, :cond_3

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adBannerViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_3
    :goto_2
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$300(Ljp/Adlantis/Android/AdlantisView;)Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdManager;->asyncImageLoader()Ljp/Adlantis/Android/AsyncImageLoader;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljp/Adlantis/Android/AdlantisAd;->imageURL(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljp/Adlantis/Android/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v6}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setDisplayedChild(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-static {v1}, Ljp/Adlantis/Android/AdlantisView;->access$300(Ljp/Adlantis/Android/AdlantisView;)Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdManager;->asyncImageLoader()Ljp/Adlantis/Android/AsyncImageLoader;

    move-result-object v1

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v2, p0}, Ljp/Adlantis/Android/AdlantisAd;->iconURL(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$2;

    invoke-direct {v3, p0}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$2;-><init>(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;)V

    invoke-virtual {v1, v2, v3}, Ljp/Adlantis/Android/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_adtext:Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->_ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v2}, Ljp/Adlantis/Android/AdlantisAd;->textAdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setTextAndSize(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v2, p1

    goto/16 :goto_1
.end method
