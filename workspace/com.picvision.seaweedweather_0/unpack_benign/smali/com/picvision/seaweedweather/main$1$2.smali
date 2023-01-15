.class Lcom/picvision/seaweedweather/main$1$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downloadCount:I

.field isExists:Z

.field final synthetic this$1:Lcom/picvision/seaweedweather/main$1;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main$1;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$1$2;->this$1:Lcom/picvision/seaweedweather/main$1;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput v0, p0, Lcom/picvision/seaweedweather/main$1$2;->downloadCount:I

    .line 296
    iput-boolean v0, p0, Lcom/picvision/seaweedweather/main$1$2;->isExists:Z

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/Object;)V
    .locals 10
    .param p1, "manager"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 300
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/data/data/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/picvision/seaweedweather/main$1$2;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v7}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v7

    invoke-virtual {v7}, Lcom/picvision/seaweedweather/main;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/test.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "isComplete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/Util;->search(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 304
    .local v5, "t":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    invoke-static {v0}, Lcom/picvision/seaweedweather/utils/Util;->getSpListFromXML(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 305
    .local v4, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    if-eqz v4, :cond_0

    .line 306
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 307
    .local v3, "mess":Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 308
    iget-object v6, p0, Lcom/picvision/seaweedweather/main$1$2;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v6}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v6

    invoke-static {v6}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "spList"

    check-cast v4, Ljava/util/ArrayList;

    .end local v4    # "spList":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 311
    iget-object v6, p0, Lcom/picvision/seaweedweather/main$1$2;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v6}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v6

    const-class v7, Lcom/picvision/seaweedweather/SpActivity;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 312
    iget-object v6, p0, Lcom/picvision/seaweedweather/main$1$2;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v6}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/picvision/seaweedweather/main;->startActivity(Landroid/content/Intent;)V

    .line 313
    iput v8, p0, Lcom/picvision/seaweedweather/main$1$2;->downloadCount:I

    .line 314
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 315
    iput-boolean v8, p0, Lcom/picvision/seaweedweather/main$1$2;->isExists:Z

    .line 390
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 317
    .end local v3    # "mess":Landroid/os/Message;
    .restart local v4    # "spList":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    :cond_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 318
    .restart local v3    # "mess":Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 319
    iget-object v6, p0, Lcom/picvision/seaweedweather/main$1$2;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v6}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v6

    invoke-static {v6}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    new-instance v3, Landroid/os/Message;

    .end local v3    # "mess":Landroid/os/Message;
    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 321
    .restart local v3    # "mess":Landroid/os/Message;
    const/16 v6, 0x64

    iput v6, v3, Landroid/os/Message;->what:I

    .line 322
    iget-object v6, p0, Lcom/picvision/seaweedweather/main$1$2;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v6}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v6

    invoke-static {v6}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
