.class Lorg/hermit/android/widgets/MultistateImageButton$1;
.super Ljava/lang/Object;
.source "MultistateImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/widgets/MultistateImageButton;->init([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/widgets/MultistateImageButton;


# direct methods
.method constructor <init>(Lorg/hermit/android/widgets/MultistateImageButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/widgets/MultistateImageButton$1;->this$0:Lorg/hermit/android/widgets/MultistateImageButton;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton$1;->this$0:Lorg/hermit/android/widgets/MultistateImageButton;

    iget-object v1, p0, Lorg/hermit/android/widgets/MultistateImageButton$1;->this$0:Lorg/hermit/android/widgets/MultistateImageButton;

    invoke-static {v1}, Lorg/hermit/android/widgets/MultistateImageButton;->access$0(Lorg/hermit/android/widgets/MultistateImageButton;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/hermit/android/widgets/MultistateImageButton$1;->this$0:Lorg/hermit/android/widgets/MultistateImageButton;

    invoke-static {v2}, Lorg/hermit/android/widgets/MultistateImageButton;->access$1(Lorg/hermit/android/widgets/MultistateImageButton;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/hermit/android/widgets/MultistateImageButton;->setState(I)V

    .line 77
    iget-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton$1;->this$0:Lorg/hermit/android/widgets/MultistateImageButton;

    invoke-static {v0}, Lorg/hermit/android/widgets/MultistateImageButton;->access$2(Lorg/hermit/android/widgets/MultistateImageButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton$1;->this$0:Lorg/hermit/android/widgets/MultistateImageButton;

    invoke-static {v0}, Lorg/hermit/android/widgets/MultistateImageButton;->access$2(Lorg/hermit/android/widgets/MultistateImageButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 79
    :cond_0
    return-void
.end method
