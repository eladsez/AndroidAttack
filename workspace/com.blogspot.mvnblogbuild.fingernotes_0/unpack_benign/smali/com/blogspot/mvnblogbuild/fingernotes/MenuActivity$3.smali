.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$3;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v1

    .line 198
    .local v1, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->clearNoteProfile()V

    .line 200
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "intt":Landroid/content/Intent;
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v2, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method
