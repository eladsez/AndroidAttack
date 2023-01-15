.class Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;
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

.field private final synthetic val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->clearNoteProfile()V

    .line 252
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v0, "intt":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$5;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method
