.class Lcom/parse/ParseQuery$7$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$7;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$7;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseQuery$7$1;->this$1:Lcom/parse/ParseQuery$7;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lcom/parse/Task;

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$7$1;->then(Lcom/parse/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$7$1;->this$1:Lcom/parse/ParseQuery$7;

    invoke-static {v0}, Lcom/parse/ParseQuery$7;->access$1(Lcom/parse/ParseQuery$7;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/parse/ParseQuery;->access$9(Lcom/parse/ParseQuery;J)V

    .line 486
    iget-object v0, p0, Lcom/parse/ParseQuery$7$1;->this$1:Lcom/parse/ParseQuery$7;

    invoke-static {v0}, Lcom/parse/ParseQuery$7;->access$1(Lcom/parse/ParseQuery$7;)Lcom/parse/ParseQuery;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/parse/ParseQuery;->access$10(Lcom/parse/ParseQuery;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
