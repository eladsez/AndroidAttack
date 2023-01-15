.class Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;
.super Landroid/os/AsyncTask;
.source "BeadImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/layout/BeadImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private imageview:Landroid/widget/ImageView;

.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadImageCache;


# direct methods
.method public constructor <init>(Ljp/beyond/sdk/layout/BeadImageCache;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 51
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->this$0:Ljp/beyond/sdk/layout/BeadImageCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->imageview:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method private getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 86
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 89
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 93
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 57
    aget-object v1, p1, v4

    .line 59
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->bmp:Landroid/graphics/Bitmap;

    .line 60
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->this$0:Ljp/beyond/sdk/layout/BeadImageCache;

    invoke-static {v2}, Ljp/beyond/sdk/layout/BeadImageCache;->access$0(Ljp/beyond/sdk/layout/BeadImageCache;)Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v3}, Ljp/beyond/sdk/layout/BeadImageCache$TCLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2

    .line 64
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadImageCache$SetImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
