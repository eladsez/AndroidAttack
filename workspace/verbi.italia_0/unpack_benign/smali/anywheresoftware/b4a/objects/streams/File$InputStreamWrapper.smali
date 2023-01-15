.class public Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "File.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "InputStream"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/streams/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStreamWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public BytesAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public Close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 372
    return-void
.end method

.method public InitializeFromBytesArray([BII)V
    .locals 1
    .param p1, "Buffer"    # [B
    .param p2, "StartOffset"    # I
    .param p3, "MaxCount"    # I

    .prologue
    .line 365
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    .line 366
    return-void
.end method

.method public ReadBytes([BII)I
    .locals 1
    .param p1, "Buffer"    # [B
    .param p2, "StartOffset"    # I
    .param p3, "MaxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
