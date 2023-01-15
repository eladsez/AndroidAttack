.class Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;
.super Landroid/os/Handler;
.source "DownloadManagerAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mManager:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

.field final synthetic this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;


# direct methods
.method public constructor <init>(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)V
    .locals 0
    .param p2, "manager"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->mManager:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    .end local p0    # "this":Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local p0    # "this":Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;
    :pswitch_0
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$0(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$0(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->mManager:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-interface {v0, v1}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadConnectListener;->onDownloadConnect(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$1(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$1(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->mManager:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 158
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 157
    invoke-interface {v0, v1, v2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadUpdateListener;->onDownloadUpdate(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;I)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$2(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$2(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->mManager:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 163
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    invoke-interface {v0, v1, v2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;->onDownloadComplete(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$3(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$3(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;)Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;->mManager:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 168
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$EventHandler;
    check-cast p0, Ljava/lang/Exception;

    .line 167
    invoke-interface {v0, v1, p0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadErrorListener;->onDownloadError(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/Exception;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
