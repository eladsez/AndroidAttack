.class Lcom/waps/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    const-string v1, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    iget-object v0, v0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    iget-object v0, v0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    invoke-static {v2}, Lcom/waps/OffersWebView;->access$200(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/waps/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$400(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    invoke-static {v1}, Lcom/waps/OffersWebView;->access$400(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/y;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    :cond_0
    return-void
.end method
