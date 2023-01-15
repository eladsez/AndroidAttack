.class Lcom/parse/ParseFieldOperations$1;
.super Ljava/lang/Object;
.source "ParseFieldOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;)Lcom/parse/ParseFieldOperation;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "op":Lcom/parse/ParseFieldOperation;
    const-string v4, "ops"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 90
    .local v3, "ops":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 94
    return-object v2

    .line 91
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/parse/ParseFieldOperations;->decode(Lorg/json/JSONObject;)Lcom/parse/ParseFieldOperation;

    move-result-object v1

    .line 92
    .local v1, "nextOp":Lcom/parse/ParseFieldOperation;
    invoke-interface {v1, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v2

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
