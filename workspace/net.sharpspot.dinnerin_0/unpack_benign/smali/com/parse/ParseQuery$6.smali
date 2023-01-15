.class Lcom/parse/ParseQuery$6;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findFromNetworkAsync(Z)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field private final synthetic val$shouldRetry:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    iput-boolean p2, p0, Lcom/parse/ParseQuery$6;->val$shouldRetry:Z

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseQuery$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/parse/ParseQuery$6;->val$shouldRetry:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    invoke-static {v0}, Lcom/parse/ParseQuery;->access$6(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 470
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
