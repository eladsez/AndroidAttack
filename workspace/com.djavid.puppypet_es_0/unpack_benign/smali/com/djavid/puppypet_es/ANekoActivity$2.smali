.class Lcom/djavid/puppypet_es/ANekoActivity$2;
.super Ljava/lang/Object;
.source "ANekoActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/djavid/puppypet_es/ANekoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/ANekoActivity;


# direct methods
.method constructor <init>(Lcom/djavid/puppypet_es/ANekoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/djavid/puppypet_es/ANekoActivity$2;->this$0:Lcom/djavid/puppypet_es/ANekoActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://play.google.com/store/apps/developer?id=Djavid+Inc."

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/djavid/puppypet_es/ANekoActivity$2;->this$0:Lcom/djavid/puppypet_es/ANekoActivity;

    invoke-virtual {v1, v0}, Lcom/djavid/puppypet_es/ANekoActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    const/4 v1, 0x1

    return v1
.end method
