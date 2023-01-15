.class public Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "File.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "TextWriter"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/streams/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextWriterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/io/BufferedWriter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    check-cast p0, Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    .line 497
    return-void
.end method

.method public Flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    check-cast p0, Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 503
    return-void
.end method

.method public Initialize(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "OutputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 453
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 454
    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 453
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->setObject(Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public Initialize2(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "OutputStream"    # Ljava/io/OutputStream;
    .param p2, "Encoding"    # Ljava/lang/String;

    .prologue
    .line 460
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 461
    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 460
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->setObject(Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method public Write(Ljava/lang/String;)V
    .locals 0
    .param p1, "Text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    check-cast p0, Ljava/io/BufferedWriter;

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public WriteLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "Text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    check-cast p0, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public WriteList(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 3
    .param p1, "List"    # Lanywheresoftware/b4a/objects/collections/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    return-void

    .line 487
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "line":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->WriteLine(Ljava/lang/String;)V

    goto :goto_0
.end method
