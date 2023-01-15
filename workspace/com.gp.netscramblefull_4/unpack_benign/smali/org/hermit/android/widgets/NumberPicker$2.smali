.class Lorg/hermit/android/widgets/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$9(Lorg/hermit/android/widgets/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->access$10(Lorg/hermit/android/widgets/NumberPicker;Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$9(Lorg/hermit/android/widgets/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v0}, Lorg/hermit/android/widgets/NumberPicker;->access$9(Lorg/hermit/android/widgets/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 136
    :cond_0
    const v0, 0x7f05000a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 137
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$1(Lorg/hermit/android/widgets/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->changeCurrent(I)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    const v0, 0x7f05000c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    iget-object v1, p0, Lorg/hermit/android/widgets/NumberPicker$2;->this$0:Lorg/hermit/android/widgets/NumberPicker;

    invoke-static {v1}, Lorg/hermit/android/widgets/NumberPicker;->access$1(Lorg/hermit/android/widgets/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method
