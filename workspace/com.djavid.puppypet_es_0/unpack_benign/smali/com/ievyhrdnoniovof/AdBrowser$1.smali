.class Lcom/ievyhrdnoniovof/AdBrowser$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdBrowser$1;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdBrowser$1;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdBrowser$1;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdBrowser;->finish()V

    goto :goto_0
.end method
