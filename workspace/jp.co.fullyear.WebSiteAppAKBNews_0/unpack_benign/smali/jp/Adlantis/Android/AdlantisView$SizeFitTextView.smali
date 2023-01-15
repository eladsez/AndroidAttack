.class Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/Adlantis/Android/AdlantisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeFitTextView"
.end annotation


# instance fields
.field private _maxTextSize:F

.field private _minTextSize:F

.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisView;


# direct methods
.method public constructor <init>(Ljp/Adlantis/Android/AdlantisView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->this$0:Ljp/Adlantis/Android/AdlantisView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->_minTextSize:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->_maxTextSize:F

    return-void
.end method

.method private refitText(Ljava/lang/String;I)V
    .locals 5

    if-lez p2, :cond_0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->_maxTextSize:F

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    :goto_0
    iget v3, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->_minTextSize:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    iget v3, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->_minTextSize:F

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v0, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->_minTextSize:F

    :goto_1
    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setTextSize(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setTextSize(F)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    if-eq p1, p3, :cond_0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->refitText(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setTextAndSize(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->_maxTextSize:F

    invoke-virtual {p0, v0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->setTextSize(F)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljp/Adlantis/Android/AdlantisView$SizeFitTextView;->refitText(Ljava/lang/String;I)V

    return-void
.end method
