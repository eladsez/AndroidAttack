.class Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;
.super Ljava/lang/Object;
.source "DownloadManagerAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

.field private final synthetic val$savePath:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    iput-object p2, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->val$savePath:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 36
    :try_start_0
    iget-object v12, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$4(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;I)V

    .line 37
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->val$url:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v11, "sourceUrl":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 39
    .local v1, "conn":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 41
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 43
    .local v3, "fileSize":I
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->val$savePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v10, "savefile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 45
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 47
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 49
    new-instance v5, Ljava/io/FileOutputStream;

    .line 50
    iget-object v12, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->val$savePath:Ljava/lang/String;

    const/4 v13, 0x1

    .line 49
    invoke-direct {v5, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 52
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 53
    .local v0, "buffer":[B
    const/4 v8, 0x0

    .line 54
    .local v8, "readCount":I
    const/4 v9, 0x0

    .line 55
    .local v9, "readNum":I
    const/4 v7, 0x0

    .line 56
    .local v7, "prevPercent":I
    :cond_1
    :goto_0
    if-ge v8, v3, :cond_2

    const/4 v12, -0x1

    if-ne v9, v12, :cond_3

    .line 73
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 74
    iget-object v12, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->val$savePath:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$6(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;ILjava/lang/Object;)V

    .line 80
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v3    # "fileSize":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .end local v7    # "prevPercent":I
    .end local v8    # "readCount":I
    .end local v9    # "readNum":I
    .end local v10    # "savefile":Ljava/io/File;
    .end local v11    # "sourceUrl":Ljava/net/URL;
    :goto_1
    return-void

    .line 57
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v3    # "fileSize":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "prevPercent":I
    .restart local v8    # "readCount":I
    .restart local v9    # "readNum":I
    .restart local v10    # "savefile":Ljava/io/File;
    .restart local v11    # "sourceUrl":Ljava/net/URL;
    :cond_3
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 58
    const/4 v12, -0x1

    if-le v9, v12, :cond_1

    .line 59
    const/4 v12, 0x0

    invoke-virtual {v5, v0, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 60
    add-int/2addr v8, v9

    .line 62
    mul-int/lit8 v12, v8, 0x64

    div-int v6, v12, v3

    .line 63
    .local v6, "percent":I
    if-le v6, v7, :cond_1

    .line 65
    iget-object v12, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    const/4 v13, 0x1

    invoke-static {v12, v13, v6, v8}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$5(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    move v7, v6

    goto :goto_0

    .line 76
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v3    # "fileSize":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .end local v6    # "percent":I
    .end local v7    # "prevPercent":I
    .end local v8    # "readCount":I
    .end local v9    # "readNum":I
    .end local v10    # "savefile":Ljava/io/File;
    .end local v11    # "sourceUrl":Ljava/net/URL;
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$1;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    const/4 v13, -0x1

    invoke-static {v12, v13, v2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$6(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;ILjava/lang/Object;)V

    .line 78
    const-string v12, "MyError"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
