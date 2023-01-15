.class Lorg/hermit/android/widgets/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/widgets/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/widgets/NumberPicker;


# direct methods
.method constructor <init>(Lorg/hermit/android/widgets/NumberPicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker$3;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 151
    if-nez p2, :cond_0

    .line 152
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$3;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0, p1}, Lorg/hermit/android/widgets/NumberPicker;->access$10(Lorg/hermit/android/widgets/NumberPicker;Landroid/view/View;)V

    .line 154
    :cond_0
    return-void
.end method
