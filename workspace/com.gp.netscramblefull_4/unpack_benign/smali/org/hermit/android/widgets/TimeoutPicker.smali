.class public Lorg/hermit/android/widgets/TimeoutPicker;
.super Landroid/widget/FrameLayout;
.source "TimeoutPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;,
        Lorg/hermit/android/widgets/TimeoutPicker$SavedState;
    }
.end annotation


# static fields
.field private static final TWO_DIGIT_FORMATTER:Lorg/hermit/android/widgets/NumberPicker$Formatter;


# instance fields
.field private changeListener:Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;

.field private currentHour:I

.field private currentMinute:I

.field private currentSecond:I

.field private final hourPicker:Lorg/hermit/android/widgets/NumberPicker;

.field private final minutePicker:Lorg/hermit/android/widgets/NumberPicker;

.field private final secondPicker:Lorg/hermit/android/widgets/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lorg/hermit/android/widgets/TimeoutPicker$1;

    invoke-direct {v0}, Lorg/hermit/android/widgets/TimeoutPicker$1;-><init>()V

    .line 345
    sput-object v0, Lorg/hermit/android/widgets/TimeoutPicker;->TWO_DIGIT_FORMATTER:Lorg/hermit/android/widgets/NumberPicker$Formatter;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/widgets/TimeoutPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/hermit/android/widgets/TimeoutPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v7, 0x3b

    const-wide/16 v5, 0x64

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 363
    iput v4, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    .line 364
    iput v4, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    .line 365
    iput v4, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    .line 81
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 82
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    const v2, 0x7f05001c

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/hermit/android/widgets/NumberPicker;

    iput-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    .line 86
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v4}, Lorg/hermit/android/widgets/NumberPicker;->setMinValue(I)V

    .line 87
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Lorg/hermit/android/widgets/NumberPicker;->setMaxValue(I)V

    .line 88
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v5, v6}, Lorg/hermit/android/widgets/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 89
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    sget-object v3, Lorg/hermit/android/widgets/TimeoutPicker;->TWO_DIGIT_FORMATTER:Lorg/hermit/android/widgets/NumberPicker$Formatter;

    invoke-virtual {v2, v3}, Lorg/hermit/android/widgets/NumberPicker;->setFormatter(Lorg/hermit/android/widgets/NumberPicker$Formatter;)V

    .line 90
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    new-instance v3, Lorg/hermit/android/widgets/TimeoutPicker$2;

    invoke-direct {v3, p0}, Lorg/hermit/android/widgets/TimeoutPicker$2;-><init>(Lorg/hermit/android/widgets/TimeoutPicker;)V

    invoke-virtual {v2, v3}, Lorg/hermit/android/widgets/NumberPicker;->setOnValueChangedListener(Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;)V

    .line 99
    const v2, 0x7f05001d

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/hermit/android/widgets/NumberPicker;

    iput-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    .line 100
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v4}, Lorg/hermit/android/widgets/NumberPicker;->setMinValue(I)V

    .line 101
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v7}, Lorg/hermit/android/widgets/NumberPicker;->setMaxValue(I)V

    .line 102
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v5, v6}, Lorg/hermit/android/widgets/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 103
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    sget-object v3, Lorg/hermit/android/widgets/TimeoutPicker;->TWO_DIGIT_FORMATTER:Lorg/hermit/android/widgets/NumberPicker$Formatter;

    invoke-virtual {v2, v3}, Lorg/hermit/android/widgets/NumberPicker;->setFormatter(Lorg/hermit/android/widgets/NumberPicker$Formatter;)V

    .line 104
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    new-instance v3, Lorg/hermit/android/widgets/TimeoutPicker$3;

    invoke-direct {v3, p0}, Lorg/hermit/android/widgets/TimeoutPicker$3;-><init>(Lorg/hermit/android/widgets/TimeoutPicker;)V

    invoke-virtual {v2, v3}, Lorg/hermit/android/widgets/NumberPicker;->setOnValueChangedListener(Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;)V

    .line 113
    const v2, 0x7f05001e

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/hermit/android/widgets/NumberPicker;

    iput-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    .line 114
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v4}, Lorg/hermit/android/widgets/NumberPicker;->setMinValue(I)V

    .line 115
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v7}, Lorg/hermit/android/widgets/NumberPicker;->setMaxValue(I)V

    .line 116
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v2, v5, v6}, Lorg/hermit/android/widgets/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 117
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    sget-object v3, Lorg/hermit/android/widgets/TimeoutPicker;->TWO_DIGIT_FORMATTER:Lorg/hermit/android/widgets/NumberPicker$Formatter;

    invoke-virtual {v2, v3}, Lorg/hermit/android/widgets/NumberPicker;->setFormatter(Lorg/hermit/android/widgets/NumberPicker$Formatter;)V

    .line 118
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    new-instance v3, Lorg/hermit/android/widgets/TimeoutPicker$4;

    invoke-direct {v3, p0}, Lorg/hermit/android/widgets/TimeoutPicker$4;-><init>(Lorg/hermit/android/widgets/TimeoutPicker;)V

    invoke-virtual {v2, v3}, Lorg/hermit/android/widgets/NumberPicker;->setOnValueChangedListener(Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;)V

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->setCurrentHour(I)V

    .line 131
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->setCurrentMinute(I)V

    .line 133
    invoke-virtual {p0}, Lorg/hermit/android/widgets/TimeoutPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {p0, v4}, Lorg/hermit/android/widgets/TimeoutPicker;->setEnabled(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/widgets/TimeoutPicker;I)V
    .locals 0

    .prologue
    .line 363
    iput p1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    return-void
