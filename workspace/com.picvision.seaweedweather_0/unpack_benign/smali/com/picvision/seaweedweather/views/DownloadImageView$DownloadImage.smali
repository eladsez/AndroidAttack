.class Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;
.super Ljava/lang/Thread;
.source "DownloadImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/views/DownloadImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadImage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/views/DownloadImageView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 67
    :cond_0
    const-wide/16 v12, 0x64

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    invoke-static {v12}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$0(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    invoke-static {v12}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$0(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 76
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "sdcard/"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v14, v0

    invoke-static {v14}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$0(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "http://211.95.79.112/"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$1(Lcom/picvision/seaweedweather/views/DownloadImageView;Ljava/lang/String;)V

    .line 77
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    invoke-static {v12}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$0(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v11, "sourceUrl":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 79
    .local v2, "conn":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 80
    .local v5, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    .line 82
    .local v4, "fileSize":I
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    invoke-static {v12}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$2(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v10, "savefile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    const v13, 0x7f02003c

    invoke-virtual {v12, v13}, Lcom/picvision/seaweedweather/views/DownloadImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 86
    new-instance v6, Ljava/io/FileOutputStream;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    invoke-static {v12}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$2(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 86
    invoke-direct {v6, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 89
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 90
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 91
    .local v8, "readCount":I
    const/4 v9, 0x0

    .line 92
    .local v9, "readNum":I
    const/4 v7, 0x0

    .line 93
    .local v7, "prevPercent":I
    :cond_1
    :goto_1
    if-ge v8, v4, :cond_2

    const/4 v12, -0x1

    if-ne v9, v12, :cond_4

    .line 100
    :cond_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$3(Lcom/picvision/seaweedweather/views/DownloadImageView;Z)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v13, v0

    invoke-static {v13}, Lcom/picvision/seaweedweather/views/DownloadImageView;->access$2(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/picvision/seaweedweather/views/DownloadImageView;->setImageURI(Landroid/net/Uri;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->this$0:Lcom/picvision/seaweedweather/views/DownloadImageView;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/picvision/seaweedweather/views/DownloadImageView;->postInvalidate()V

    .line 105
    const-string v12, "!!!"

    const-string v13, "pic downloaded!"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "fileSize":I
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v7    # "prevPercent":I
    .end local v8    # "readCount":I
    .end local v9    # "readNum":I
    .end local v10    # "savefile":Ljava/io/File;
    .end local v11    # "sourceUrl":Ljava/net/URL;
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 111
    return-void

    .line 68
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "fileSize":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "prevPercent":I
    .restart local v8    # "readCount":I
    .restart local v9    # "readNum":I
    .restart local v10    # "savefile":Ljava/io/File;
    .restart local v11    # "sourceUrl":Ljava/net/URL;
    :cond_4
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 95
    const/4 v12, -0x1

    if-le v9, v12, :cond_1

    .line 96
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    add-int/2addr v8, v9

    goto :goto_1

    .line 107
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "fileSize":I
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v7    # "prevPercent":I
    .end local v8    # "readCount":I
    .end local v9    # "readNum":I
    .end local v10    # "savefile":Ljava/io/File;
    .end local v11    # "sourceUrl":Ljava/net/URL;
    :catch_1
    move-exception v12

    move-object v3, v12

    .line 108
    .local v3, "e":Ljava/lang/Exception;
    const-string v12, "MyError"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
