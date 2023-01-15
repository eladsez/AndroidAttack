.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-boolean v3, v3, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mIsBound:Z

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v3, v3, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 273
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "NOTIF"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "mode"

    const-string v4, "OFF"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v3, 0x0

    .line 278
    const/4 v4, 0x1

    .line 277
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 279
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v3, v3, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 280
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v3, v3, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$7;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->finish()V

    .line 290
    return-void

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to unbind from the service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 282
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
