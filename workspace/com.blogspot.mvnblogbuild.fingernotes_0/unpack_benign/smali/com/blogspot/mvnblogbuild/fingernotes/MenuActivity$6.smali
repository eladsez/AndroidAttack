.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;
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

.field private final synthetic val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

.field private final synthetic val$executionCounter:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;Ljava/lang/Integer;Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;->val$executionCounter:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;->val$executionCounter:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3dc

    if-ge v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    .line 251
    const-string v2, "RATE_EXECUTION_COUNTER"

    const-string v3, "988"

    .line 250
    invoke-virtual {v1, v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->saveSettings()V

    .line 255
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "market://details?id=com.blogspot.mvnblogbuild.fingernotes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$6;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 259
    return-void
.end method
