.class Lcom/parse/ParseQuery$4$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$4;->runFromCacheAsync()Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$4;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseQuery$4$1;->this$1:Lcom/parse/ParseQuery$4;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/parse/ParseQuery$4$1;->this$1:Lcom/parse/ParseQuery$4;

    invoke-static {v0}, Lcom/parse/ParseQuery$4;->access$0(Lcom/parse/ParseQuery$4;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseQuery;->access$3(Lcom/parse/ParseQuery;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseQuery$4$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
