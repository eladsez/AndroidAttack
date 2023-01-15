.class Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/widgets/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/widgets/NumberPicker;


# direct methods
.method private constructor <init>(Lorg/hermit/android/widgets/NumberPicker;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hermit/android/widgets/NumberPicker;Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;-><init>(Lorg/hermit/android/widgets/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const-string v5, ""

    .line 394
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 395
    .local v0, "filtered":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 396
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 399
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {p4, v4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 401
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p6, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "result":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 416
    :goto_0
    return-object v3

    .line 406
    :cond_1
    iget-object v3, p0, Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v3, v1}, Lorg/hermit/android/widgets/NumberPicker;->access$7(Lorg/hermit/android/widgets/NumberPicker;Ljava/lang/String;)I

    move-result v2

    .line 413
    .local v2, "val":I
    iget-object v3, p0, Lorg/hermit/android/widgets/NumberPicker$NumberRangeKeyListener;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v3}, Lorg/hermit/android/widgets/NumberPicker;->access$8(Lorg/hermit/android/widgets/NumberPicker;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 414
    const-string v3, ""

    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 416
    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lorg/hermit/android/widgets/NumberPicker;->access$6()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x2

    return v0
.end method
