.class Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;
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

.field private final synthetic val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;->NEW:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    invoke-virtual {v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setOpenNoteMode(Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intt":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
