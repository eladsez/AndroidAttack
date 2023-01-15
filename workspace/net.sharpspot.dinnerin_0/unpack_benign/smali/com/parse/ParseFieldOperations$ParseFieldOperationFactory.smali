.class interface abstract Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;
.super Ljava/lang/Object;
.source "ParseFieldOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseFieldOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ParseFieldOperationFactory"
.end annotation


# virtual methods
.method public abstract decode(Lorg/json/JSONObject;)Lcom/parse/ParseFieldOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
