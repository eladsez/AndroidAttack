.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 69
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v4, v3, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;

    .line 71
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "NOTIF"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "mode"

    const-string v4, "ON"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x1

    .line 74
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 76
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v3, v3, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 77
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 78
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v3, v3, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;

    .line 90
    return-void
.end method
