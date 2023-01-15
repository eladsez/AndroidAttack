.class Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$1;
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

.field private final synthetic val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$1;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$1;->val$paintView:Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->CleanPaint()V

    .line 59
    return-void
.end method
