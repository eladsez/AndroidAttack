.class Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;
.super Ljava/lang/Object;
.source "ViewNotesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

.field private final synthetic val$prevBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;->val$prevBtn:Landroid/widget/Button;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    invoke-static {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;I)V

    .line 95
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;->val$prevBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    invoke-static {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$2(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)V

    .line 97
    return-void
.end method
