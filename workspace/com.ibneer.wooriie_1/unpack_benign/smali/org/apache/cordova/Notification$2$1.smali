.class Lorg/apache/cordova/Notification$2$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/Notification$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/Notification$2;


# direct methods
.method constructor <init>(Lorg/apache/cordova/Notification$2;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lorg/apache/cordova/Notification$2$1;->this$1:Lorg/apache/cordova/Notification$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    iget-object v0, p0, Lorg/apache/cordova/Notification$2$1;->this$1:Lorg/apache/cordova/Notification$2;

    iget-object v0, v0, Lorg/apache/cordova/Notification$2;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 216
    return-void
.end method
