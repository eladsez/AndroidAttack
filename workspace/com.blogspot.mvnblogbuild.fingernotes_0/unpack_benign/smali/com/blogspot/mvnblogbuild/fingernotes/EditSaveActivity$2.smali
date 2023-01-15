.class Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;
.super Ljava/lang/Object;
.source "EditSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

.field private final synthetic val$noteTitle:Landroid/widget/EditText;

.field private final synthetic val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    iput-object p3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->val$noteTitle:Landroid/widget/EditText;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getOpenNoteMode()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    move-result-object v1

    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->NEW:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    if-ne v1, v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->val$noteTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->val$noteTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setTitle(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intt":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
