.class Lorg/apache/cordova/Notification$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/Notification;

.field final synthetic val$buttonLabel:Ljava/lang/String;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field final synthetic val$cordova:Lorg/apache/cordova/api/CordovaInterface;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/cordova/Notification$1;->this$0:Lorg/apache/cordova/Notification;

    iput-object p2, p0, Lorg/apache/cordova/Notification$1;->val$cordova:Lorg/apache/cordova/api/CordovaInterface;

    iput-object p3, p0, Lorg/apache/cordova/Notification$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/Notification$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/Notification$1;->val$buttonLabel:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/cordova/Notification$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/apache/cordova/Notification$1;->val$cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/apache/cordova/Notification$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    iget-object v1, p0, Lorg/apache/cordova/Notification$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 165
    iget-object v1, p0, Lorg/apache/cordova/Notification$1;->val$buttonLabel:Ljava/lang/String;

    new-instance v2, Lorg/apache/cordova/Notification$1$1;

    invoke-direct {v2, p0}, Lorg/apache/cordova/Notification$1$1;-><init>(Lorg/apache/cordova/Notification$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    new-instance v1, Lorg/apache/cordova/Notification$1$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/Notification$1$2;-><init>(Lorg/apache/cordova/Notification$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 182
    return-void
.end method
