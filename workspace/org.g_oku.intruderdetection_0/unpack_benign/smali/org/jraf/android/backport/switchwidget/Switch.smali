.class public Lorg/jraf/android/backport/switchwidget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private final mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private final mSwitchMinWidth:I

.field private final mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private final mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private final mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private final mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lorg/jraf/android/backport/switchwidget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jraf/android/backport/switchwidget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    sget v0, Lorg/jraf/android/backport/switchwidget/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/jraf/android/backport/switchwidget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 101
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 137
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 138
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 139
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 143
    sget-object v4, Lorg/jraf/android/backport/switchwidget/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 148
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 149
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbTextPadding:I

    .line 150
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchMinWidth:I

    .line 151
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchPadding:I

    .line 153
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 154
    .local v1, "appearance":I
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0, p1, v1}, Lorg/jraf/android/backport/switchwidget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 160
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchSlop:I

    .line 161
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mMinFlingVelocity:I

    .line 164
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->refreshDrawableState()V

    .line 165
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jraf/android/backport/switchwidget/Switch;->setChecked(Z)V

    .line 166
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/Switch;->setChecked(Z)V

    .line 476
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 438
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 439
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 440
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 441
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 442
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0

    .line 580
    :cond_0
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 581
    iget v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchWidth:I

    iget v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 357
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 358
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchTop:I

    iget v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 359
    .local v3, "thumbTop":I
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchLeft:I

    iget v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 360
    .local v1, "thumbLeft":I
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 361
    .local v2, "thumbRight":I
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchBottom:I

    iget v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 362
    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 350
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 220
    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/jraf/android/backport/switchwidget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 221
    return-void

    .line 208
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 209
    goto :goto_0

    .line 212
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 213
    goto :goto_0

    .line 216
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 450
    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchMode:I

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 454
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lorg/jraf/android/backport/switchwidget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 456
    if-eqz v0, :cond_3

    .line 458
    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 459
    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 460
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 461
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 465
    .local v1, "newState":Z
    :goto_1
    invoke-direct {p0, v1}, Lorg/jraf/android/backport/switchwidget/Switch;->animateThumbToCheckedState(Z)V

    .line 469
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :goto_2
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v4

    .line 452
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v4

    .line 461
    goto :goto_1

    .line 463
    :cond_2
    invoke-direct {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 467
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lorg/jraf/android/backport/switchwidget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 595
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 597
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 601
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 602
    :cond_0
    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 604
    :cond_1
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->invalidate()V

    .line 605
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 569
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 570
    .local v0, "padding":I
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    iget v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 573
    :cond_0
    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 586
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 587
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    sget-object v1, Lorg/jraf/android/backport/switchwidget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lorg/jraf/android/backport/switchwidget/Switch;->mergeDrawableStates([I[I)[I

    .line 590
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 525
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 528
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchLeft:I

    .line 529
    .local v6, "switchLeft":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchTop:I

    .line 530
    .local v9, "switchTop":I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchRight:I

    .line 531
    .local v7, "switchRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchBottom:I

    .line 533
    .local v1, "switchBottom":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v13

    .line 540
    .local v3, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v13

    .line 541
    .local v5, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v13

    .line 542
    .local v4, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v13

    .line 543
    .local v2, "switchInnerBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 546
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 547
    .local v11, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    add-int v10, v13, v11

    .line 548
    .local v10, "thumbLeft":I
    add-int v13, v3, v11

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v12, v13, v14

    .line 550
    .local v12, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 557
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getDrawableState()[I

    move-result-object v14

    iput-object v14, v13, Landroid/text/TextPaint;->drawableState:[I

    .line 559
    invoke-direct/range {p0 .. p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 561
    .local v8, "switchText":Landroid/text/Layout;
    :goto_0
    add-int v13, v10, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v5, v2

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 562
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 565
    return-void

    .line 559
    .end local v8    # "switchText":Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jraf/android/backport/switchwidget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 491
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 493
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getThumbScrollRange()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    .line 495
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 496
    .local v2, "switchRight":I
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 497
    .local v1, "switchLeft":I
    const/4 v3, 0x0

    .line 498
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 499
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 502
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getPaddingTop()I

    move-result v3

    .line 503
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 517
    :goto_1
    iput v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchLeft:I

    .line 518
    iput v3, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchTop:I

    .line 519
    iput v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchBottom:I

    .line 520
    iput v2, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchRight:I

    .line 521
    return-void

    .line 493
    .end local v0    # "switchBottom":I
    .end local v1    # "switchLeft":I
    .end local v2    # "switchRight":I
    .end local v3    # "switchTop":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 507
    .restart local v0    # "switchBottom":I
    .restart local v1    # "switchLeft":I
    .restart local v2    # "switchRight":I
    .restart local v3    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 508
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 509
    goto :goto_1

    .line 512
    :sswitch_1
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 513
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v4, :cond_0

    .line 302
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lorg/jraf/android/backport/switchwidget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 304
    :cond_0
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v4, :cond_1

    .line 305
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lorg/jraf/android/backport/switchwidget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 308
    :cond_1
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 309
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 310
    .local v0, "maxTextWidth":I
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v5, v0, 0x2

    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 311
    .local v3, "switchWidth":I
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 313
    .local v2, "switchHeight":I
    iget v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbWidth:I

    .line 315
    iput v3, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchWidth:I

    .line 316
    iput v2, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mSwitchHeight:I

    .line 318
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 319
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getMeasuredHeight()I

    move-result v1

    .line 320
    .local v1, "measuredHeight":I
    if-ge v1, v2, :cond_2

    .line 321
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_3

    .line 322
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lorg/jraf/android/backport/switchwidget/Switch;->setMeasuredDimension(II)V

    .line 328
    :cond_2
    :goto_0
    return-void

    .line 325
    :cond_3
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getMeasuredWidthAndState()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lorg/jraf/android/backport/switchwidget/Switch;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 368
    iget-object v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 371
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 376
    .local v0, "action":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 434
    :cond_0
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_2
    return v5

    .line 374
    .end local v0    # "action":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .restart local v0    # "action":I
    goto :goto_0

    .line 378
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 379
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 380
    .local v4, "y":F
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Lorg/jraf/android/backport/switchwidget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 381
    iput v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchMode:I

    .line 382
    iput v3, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchX:F

    .line 383
    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchY:F

    goto :goto_1

    .line 389
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 395
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 396
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 397
    .restart local v4    # "y":F
    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 398
    :cond_3
    iput v8, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchMode:I

    .line 399
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 400
    iput v3, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchX:F

    .line 401
    iput v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchY:F

    goto :goto_2

    .line 408
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 409
    .restart local v3    # "x":F
    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 410
    .local v1, "dx":F
    const/4 v6, 0x0

    iget v7, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 411
    .local v2, "newPos":F
    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 412
    iput v2, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    .line 413
    iput v3, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchX:F

    .line 414
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->invalidate()V

    goto/16 :goto_2

    .line 424
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_5
    iget v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_4

    .line 425
    invoke-direct {p0, p1}, Lorg/jraf/android/backport/switchwidget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 428
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTouchMode:I

    .line 429
    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 389
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 485
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getThumbScrollRange()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbPosition:F

    .line 486
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->invalidate()V

    .line 487
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 173
    sget-object v5, Lorg/jraf/android/backport/switchwidget/R$styleable;->Android:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 179
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 180
    iput-object v1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 186
    :goto_0
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 187
    .local v3, "ts":I
    if-eqz v3, :cond_0

    .line 188
    int-to-float v5, v3

    iget-object v6, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 189
    iget-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 190
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->requestLayout()V

    .line 196
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 197
    .local v4, "typefaceIndex":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 199
    .local v2, "styleIndex":I
    invoke-direct {p0, v4, v2}, Lorg/jraf/android/backport/switchwidget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    return-void

    .line 183
    .end local v2    # "styleIndex":I
    .end local v3    # "ts":I
    .end local v4    # "typefaceIndex":I
    :cond_1
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 261
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 263
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->requestLayout()V

    .line 264
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->invalidate()V

    .line 266
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 230
    if-lez p2, :cond_4

    .line 231
    if-nez p1, :cond_1

    .line 232
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 237
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 239
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 240
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 241
    .local v0, "need":I
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 242
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 248
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 234
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 239
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 242
    goto :goto_2

    .line 244
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 245
    iget-object v2, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 246
    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 294
    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 295
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->requestLayout()V

    .line 296
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 279
    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 280
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/Switch;->requestLayout()V

    .line 281
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
