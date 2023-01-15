.class Lcn/com/picvision/view/AdvertView$7;
.super Ljava/lang/Object;
.source "AdvertView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/picvision/view/AdvertView;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1290
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$19(Lcn/com/picvision/view/AdvertView;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1291
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1292
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 1293
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 1302
    :cond_0
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$31(Lcn/com/picvision/view/AdvertView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1303
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$31(Lcn/com/picvision/view/AdvertView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1304
    .local v3, "size":I
    const/4 v1, 0x0

    .line 1305
    .local v1, "asyn":Lcn/com/picvision/util/ThreadDownload;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_3

    .line 1314
    .end local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcn/com/picvision/view/AdvertView;->access$22(Lcn/com/picvision/view/AdvertView;I)V

    .line 1315
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcn/com/picvision/view/AdvertView;->access$32(Lcn/com/picvision/view/AdvertView;I)V

    .line 1316
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1317
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 1320
    :try_start_0
    invoke-static {}, Lcn/com/picvision/util/TextThread;->yield()V

    .line 1321
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/picvision/util/TextThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1328
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sdcard/app/pvmobad"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcn/com/picvision/view/AdvertView;->access$33(Lcn/com/picvision/view/AdvertView;Ljava/io/File;)V

    .line 1329
    return-void

    .line 1307
    .restart local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$7;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$31(Lcn/com/picvision/view/AdvertView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcn/com/picvision/util/ThreadDownload;

    move-object v1, v0

    .line 1308
    invoke-virtual {v1}, Lcn/com/picvision/util/ThreadDownload;->stop()V

    .line 1309
    invoke-virtual {v1}, Lcn/com/picvision/util/ThreadDownload;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1305
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1323
    .end local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1322
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1310
    .restart local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catch_2
    move-exception v4

    goto :goto_2
.end method
