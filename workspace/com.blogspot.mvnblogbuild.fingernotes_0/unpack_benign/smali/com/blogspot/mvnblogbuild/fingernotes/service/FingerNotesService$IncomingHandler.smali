.class Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService$IncomingHandler;
.super Landroid/os/Handler;
.source "FingerNotesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService$IncomingHandler;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "command"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "command":Ljava/lang/String;
    const-string v2, "NOTIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "mode":Ljava/lang/String;
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService$IncomingHandler;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService$IncomingHandler;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesService;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
