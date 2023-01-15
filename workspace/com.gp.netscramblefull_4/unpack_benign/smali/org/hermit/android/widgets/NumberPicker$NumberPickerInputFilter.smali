.class Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/widgets/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/widgets/NumberPicker;


# direct methods
.method private constructor <init>(Lorg/hermit/android/widgets/NumberPicker;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hermit/android/widgets/NumberPicker;Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;-><init>(Lorg/hermit/android/widgets/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$NumberPickerInputFilter;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$5(Lorg/hermit/android/widgets/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
