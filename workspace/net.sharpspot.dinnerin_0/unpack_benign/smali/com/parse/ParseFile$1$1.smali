.class Lcom/parse/ParseFile$1$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$1;->then(Lcom/parse/Task;)Ljava/lang/Void;
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
        "Lcom/parse/ParseCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$1;

.field private final synthetic val$sessionToken:Ljava/lang/String;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$1;Ljava/lang/String;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseFile$1$1;->this$1:Lcom/parse/ParseFile$1;

    iput-object p2, p0, Lcom/parse/ParseFile$1$1;->val$sessionToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseFile$1$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Lcom/parse/ParseFile$1$1;->this$1:Lcom/parse/ParseFile$1;

    invoke-static {v1}, Lcom/parse/ParseFile$1;->access$1(Lcom/parse/ParseFile$1;)Lcom/parse/ParseFile;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseFile$1$1;->val$sessionToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/parse/ParseFile;->access$0(Lcom/parse/ParseFile;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 232
    .local v0, "command":Lcom/parse/ParseCommand;
    iget-object v1, p0, Lcom/parse/ParseFile$1$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$1$1$1;-><init>(Lcom/parse/ParseFile$1$1;Lcom/parse/ParseCommand;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 240
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
    invoke-virtual {p0}, Lcom/parse/ParseFile$1$1;->call()Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method
