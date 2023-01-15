.class public interface abstract Lcom/parse/codec/StringEncoder;
.super Ljava/lang/Object;
.source "StringEncoder.java"

# interfaces
.implements Lcom/parse/codec/Encoder;


# virtual methods
.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/EncoderException;
        }
    .end annotation
.end method
