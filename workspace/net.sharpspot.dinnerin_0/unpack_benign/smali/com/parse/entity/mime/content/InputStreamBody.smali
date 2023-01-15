.class public Lcom/parse/entity/mime/content/InputStreamBody;
.super Lcom/parse/entity/mime/content/AbstractContentBody;
.source "InputStreamBody.java"


# instance fields
.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/parse/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/parse/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    .line 48
    iput-object p3, p0, Lcom/parse/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parse/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Output stream may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    const/16 v2, 0x1000

    :try_start_0
    new-array v1, v2, [B

    .line 74
    .local v1, "tmp":[B
    :goto_0
    iget-object v2, p0, Lcom/parse/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "l":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v2, p0, Lcom/parse/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 81
    return-void

    .line 75
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v0    # "l":I
    .end local v1    # "tmp":[B
    :catchall_0
    move-exception v2

    .line 79
    iget-object v3, p0, Lcom/parse/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 80
    throw v2
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/parse/entity/mime/content/InputStreamBody;->writeTo(Ljava/io/OutputStream;)V

    .line 65
    return-void
.end method
