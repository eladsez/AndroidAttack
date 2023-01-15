.class Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;

.field final synthetic m:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;
    .param p2, "arg1"    # Landroid/webkit/JsResult;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$3;->k:Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$3;->m:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$3;->m:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
