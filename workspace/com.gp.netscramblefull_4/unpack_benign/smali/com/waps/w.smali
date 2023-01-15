.class Lcom/waps/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/w;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/waps/w;->a:Lcom/waps/OffersWebView;

    new-instance v1, Lcom/waps/o;

    iget-object v2, p0, Lcom/waps/w;->a:Lcom/waps/OffersWebView;

    iget-object v3, p0, Lcom/waps/w;->a:Lcom/waps/OffersWebView;

    invoke-static {v3}, Lcom/waps/OffersWebView;->access$100(Lcom/waps/OffersWebView;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v4, p0, Lcom/waps/w;->a:Lcom/waps/OffersWebView;

    invoke-static {v4}, Lcom/waps/OffersWebView;->access$200(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/waps/o;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    iget-object v0, p0, Lcom/waps/w;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$300(Lcom/waps/OffersWebView;)V

    return-void
.end method
