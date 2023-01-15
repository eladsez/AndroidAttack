.class Lorg/apache/cordova/inappbrowser/InAppBrowser$1;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 201
    return-void
.end method
