.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;
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
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    :try_start_0
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-boolean v4, v4, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mIsBound:Z

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v4, v4, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 213
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "command"

    const-string v5, "NOTIF"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v4, "mode"

    const-string v5, "ON"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v4, 0x0

    .line 218
    const/4 v5, 0x1

    .line 217
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 219
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v4, v4, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 220
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 221
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    iget-object v4, v4, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-static {v4}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v1, "intt":Landroid/content/Intent;
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$4;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v4, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void

    .line 226
    .end local v1    # "intt":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 227
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to unbind from the service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
