.class public Lcom/picvision/seaweedweather/utils/UpdateSoft;
.super Landroid/app/ProgressDialog;
.source "UpdateSoft.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DOWNLOADAPK"


# instance fields
.field private context:Landroid/content/Context;

.field private currentTempFilePath:Ljava/lang/String;

.field private down:Z

.field private fileEx:Ljava/lang/String;

.field private fileNa:Ljava/lang/String;

.field private strURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-string v4, "."

    const-string v1, ""

    .line 29
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, ""

    iput-object v1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->currentTempFilePath:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->fileEx:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->fileNa:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->down:Z

    .line 30
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->fileEx:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->fileNa:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->strURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->getFile(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/picvision/seaweedweather/utils/UpdateSoft$1;

    invoke-direct {v0, p0}, Lcom/picvision/seaweedweather/utils/UpdateSoft$1;-><init>(Lcom/picvision/seaweedweather/utils/UpdateSoft;)V

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/utils/UpdateSoft;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->down:Z

    return-void
.end method

.method static synthetic access$1(Lcom/picvision/seaweedweather/utils/UpdateSoft;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->getDataSource(Ljava/lang/String;)V

    return-void
.end method

.method private delFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "myFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    :cond_0
    return-void
.end method

.method private getDataSource(Ljava/lang/String;)V
    .locals 17
    .param p1, "strPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->context:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "\u9519\u8bef\u7684URL"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v9, Ljava/net/URL;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .local v9, "myURL":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 82
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 83
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    .line 85
    .local v7, "length":I
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 86
    .local v6, "is":Ljava/io/InputStream;
    if-nez v6, :cond_1

    .line 87
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "stream is null"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 90
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->fileNa:Ljava/lang/String;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "."

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->fileEx:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 92
    .local v8, "myTempFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/utils/UpdateSoft;->currentTempFilePath:Ljava/lang/String;

    .line 94
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    .local v5, "fos":Ljava/io/FileOutputStream;
    rem-int/lit8 v12, v7, 0x64

    .line 96
    .local v12, "remainder":I
    if-nez v12, :cond_4

    div-int/lit8 v14, v7, 0x64

    move v11, v14

    .line 97
    .local v11, "one":I
    :goto_1
    const/4 v13, 0x0

    .line 98
    .local v13, "total":I
    const/16 v14, 0xfbc

    new-array v2, v14, [B

    .line 100
    .local v2, "buf":[B
    :cond_2
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 101
    .local v10, "numread":I
    if-gtz v10, :cond_5

    .line 113
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->down:Z

    move v14, v0

    if-eqz v14, :cond_3

    .line 114
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->openFile(Ljava/io/File;)V

    .line 117
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, "ex":Ljava/lang/Exception;
    const-string v14, "DOWNLOADAPK"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "error: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 96
    .end local v2    # "buf":[B
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v10    # "numread":I
    .end local v11    # "one":I
    .end local v13    # "total":I
    :cond_4
    add-int v14, v7, v12

    div-int/lit8 v14, v14, 0x64

    move v11, v14

    goto :goto_1

    .line 104
    .restart local v2    # "buf":[B
    .restart local v10    # "numread":I
    .restart local v11    # "one":I
    .restart local v13    # "total":I
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v5, v2, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 105
    add-int/2addr v13, v10

    .line 106
    if-le v13, v11, :cond_6

    .line 107
    div-int v14, v13, v11

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->incrementProgressBy(I)V

    .line 108
    rem-int/2addr v13, v11

    .line 110
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->down:Z

    move v14, v0

    .line 99
    if-nez v14, :cond_2

    goto :goto_2
.end method

.method private getFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Lcom/picvision/seaweedweather/utils/UpdateSoft$2;

    invoke-direct {v1, p0, p1}, Lcom/picvision/seaweedweather/utils/UpdateSoft$2;-><init>(Lcom/picvision/seaweedweather/utils/UpdateSoft;Ljava/lang/String;)V

    .line 66
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const-string v5, "apk"

    .line 141
    const-string v2, ""

    .line 142
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "fName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "end":Ljava/lang/String;
    const-string v3, "m4a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mp3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    const-string v3, "xmf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "wav"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    :cond_0
    const-string v2, "audio"

    .line 164
    :goto_0
    const-string v3, "apk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_1
    return-object v2

    .line 152
    :cond_2
    const-string v3, "3gp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    :cond_3
    const-string v2, "video"

    goto :goto_0

    .line 154
    :cond_4
    const-string v3, "jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 155
    const-string v3, "jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    :cond_5
    const-string v2, "image"

    goto :goto_0

    .line 157
    :cond_6
    const-string v3, "apk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 159
    const-string v2, "application/vnd.android.package-archive"

    goto :goto_0

    .line 161
    :cond_7
    const-string v2, "*"

    goto :goto_0
.end method

.method private openFile(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-direct {p0, p1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "type":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object p0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->context:Landroid/content/Context;

    .end local p0    # "this":Lcom/picvision/seaweedweather/utils/UpdateSoft;
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 137
    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft;->currentTempFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->delFile(Ljava/lang/String;)V

    .line 184
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStop()V

    .line 185
    return-void
.end method
