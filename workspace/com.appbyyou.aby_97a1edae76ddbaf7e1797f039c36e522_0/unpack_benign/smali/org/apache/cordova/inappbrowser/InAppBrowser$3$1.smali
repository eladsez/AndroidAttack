.class Lorg/apache/cordova/inappbrowser/InAppBrowser$3$1;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$3;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$3;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$3$1;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 442
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "exit"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$3$1;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$3;

    iget-object v2, v2, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
