.class Lorg/apache/cordova/inappbrowser/InAppBrowser$2;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

.field final synthetic val$childView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iput-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;->val$childView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;->val$childView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 322
    return-void
.end method
