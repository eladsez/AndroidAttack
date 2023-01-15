.class Lcom/waps/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/x;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/waps/x;->a:Lcom/waps/OffersWebView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    iget-object v0, p0, Lcom/waps/x;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$400(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/x;->a:Lcom/waps/OffersWebView;

    invoke-static {v1}, Lcom/waps/OffersWebView;->access$400(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/x;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    :cond_0
    return-void
.end method
