.class public Lcom/parse/CountingMultipartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/CountingMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private hasReportedDone:Z

.field private final progressCallback:Lcom/parse/ProgressCallback;

.field private totalSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/parse/ProgressCallback;J)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;
    .param p3, "totalSize"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    .line 52
    iput-object p2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->progressCallback:Lcom/parse/ProgressCallback;

    .line 53
    iput-wide p3, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->totalSize:J

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 55
    return-void
.end method

.method private notifyCallback()V
    .locals 4

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-wide v1, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->totalSize:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 77
    .local v0, "progressToReport":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v1, v2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 79
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    goto :goto_0
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 67
    iget-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 68
    invoke-direct {p0}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->notifyCallback()V

    .line 69
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iget-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 61
    invoke-direct {p0}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->notifyCallback()V

    .line 62
    return-void
.end method
