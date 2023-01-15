.class Lcom/parse/ParseCloud$1;
.super Ljava/lang/Object;
.source "ParseCloud.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCloud;->callFunctionAsync(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseCloud;->access$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method
