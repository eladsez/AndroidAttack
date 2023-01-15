.class public Ljp/Adlantis/Android/AdlantisAdActivity;
.super Landroid/app/Activity;


# instance fields
.field private ad:Ljp/Adlantis/Android/AdlantisAd;

.field private cancelButton:Landroid/widget/Button;

.field private closeBoxButton:Landroid/widget/ImageView;

.field private contentView:Landroid/widget/RelativeLayout;

.field private expandedAdImageView:Ljp/Adlantis/Android/ExpandedAdImageView;

.field private processingIndicator:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljp/Adlantis/Android/AdlantisAdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->imageViewDrawableLayoutChanged()V

    return-void
.end method

.method static synthetic access$100(Ljp/Adlantis/Android/AdlantisAdActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->processingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Ljp/Adlantis/Android/AdlantisAdActivity;)Ljp/Adlantis/Android/AdlantisAd;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    return-object v0
.end method

.method static synthetic access$300(Ljp/Adlantis/Android/AdlantisAdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->cleanUpAdActivity()V

    return-void
.end method

.method static synthetic access$400(Ljp/Adlantis/Android/AdlantisAdActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAdActivity;->setExpandedAdImageViewDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$500(Ljp/Adlantis/Android/AdlantisAdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->shiftCloseBoxPosition()V

    return-void
.end method

.method private adlantisAdFromBundle(Landroid/os/Bundle;)Ljp/Adlantis/Android/AdlantisAd;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "jp.Adlantis.Android.AdlantisAd"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v1, p0, Ljp/Adlantis/Android/AdlantisAd;

    if-eqz v1, :cond_1

    check-cast p0, Ljp/Adlantis/Android/AdlantisAd;

    move-object v0, p0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/util/HashMap;

    new-instance v0, Ljp/Adlantis/Android/AdlantisAd;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdlantisAd;-><init>(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private cleanUpAdActivity()V
    .locals 0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->finish()V

    return-void
.end method

.method private closeBoxDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Ljp/Adlantis/Android/AdlantisUtils;->hasHighResolutionDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljp/Adlantis/Android/AdlantisImages;->closeBoxHighResDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljp/Adlantis/Android/AdlantisImages;->closeBoxDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private imageViewDrawableChanged()V
    .locals 4

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->expandedAdImageView:Ljp/Adlantis/Android/ExpandedAdImageView;

    invoke-virtual {v0}, Ljp/Adlantis/Android/ExpandedAdImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljp/Adlantis/Android/AdlantisAdActivity$6;

    invoke-direct {v1, p0}, Ljp/Adlantis/Android/AdlantisAdActivity$6;-><init>(Ljp/Adlantis/Android/AdlantisAdActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private imageViewDrawableLayoutChanged()V
    .locals 0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->imageViewDrawableChanged()V

    return-void
.end method

.method private initCloseBoxButton()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v0, "AdlantisAdActivity"

    const-string v1, "initCloseBoxButton called more than once"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdlantisAdActivity"

    const-string v1, "initCloseBoxButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Ljp/Adlantis/Android/AdlantisImages;->closeBoxRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, Ljp/Adlantis/Android/AdlantisUtils;->displayDensity(Landroid/content/Context;)F

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    new-instance v1, Ljp/Adlantis/Android/AdlantisAdActivity$5;

    invoke-direct {v1, p0}, Ljp/Adlantis/Android/AdlantisAdActivity$5;-><init>(Ljp/Adlantis/Android/AdlantisAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setExpandedAdImageViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->expandedAdImageView:Ljp/Adlantis/Android/ExpandedAdImageView;

    invoke-virtual {v0, p1}, Ljp/Adlantis/Android/ExpandedAdImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->imageViewDrawableChanged()V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->processingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private shiftCloseBoxPosition()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->expandedAdImageView:Ljp/Adlantis/Android/ExpandedAdImageView;

    invoke-virtual {v0}, Ljp/Adlantis/Android/ExpandedAdImageView;->imageBounds()Landroid/graphics/Rect;

    move-result-object v1

    const-string v0, "AdlantisAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v2, "AdlantisAdActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting margins to left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->closeBoxButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x65

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    const v1, -0xc0aa99

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisAdActivity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Ljp/Adlantis/Android/AdlantisUtils;->displayDensity(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-virtual {v2, v5, v5, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "Ads by AdLantis"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v7, v0, v7, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljp/Adlantis/Android/AdlantisAdActivity$1;

    invoke-direct {v0, p0, p0}, Ljp/Adlantis/Android/AdlantisAdActivity$1;-><init>(Ljp/Adlantis/Android/AdlantisAdActivity;Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->expandedAdImageView:Ljp/Adlantis/Android/ExpandedAdImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->expandedAdImageView:Ljp/Adlantis/Android/ExpandedAdImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->expandedAdImageView:Ljp/Adlantis/Android/ExpandedAdImageView;

    new-instance v1, Ljp/Adlantis/Android/AdlantisAdActivity$2;

    invoke-direct {v1, p0}, Ljp/Adlantis/Android/AdlantisAdActivity$2;-><init>(Ljp/Adlantis/Android/AdlantisAdActivity;)V

    invoke-virtual {v0, v1}, Ljp/Adlantis/Android/ExpandedAdImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->processingIndicator:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->processingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->processingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->processingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->processingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->cancelButton:Landroid/widget/Button;

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->cancelButton:Landroid/widget/Button;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->cancelButton:Landroid/widget/Button;

    new-instance v1, Ljp/Adlantis/Android/AdlantisAdActivity$3;

    invoke-direct {v1, p0}, Ljp/Adlantis/Android/AdlantisAdActivity$3;-><init>(Ljp/Adlantis/Android/AdlantisAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdlantisAdActivity;->adlantisAdFromBundle(Landroid/os/Bundle;)Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v1

    iput-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    :cond_0
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp/Adlantis/Android/AdlantisAdActivity;->adlantisAdFromBundle(Landroid/os/Bundle;)Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v1

    iput-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    :cond_1
    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    if-eqz v1, :cond_2

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    iget-object v1, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljp/Adlantis/Android/AdlantisAd;->expandedContentImageURLForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->getInstance()Ljp/Adlantis/Android/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdManager;->asyncImageLoader()Ljp/Adlantis/Android/AsyncImageLoader;

    move-result-object v1

    new-instance v2, Ljp/Adlantis/Android/AdlantisAdActivity$4;

    invoke-direct {v2, p0}, Ljp/Adlantis/Android/AdlantisAdActivity$4;-><init>(Ljp/Adlantis/Android/AdlantisAdActivity;)V

    invoke-virtual {v1, v0, v2}, Ljp/Adlantis/Android/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdlantisAdActivity;->setExpandedAdImageViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0}, Ljp/Adlantis/Android/AdlantisAdActivity;->initCloseBoxButton()V

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity;->ad:Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdlantisAd;->sendCountExpandedAdOpened()V

    :cond_4
    return-void
.end method
