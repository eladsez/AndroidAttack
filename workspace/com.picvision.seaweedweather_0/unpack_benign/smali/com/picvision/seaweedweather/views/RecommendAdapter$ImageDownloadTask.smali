.class Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;
.super Landroid/os/AsyncTask;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/views/RecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private imgurl:Ljava/lang/String;

.field final synthetic this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;


# direct methods
.method private constructor <init>(Lcom/picvision/seaweedweather/views/RecommendAdapter;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;->this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/picvision/seaweedweather/views/RecommendAdapter;Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;-><init>(Lcom/picvision/seaweedweather/views/RecommendAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sdcard/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p1, v3

    .end local p0    # "this":Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;
    check-cast p0, Ljava/lang/String;

    const-string v1, "http://211.95.79.112/"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/picvision/seaweedweather/utils/Util;->saveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/picvision/seaweedweather/views/RecommendAdapter;->access$0()Ljava/util/List;

    move-result-object v0

    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 204
    const-string v1, "test"

    const-string v2, "onPostExecute() -> sendBraodcast()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/picvision/seaweedweather/views/RecommendAdapter;->access$0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "updateSpPics"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "position"

    iget-object v2, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;->this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-static {v2}, Lcom/picvision/seaweedweather/views/RecommendAdapter;->access$1(Lcom/picvision/seaweedweather/views/RecommendAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;->this$0:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-static {v1}, Lcom/picvision/seaweedweather/views/RecommendAdapter;->access$2(Lcom/picvision/seaweedweather/views/RecommendAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/picvision/seaweedweather/views/RecommendAdapter$ImageDownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
