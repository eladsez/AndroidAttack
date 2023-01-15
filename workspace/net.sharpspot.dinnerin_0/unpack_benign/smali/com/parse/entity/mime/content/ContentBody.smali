.class public interface abstract Lcom/parse/entity/mime/content/ContentBody;
.super Ljava/lang/Object;
.source "ContentBody.java"

# interfaces
.implements Lcom/parse/entity/mime/content/ContentDescriptor;


# virtual methods
.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
