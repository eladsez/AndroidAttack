.class Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnDownloadCompleteListener"
.end annotation


# instance fields
.field private j:I

.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;I)V
    .locals 0
    .param p2, "i"    # I

    .prologue
    .line 150
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p2, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->j:I

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/Object;)V
    .locals 6
    .param p1, "manager"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v1, v1, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    iget v2, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->j:I

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/com.picvision.seaweedweather/weather"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v3

    aput-object v3, v1, v2

    .line 157
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v1, v1, Lcom/picvision/seaweedweather/main;->downCount:Ljava/util/ArrayList;

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v1, v1, Lcom/picvision/seaweedweather/main;->downCount:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    iget v2, v2, Lcom/picvision/seaweedweather/main;->downCountNum:I

    if-ne v1, v2, :cond_0

    .line 160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 161
    .local v0, "mess":Landroid/os/Message;
    iget v1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v1}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    const/4 v2, 0x0

    iput v2, v1, Lcom/picvision/seaweedweather/main;->downCountNum:I

    .line 165
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v1, v1, Lcom/picvision/seaweedweather/main;->downCount:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 168
    .end local v0    # "mess":Landroid/os/Message;
    :cond_0
    return-void
.end method
