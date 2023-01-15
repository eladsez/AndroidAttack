.class Lorg/hermit/android/widgets/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$9(Lorg/hermit/android/widgets/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 169
    const v0, 0x7f05000a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0, v2}, Lorg/hermit/android/widgets/NumberPicker;->access$11(Lorg/hermit/android/widgets/NumberPicker;Z)V

    .line 171
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$2(Lorg/hermit/android/widgets/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$12(Lorg/hermit/android/widgets/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    const v0, 0x7f05000c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0, v2}, Lorg/hermit/android/widgets/NumberPicker;->access$13(Lorg/hermit/android/widgets/NumberPicker;Z)V

    .line 174
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$2(Lorg/hermit/android/widgets/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$4;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$12(Lorg/hermit/android/widgets/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
