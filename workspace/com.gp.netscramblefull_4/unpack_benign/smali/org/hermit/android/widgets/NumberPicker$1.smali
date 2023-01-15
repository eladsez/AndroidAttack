.class Lorg/hermit/android/widgets/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/widgets/NumberPicker;
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
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$0(Lorg/hermit/android/widgets/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$1(Lorg/hermit/android/widgets/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->changeCurrent(I)V

    .line 71
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$2(Lorg/hermit/android/widgets/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$3(Lorg/hermit/android/widgets/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$4(Lorg/hermit/android/widgets/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$1(Lorg/hermit/android/widgets/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->changeCurrent(I)V

    .line 74
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$2(Lorg/hermit/android/widgets/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$1;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$3(Lorg/hermit/android/widgets/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