.end method

.method static synthetic access$1(Lorg/hermit/android/widgets/TimeoutPicker;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/hermit/android/widgets/TimeoutPicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$2(Lorg/hermit/android/widgets/TimeoutPicker;I)V
    .locals 0

    .prologue
    .line 364
    iput p1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    return-void
.end method

.method static synthetic access$3(Lorg/hermit/android/widgets/TimeoutPicker;I)V
    .locals 0

    .prologue
    .line 365
    iput p1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->changeListener:Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->changeListener:Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lorg/hermit/android/widgets/TimeoutPicker;->getMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;->onTimeChanged(Lorg/hermit/android/widgets/TimeoutPicker;J)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v0}, Lorg/hermit/android/widgets/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    return v0
.end method

.method public getMillis()J
    .locals 3

    .prologue
    .line 164
    iget v1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    mul-int/lit16 v1, v1, 0xe10

    iget v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    iget v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    add-int v0, v1, v2

    .line 165
    .local v0, "secs":I
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    return-wide v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 327
    move-object v0, p1

    check-cast v0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;

    move-object v1, v0

    .line 328
    .local v1, "ss":Lorg/hermit/android/widgets/TimeoutPicker$SavedState;
    invoke-virtual {v1}, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 329
    invoke-virtual {v1}, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->getHour()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->setCurrentHour(I)V

    .line 330
    invoke-virtual {v1}, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->setCurrentMinute(I)V

    .line 331
    invoke-virtual {v1}, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;->getSecond()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPicker;->setCurrentSecond(I)V

    .line 332
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 320
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 321
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;

    iget v2, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    iget v3, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    iget v4, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/hermit/android/widgets/TimeoutPicker$SavedState;-><init>(Landroid/os/Parcelable;IIILorg/hermit/android/widgets/TimeoutPicker$SavedState;)V

    return-object v0
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 197
    iput p1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    .line 198
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    iget v1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->setValue(I)V

    .line 199
    invoke-direct {p0}, Lorg/hermit/android/widgets/TimeoutPicker;->onTimeChanged()V

    .line 200
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 2
    .param p1, "min"    # I

    .prologue
    .line 215
    iput p1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    .line 216
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    iget v1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->setValue(I)V

    .line 217
    invoke-direct {p0}, Lorg/hermit/android/widgets/TimeoutPicker;->onTimeChanged()V

    .line 218
    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 2
    .param p1, "sec"    # I

    .prologue
    .line 233
    iput p1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    .line 234
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    iget v1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->setValue(I)V

    .line 235
    invoke-direct {p0}, Lorg/hermit/android/widgets/TimeoutPicker;->onTimeChanged()V

    .line 236
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/hermit/android/widgets/NumberPicker;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/hermit/android/widgets/NumberPicker;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/hermit/android/widgets/NumberPicker;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method public setMillis(J)V
    .locals 4
    .param p1, "millis"    # J

    .prologue
    const-wide/16 v2, 0x3c

    .line 175
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    .line 176
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    .line 177
    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    .line 178
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->secondPicker:Lorg/hermit/android/widgets/NumberPicker;

    iget v1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentSecond:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->setValue(I)V

    .line 179
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->minutePicker:Lorg/hermit/android/widgets/NumberPicker;

    iget v1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentMinute:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->setValue(I)V

    .line 180
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker;->hourPicker:Lorg/hermit/android/widgets/NumberPicker;

    iget v1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->currentHour:I

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->setValue(I)V

    .line 181
    invoke-direct {p0}, Lorg/hermit/android/widgets/TimeoutPicker;->onTimeChanged()V

    .line 182
    return-void
.end method

.method public setOnTimeChangedListener(Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/hermit/android/widgets/TimeoutPicker;->changeListener:Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;

    .line 157
    return-void
.end method
