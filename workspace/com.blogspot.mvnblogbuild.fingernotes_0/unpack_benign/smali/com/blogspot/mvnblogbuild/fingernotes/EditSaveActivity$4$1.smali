.class Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4$1;
.super Ljava/lang/Object;
.source "EditSaveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4$1;->this$1:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4$1;->this$1:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;)Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, "intt":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4$1;->this$1:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$4;)Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method
