.class Lcom/waps/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ad;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/waps/ad;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    sput-boolean v1, Lcom/waps/p;->c:Z

    iget-object v0, p0, Lcom/waps/ad;->a:Lcom/waps/OffersWebView;

    invoke-static {v0, v1}, Lcom/waps/OffersWebView;->access$1202(Lcom/waps/OffersWebView;Z)Z

    iget-object v0, p0, Lcom/waps/ad;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    return-void
.end method
