.class Lcn/com/picvision/view/AdvertView$6;
.super Ljava/lang/Object;
.source "AdvertView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView;->refresh(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/picvision/view/AdvertView;

.field private final synthetic val$maps:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    iput-object p2, p0, Lcn/com/picvision/view/AdvertView$6;->val$maps:Ljava/util/HashMap;

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1179
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$19(Lcn/com/picvision/view/AdvertView;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1180
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1181
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 1182
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$21(Lcn/com/picvision/view/AdvertView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 1191
    :cond_0
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$31(Lcn/com/picvision/view/AdvertView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1192
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$31(Lcn/com/picvision/view/AdvertView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1193
    .local v3, "size":I
    const/4 v1, 0x0

    .line 1194
    .local v1, "asyn":Lcn/com/picvision/util/ThreadDownload;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_3

    .line 1204
    .end local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcn/com/picvision/view/AdvertView;->access$22(Lcn/com/picvision/view/AdvertView;I)V

    .line 1205
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcn/com/picvision/view/AdvertView;->access$32(Lcn/com/picvision/view/AdvertView;I)V

    .line 1207
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1208
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v4

    iput-boolean v7, v4, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 1211
    :try_start_0
    invoke-static {}, Lcn/com/picvision/util/TextThread;->yield()V

    .line 1212
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/picvision/util/TextThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1219
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sdcard/app/pvmobad"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcn/com/picvision/view/AdvertView;->access$33(Lcn/com/picvision/view/AdvertView;Ljava/io/File;)V

    .line 1221
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    iget-object v5, p0, Lcn/com/picvision/view/AdvertView$6;->val$maps:Ljava/util/HashMap;

    invoke-static {v4, v5}, Lcn/com/picvision/view/AdvertView;->access$34(Lcn/com/picvision/view/AdvertView;Ljava/util/HashMap;)V

    .line 1222
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4, v7}, Lcn/com/picvision/view/AdvertView;->access$22(Lcn/com/picvision/view/AdvertView;I)V

    .line 1223
    const-string v4, "Refresh"

    const-string v5, "Go Here!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void

    .line 1196
    .restart local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcn/com/picvision/view/AdvertView$6;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v4}, Lcn/com/picvision/view/AdvertView;->access$31(Lcn/com/picvision/view/AdvertView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcn/com/picvision/util/ThreadDownload;

    move-object v1, v0

    .line 1197
    invoke-virtual {v1}, Lcn/com/picvision/util/ThreadDownload;->stop()V

    .line 1198
    invoke-virtual {v1}, Lcn/com/picvision/util/ThreadDownload;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1194
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1214
    .end local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1213
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1199
    .restart local v1    # "asyn":Lcn/com/picvision/util/ThreadDownload;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catch_2
    move-exception v4

    goto :goto_2
.end method
