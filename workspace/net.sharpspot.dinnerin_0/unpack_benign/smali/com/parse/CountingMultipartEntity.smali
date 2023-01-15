.class Lcom/parse/CountingMultipartEntity;
.super Lcom/parse/entity/mime/MultipartEntity;
.source "CountingMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/CountingMultipartEntity$CountingOutputStream;
    }
.end annotation


# instance fields
.field private final progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method public constructor <init>(Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/parse/entity/mime/MultipartEntity;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "mode"    # Lcom/parse/entity/mime/HttpMultipartMode;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/entity/mime/MultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;)V

    .line 27
    iput-object p2, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "mode"    # Lcom/parse/entity/mime/HttpMultipartMode;
    .param p2, "boundary"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/entity/mime/MultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 33
    iput-object p4, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/parse/CountingMultipartEntity;->progressCallback:Lcom/parse/ProgressCallback;

    .line 39
    invoke-virtual {p0}, Lcom/parse/CountingMultipartEntity;->getContentLength()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/parse/ProgressCallback;J)V

    .line 38
    invoke-super {p0, v0}, Lcom/parse/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 40
    return-void
.end method
