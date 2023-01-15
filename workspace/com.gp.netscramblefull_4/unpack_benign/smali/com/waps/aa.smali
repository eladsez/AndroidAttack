.class Lcom/waps/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    const-class v2, Lcom/waps/OffersWebView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "UrlPath"

    iget-object v2, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-static {v2}, Lcom/waps/OffersWebView;->access$700(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isFinshClose"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTIVITY_FLAG"

    const-string v2, "notify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-static {v1}, Lcom/waps/OffersWebView;->access$700(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "down_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Notify_Url_Params"

    iget-object v2, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-static {v2}, Lcom/waps/OffersWebView;->access$800(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v1, v0}, Lcom/waps/OffersWebView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$900(Lcom/waps/OffersWebView;)Lcom/waps/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/waps/p;->a(I)V

    iget-object v0, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$1000(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$1000(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/waps/aa;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    return-void
.end method
