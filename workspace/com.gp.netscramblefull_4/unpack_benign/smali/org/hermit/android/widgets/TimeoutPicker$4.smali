.class Lorg/hermit/android/widgets/TimeoutPicker$4;
.super Ljava/lang/Object;
.source "TimeoutPicker.java"

# interfaces
.implements Lorg/hermit/android/widgets/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/widgets/TimeoutPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/widgets/TimeoutPicker;


# direct methods
.method constructor <init>(Lorg/hermit/android/widgets/TimeoutPicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/widgets/TimeoutPicker$4;->this$0:Lorg/hermit/android/widgets/TimeoutPicker;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lorg/hermit/android/widgets/NumberPicker;II)V
    .locals 1
    .param p1, "picker"    # Lorg/hermit/android/widgets/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$4;->this$0:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-static {v0, p3}, Lorg/hermit/android/widgets/TimeoutPicker;->access$3(Lorg/hermit/android/widgets/TimeoutPicker;I)V

    .line 122
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$4;->this$0:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/TimeoutPicker;->access$1(Lorg/hermit/android/widgets/TimeoutPicker;)V

    .line 123
    return-void
.end method
