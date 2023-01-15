.class Lorg/hermit/android/widgets/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lorg/hermit/android/widgets/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f05000a

    invoke-virtual {p0}, Lorg/hermit/android/widgets/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPickerButton;->mNumberPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v0}, Lorg/hermit/android/widgets/NumberPicker;->cancelIncrement()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const v0, 0x7f05000c

    invoke-virtual {p0}, Lorg/hermit/android/widgets/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPickerButton;->mNumberPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v0}, Lorg/hermit/android/widgets/NumberPicker;->cancelDecrement()V

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPickerButton;->cancelLongpress()V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 67
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 68
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPickerButton;->cancelLongpress()V

    .line 71
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/hermit/android/widgets/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/hermit/android/widgets/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lorg/hermit/android/widgets/NumberPicker;)V
    .locals 0
    .param p1, "picker"    # Lorg/hermit/android/widgets/NumberPicker;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPickerButton;->mNumberPicker:Lorg/hermit/android/widgets/NumberPicker;

    .line 51
    return-void
.end method
