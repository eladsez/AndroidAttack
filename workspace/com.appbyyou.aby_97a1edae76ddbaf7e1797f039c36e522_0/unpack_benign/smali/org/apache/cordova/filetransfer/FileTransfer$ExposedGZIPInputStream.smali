.class Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;
.super Ljava/util/zip/GZIPInputStream;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExposedGZIPInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getInflater()Ljava/util/zip/Inflater;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;->inf:Ljava/util/zip/Inflater;

    return-object v0
.end method
