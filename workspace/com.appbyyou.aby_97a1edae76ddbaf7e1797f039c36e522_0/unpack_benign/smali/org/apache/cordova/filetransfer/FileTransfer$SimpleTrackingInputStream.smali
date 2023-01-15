.class Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;
.super Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTrackingInputStream"
.end annotation


# instance fields
.field private bytesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;->bytesRead:J

    .line 147
    return-void
.end method

.method private updateBytesRead(I)I
    .locals 4
    .param p1, "newBytesRead"    # I

    .prologue
    .line 150
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 151
    iget-wide v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;->bytesRead:J

    .line 153
    :cond_0
    return p1
.end method


# virtual methods
.method public getTotalRawBytesRead()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;->updateBytesRead(I)I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-super {p0, p1}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->read([B)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;->updateBytesRead(I)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->read([BII)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;->updateBytesRead(I)I

    move-result v0

    return v0
.end method
