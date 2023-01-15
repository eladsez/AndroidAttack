.class Lcom/parse/ParseDeleteOperation;
.super Ljava/lang/Object;
.source "ParseDeleteOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# static fields
.field private static final defaultInstance:Lcom/parse/ParseDeleteOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/parse/ParseDeleteOperation;

    invoke-direct {v0}, Lcom/parse/ParseDeleteOperation;-><init>()V

    sput-object v0, Lcom/parse/ParseDeleteOperation;->defaultInstance:Lcom/parse/ParseDeleteOperation;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/parse/ParseDeleteOperation;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/parse/ParseDeleteOperation;->defaultInstance:Lcom/parse/ParseDeleteOperation;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic encode()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseDeleteOperation;->encode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "Delete"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 0
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 26
    return-object p0
.end method
