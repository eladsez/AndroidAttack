.class Landroid/support/v7/app/MediaRouteVolumeSlider;
.super Landroid/support/v7/widget/x;


# instance fields
.field private final a:F

.field private b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/support/v7/app/l;->a(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->a:F

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/support/v7/widget/x;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->c:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->d:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->d:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->c:Landroid/graphics/drawable/Drawable;

    iget-boolean p1, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteVolumeSlider;->c:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/x;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
