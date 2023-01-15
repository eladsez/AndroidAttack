.class Lanywheresoftware/b4a/objects/WebViewWrapper$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/WebViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/WebViewWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/WebViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->this$0:Lanywheresoftware/b4a/objects/WebViewWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$eventName:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->this$0:Lanywheresoftware/b4a/objects/WebViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_pagefinished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    iget-object v3, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v4, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->this$0:Lanywheresoftware/b4a/objects/WebViewWrapper;

    invoke-virtual {v4}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_userandpasswordrequired"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v7

    aput-object p4, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 78
    .local v2, "s":[Ljava/lang/String;
    aget-object v3, v2, v7

    aget-object v4, v2, v8

    invoke-virtual {p2, v3, v4}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v1, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->this$0:Lanywheresoftware/b4a/objects/WebViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lanywheresoftware/b4a/objects/WebViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_overrideurl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 65
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 67
    :goto_0
    return v1

    :cond_0
    move v1, v5

    goto :goto_0
.end method
