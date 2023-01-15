.class Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$3;
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


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

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
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$3(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intt":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method
