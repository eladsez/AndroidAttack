.class Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;
.super Landroid/os/AsyncTask;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/utilities/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Ljp/beyond/sdk/utilities/FileUtil;


# direct methods
.method public constructor <init>(Ljp/beyond/sdk/utilities/FileUtil;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    iput-object p1, p0, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->this$0:Ljp/beyond/sdk/utilities/FileUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 389
    iput-object p2, p0, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->context:Landroid/content/Context;

    .line 390
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->context:Landroid/content/Context;

    const-string v16, "power"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 397
    .local v10, "pm":Landroid/os/PowerManager;
    const/4 v15, 0x1

    .line 398
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 397
    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .line 399
    .local v14, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 402
    const/4 v7, 0x0

    .line 403
    .local v7, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 404
    .local v8, "output":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 406
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-direct {v13, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 407
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 408
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 412
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 413
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Server returned HTTP "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 414
    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 413
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 441
    if-eqz v8, :cond_0

    .line 442
    :try_start_1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 443
    :cond_0
    if-eqz v7, :cond_1

    .line 444
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 448
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 449
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 452
    :cond_2
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 454
    .end local v13    # "url":Ljava/net/URL;
    :goto_1
    return-object v15

    .line 418
    .restart local v13    # "url":Ljava/net/URL;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 421
    .local v6, "fileLength":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 422
    new-instance v9, Ljava/io/FileOutputStream;

    const-string v15, "/sdcard/file_name.extension"

    invoke-direct {v9, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    .end local v8    # "output":Ljava/io/OutputStream;
    .local v9, "output":Ljava/io/OutputStream;
    const/16 v15, 0x1000

    :try_start_4
    new-array v4, v15, [B

    .line 425
    .local v4, "data":[B
    const-wide/16 v11, 0x0

    .line 427
    .local v11, "total":J
    :goto_2
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v3

    .local v3, "count":I
    const/4 v15, -0x1

    if-ne v3, v15, :cond_7

    .line 441
    if-eqz v9, :cond_4

    .line 442
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 443
    :cond_4
    if-eqz v7, :cond_5

    .line 444
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 448
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 449
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 452
    :cond_6
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 454
    const/4 v15, 0x0

    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_1

    .line 429
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :cond_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->isCancelled()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v15

    if-eqz v15, :cond_b

    .line 441
    if-eqz v9, :cond_8

    .line 442
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 443
    :cond_8
    if-eqz v7, :cond_9

    .line 444
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 448
    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    .line 449
    :try_start_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 452
    :cond_a
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 430
    const/4 v15, 0x0

    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_1

    .line 431
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :cond_b
    int-to-long v15, v3

    add-long/2addr v11, v15

    .line 433
    if-lez v6, :cond_c

    .line 434
    const/4 v15, 0x1

    :try_start_a
    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const-wide/16 v17, 0x64

    mul-long v17, v17, v11

    int-to-long v0, v6

    move-wide/from16 v19, v0

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 435
    :cond_c
    const/4 v15, 0x0

    invoke-virtual {v9, v4, v15, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    .line 437
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v11    # "total":J
    :catch_0
    move-exception v5

    move-object v8, v9

    .line 438
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v13    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/OutputStream;
    :goto_5
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v15

    .line 441
    if-eqz v8, :cond_d

    .line 442
    :try_start_c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 443
    :cond_d
    if-eqz v7, :cond_e

    .line 444
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 448
    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    .line 449
    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 452
    :cond_f
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 439
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 441
    :goto_7
    if-eqz v8, :cond_10

    .line 442
    :try_start_e
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 443
    :cond_10
    if-eqz v7, :cond_11

    .line 444
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 448
    :cond_11
    :goto_8
    if-eqz v2, :cond_12

    .line 449
    :try_start_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 450
    :cond_12
    throw v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 451
    :catchall_1
    move-exception v15

    .line 452
    :goto_9
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 453
    throw v15

    .line 451
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v11    # "total":J
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v15

    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_9

    .line 446
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v15

    goto/16 :goto_3

    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v11    # "total":J
    .end local v13    # "url":Ljava/net/URL;
    .restart local v8    # "output":Ljava/io/OutputStream;
    :catch_2
    move-exception v16

    goto :goto_8

    .line 439
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v15

    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_7

    .line 446
    .end local v6    # "fileLength":I
    .end local v13    # "url":Ljava/net/URL;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    goto :goto_6

    .line 437
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    goto :goto_5

    .line 446
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v11    # "total":J
    .restart local v13    # "url":Ljava/net/URL;
    :catch_5
    move-exception v15

    goto :goto_4

    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v11    # "total":J
    .restart local v8    # "output":Ljava/io/OutputStream;
    :catch_6
    move-exception v16

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    iget-object v0, p0, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->context:Landroid/content/Context;

    const-string v1, "File downloaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 458
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 460
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljp/beyond/sdk/utilities/FileUtil$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
