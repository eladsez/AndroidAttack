.class Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intt":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
