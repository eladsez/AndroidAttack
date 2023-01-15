.class Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

.field private final synthetic val$cleanBtn:Landroid/widget/ImageButton;

.field private final synthetic val$inputModeBtn:Landroid/widget/ImageButton;

.field private final synthetic val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

.field private final synthetic val$rwModeBtn:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    iput-object p3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$rwModeBtn:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$inputModeBtn:Landroid/widget/ImageButton;

    iput-object p5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$cleanBtn:Landroid/widget/ImageButton;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->getFingerInputMode()Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    move-result-object v0

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->VIEW:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$rwModeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->VIEW:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->setFingerInputMode(Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;)V

    .line 97
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$inputModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$cleanBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$rwModeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->setFingerInputMode(Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;)V

    .line 104
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$inputModeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$inputModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;->val$cleanBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
