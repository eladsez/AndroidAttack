.class public interface abstract Lcom/parse/codec/StringDecoder;
.super Ljava/lang/Object;
.source "StringDecoder.java"

# interfaces
.implements Lcom/parse/codec/Decoder;


# virtual methods
.method public abstract decode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/DecoderException;
        }
    .end annotation
.end method
