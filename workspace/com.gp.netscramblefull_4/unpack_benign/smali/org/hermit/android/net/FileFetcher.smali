.class public Lorg/hermit/android/net/FileFetcher;
.super Lorg/hermit/android/net/WebFetcher;
.source "FileFetcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileFetcher"


# instance fields
.field private context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/io/File;

.field private tempName:Ljava/lang/String;

.field private tempPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/hermit/android/net/WebFetcher$Listener;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p5, "timeout"    # J

    .prologue
    .line 59
    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/hermit/android/net/FileFetcher;-><init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p5, "timeout"    # J
    .param p7, "newer"    # J

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-wide v3, p5

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lorg/hermit/android/net/WebFetcher;-><init>(Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V

    .line 82
    iput-object p1, p0, Lorg/hermit/android/net/FileFetcher;->context:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lorg/hermit/android/net/FileFetcher;->fileName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lorg/hermit/android/net/FileFetcher;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/net/FileFetcher;->filePath:Ljava/io/File;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/hermit/android/net/FileFetcher;->fileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/net/FileFetcher;->tempName:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/hermit/android/net/FileFetcher;->filePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/hermit/android/net/FileFetcher;->tempName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/hermit/android/net/FileFetcher;->tempPath:Ljava/io/File;

    .line 88
    return-void
.end method

.method private fetchFile(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "conn"    # Ljava/net/URLConnection;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/android/net/WebFetcher$FetchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v3, 0x0

    .line 153
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/hermit/android/net/FileFetcher;->context:Landroid/content/Context;

    iget-object v5, p0, Lorg/hermit/android/net/FileFetcher;->tempName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 154
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 156
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "count":I
    if-gez v1, :cond_1

    .line 173
    if-eqz v3, :cond_0

    .line 174
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 158
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/hermit/android/net/FileFetcher;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    new-instance v4, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v5, "timed out"

    invoke-direct {v4, v5}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    :catchall_0
    move-exception v4

    .line 173
    if-eqz v3, :cond_2

    .line 174
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    :cond_2
    :goto_2
    throw v4

    .line 161
    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    :cond_3
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    const-wide/16 v4, 0x32

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    new-instance v4, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v5, "interrupted"

    invoke-direct {v4, v5}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    goto :goto_2

    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    :catch_2
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected handle(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "conn"    # Ljava/net/URLConnection;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/android/net/WebFetcher$FetchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "timed out"

    .line 109
    invoke-virtual {p2}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    .line 114
    .local v0, "date":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/hermit/android/net/FileFetcher;->fetchFile(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/InputStream;)V

    .line 117
    invoke-virtual {p0}, Lorg/hermit/android/net/FileFetcher;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    new-instance v2, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v3, "timed out"

    invoke-direct {v2, v3}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v2

    .line 133
    iget-object v3, p0, Lorg/hermit/android/net/FileFetcher;->tempPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lorg/hermit/android/net/FileFetcher;->tempPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 135
    :cond_0
    throw v2

    .line 121
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/hermit/android/net/FileFetcher;->filePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 122
    iget-object v2, p0, Lorg/hermit/android/net/FileFetcher;->tempPath:Ljava/io/File;

    iget-object v3, p0, Lorg/hermit/android/net/FileFetcher;->filePath:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 125
    invoke-virtual {p0}, Lorg/hermit/android/net/FileFetcher;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    new-instance v2, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v3, "timed out"

    invoke-direct {v2, v3}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_2
    iget-object v2, p0, Lorg/hermit/android/net/FileFetcher;->dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

    iget-object v3, p0, Lorg/hermit/android/net/FileFetcher;->filePath:Ljava/io/File;

    invoke-interface {v2, p1, v3, v0, v1}, Lorg/hermit/android/net/WebFetcher$Listener;->onWebData(Ljava/net/URL;Ljava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iget-object v2, p0, Lorg/hermit/android/net/FileFetcher;->tempPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lorg/hermit/android/net/FileFetcher;->tempPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 136
    :cond_3
    return-void
.end method
