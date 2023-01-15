.class Lcom/ievyhrdnoniovof/AdBrowser$6;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdBrowser;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdBrowser;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdBrowser;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdBrowser$6;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # I

    .prologue
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "k>F5N?@\u007f\t\u007f"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
