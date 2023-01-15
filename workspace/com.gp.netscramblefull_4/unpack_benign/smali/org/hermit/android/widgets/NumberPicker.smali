.class public Lorg/hermit/android/widgets/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/widgets/NumberPicker$Formatter;,
        Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;,
        Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;,
        Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

.field private mEnd:I

.field private mFormatter:Lorg/hermit/android/widgets/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

.field private mListener:Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 361
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/hermit/android/widgets/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 41
    return-void

    .line 361
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/widgets/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v5, Lorg/hermit/android/widgets/NumberPicker$1;

    invoke-direct {v5, p0}, Lorg/hermit/android/widgets/NumberPicker$1;-><init>(Lorg/hermit/android/widgets/NumberPicker;)V

    iput-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 103
    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mSpeed:J

    .line 123
    invoke-virtual {p0, v7}, Lorg/hermit/android/widgets/NumberPicker;->setOrientation(I)V

    .line 125
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 126
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 127
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lorg/hermit/android/widgets/NumberPicker$2;

    invoke-direct {v0, p0}, Lorg/hermit/android/widgets/NumberPicker$2;-><init>(Lorg/hermit/android/widgets/NumberPicker;)V

    .line 144
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    new-instance v1, Lorg/hermit/android/widgets/NumberPicker$3;

    invoke-direct {v1, p0}, Lorg/hermit/android/widgets/NumberPicker$3;-><init>(Lorg/hermit/android/widgets/NumberPicker;)V

    .line 157
    .local v1, "focusListener":Landroid/view/View$OnFocusChangeListener;
    new-instance v4, Lorg/hermit/android/widgets/NumberPicker$4;

    invoke-direct {v4, p0}, Lorg/hermit/android/widgets/NumberPicker$4;-><init>(Lorg/hermit/android/widgets/NumberPicker;)V

    .line 180
    .local v4, "longClickListener":Landroid/view/View$OnLongClickListener;
    new-instance v3, Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v3, p0, v9}, Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;-><init>(Lorg/hermit/android/widgets/NumberPicker;Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;)V

    .line 181
    .local v3, "inputFilter":Landroid/text/InputFilter;
    new-instance v5, Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v5, p0, v9}, Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;-><init>(Lorg/hermit/android/widgets/NumberPicker;Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;)V

    iput-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 182
    const v5, 0x7f05000a

    invoke-virtual {p0, v5}, Lorg/hermit/android/widgets/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/hermit/android/widgets/NumberPickerButton;

    iput-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    .line 183
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v5, v0}, Lorg/hermit/android/widgets/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v5, v4}, Lorg/hermit/android/widgets/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v5, p0}, Lorg/hermit/android/widgets/NumberPickerButton;->setNumberPicker(Lorg/hermit/android/widgets/NumberPicker;)V

    .line 187
    const v5, 0x7f05000c

    invoke-virtual {p0, v5}, Lorg/hermit/android/widgets/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/hermit/android/widgets/NumberPickerButton;

    iput-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    .line 188
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v5, v0}, Lorg/hermit/android/widgets/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v5, v4}, Lorg/hermit/android/widgets/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v5, p0}, Lorg/hermit/android/widgets/NumberPickerButton;->setNumberPicker(Lorg/hermit/android/widgets/NumberPicker;)V

    .line 192
    const v5, 0x7f05000b

    invoke-virtual {p0, v5}, Lorg/hermit/android/widgets/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    .line 193
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v6, v7, [Landroid/text/InputFilter;

    aput-object v3, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 195
    iget-object v5, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 197
    invoke-virtual {p0}, Lorg/hermit/android/widgets/NumberPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 198
    invoke-virtual {p0, v8}, Lorg/hermit/android/widgets/NumberPicker;->setEnabled(Z)V

    .line 200
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/widgets/NumberPicker;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$1(Lorg/hermit/android/widgets/NumberPicker;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$10(Lorg/hermit/android/widgets/NumberPicker;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lorg/hermit/android/widgets/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11(Lorg/hermit/android/widgets/NumberPicker;Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrement:Z

    return-void
.end method

.method static synthetic access$12(Lorg/hermit/android/widgets/NumberPicker;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13(Lorg/hermit/android/widgets/NumberPicker;Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrement:Z

    return-void
.end method

.method static synthetic access$2(Lorg/hermit/android/widgets/NumberPicker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lorg/hermit/android/widgets/NumberPicker;)J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$4(Lorg/hermit/android/widgets/NumberPicker;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$5(Lorg/hermit/android/widgets/NumberPicker;)Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$6()[C
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lorg/hermit/android/widgets/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$7(Lorg/hermit/android/widgets/NumberPicker;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lorg/hermit/android/widgets/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lorg/hermit/android/widgets/NumberPicker;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$9(Lorg/hermit/android/widgets/NumberPicker;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mFormatter:Lorg/hermit/android/widgets/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mFormatter:Lorg/hermit/android/widgets/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lorg/hermit/android/widgets/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 423
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 427
    :goto_0
    return v0

    .line 424
    :catch_0
    move-exception v0

    .line 427
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mStart:I

    goto :goto_0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mListener:Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mListener:Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mPrevious:I

    iget v2, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;->onValueChange(Lorg/hermit/android/widgets/NumberPicker;II)V

    .line 305
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lorg/hermit/android/widgets/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 320
    return-void
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 323
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/hermit/android/widgets/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, "val":I
    iget v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 325
    iget v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 326
    iget v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    iput v1, p0, Lorg/hermit/android/widgets/NumberPicker;->mPrevious:I

    .line 327
    iput v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    .line 328
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->notifyChange()V

    .line 331
    :cond_0
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->updateView()V

    .line 332
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "str":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->updateView()V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-direct {p0, v0}, Lorg/hermit/android/widgets/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrement:Z

    .line 359
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrement:Z

    .line 352
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 1
    .param p1, "current"    # I

    .prologue
    .line 286
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 287
    iget p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mStart:I

    .line 291
    :cond_0
    :goto_0
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    iput v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mPrevious:I

    .line 292
    iput p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    .line 293
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->notifyChange()V

    .line 294
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->updateView()V

    .line 295
    return-void

    .line 288
    :cond_1
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 289
    iget p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method protected getBeginRange()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mStart:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected getEndRange()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mEnd:I

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mIncrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v0, p1}, Lorg/hermit/android/widgets/NumberPickerButton;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mDecrementButton:Lorg/hermit/android/widgets/NumberPickerButton;

    invoke-virtual {v0, p1}, Lorg/hermit/android/widgets/NumberPickerButton;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 214
    return-void
.end method

.method public setFormatter(Lorg/hermit/android/widgets/NumberPicker$Formatter;)V
    .locals 0
    .param p1, "formatter"    # Lorg/hermit/android/widgets/NumberPicker$Formatter;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mFormatter:Lorg/hermit/android/widgets/NumberPicker$Formatter;

    .line 231
    return-void
.end method

.method public setMaxValue(I)V
    .locals 0
    .param p1, "end"    # I

    .prologue
    .line 240
    iput p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mEnd:I

    .line 241
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->updateView()V

    .line 242
    return-void
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "start"    # I

    .prologue
    .line 234
    iput p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mStart:I

    .line 235
    iput p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    .line 236
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->updateView()V

    .line 237
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "speed"    # J

    .prologue
    .line 268
    iput-wide p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mSpeed:J

    .line 269
    return-void
.end method

.method public setOnValueChangedListener(Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mListener:Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;

    .line 222
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "current"    # I

    .prologue
    .line 252
    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/hermit/android/widgets/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 254
    const-string v1, "current should be >= start and <= end"

    .line 253
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    iput p1, p0, Lorg/hermit/android/widgets/NumberPicker;->mCurrent:I

    .line 257
    invoke-direct {p0}, Lorg/hermit/android/widgets/NumberPicker;->updateView()V

    .line 258
    return-void
.end method
