.class Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;
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

.field private final synthetic val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

.field private final synthetic val$ctrlOrientation:Landroid/widget/CheckBox;

.field private final synthetic val$preferStorage:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;Landroid/widget/CheckBox;Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$ctrlOrientation:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    iput-object p4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$preferStorage:Landroid/widget/CheckBox;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$ctrlOrientation:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    const-string v2, "CONTROLS_ORIENTATION"

    const-string v3, "R"

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$preferStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$preferStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    const-string v2, "PREFER_STORAGE"

    const-string v3, "I"

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->saveSettings()V

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;

    invoke-static {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "intt":Landroid/content/Intent;
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void

    .line 50
    .end local v0    # "intt":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    const-string v2, "CONTROLS_ORIENTATION"

    const-string v3, "L"

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/SettingsActivity$1;->val$appSettings:Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    const-string v2, "PREFER_STORAGE"

    const-string v3, "E"

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
