.class Lcom/parse/ParseSetOperation;
.super Ljava/lang/Object;
.source "ParseSetOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public encode()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 0
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 22
    return-object p0
.end method
