.class public Lcom/ad_stir/common/Dip;
.super Ljava/lang/Object;
.source "Dip.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPx(Landroid/app/Activity;I)I
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "value"    # I

    .prologue
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 10
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method public static pxToDip(Landroid/app/Activity;I)I
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "value"    # I

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 15
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
