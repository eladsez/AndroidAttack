.class Lcom/parse/ParseFile$4;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        "Lcom/parse/Task",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field private final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseFile$4;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$4;->val$progressCallback:Lcom/parse/ProgressCallback;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$4;->this$0:Lcom/parse/ParseFile;

    iget-object v1, p0, Lcom/parse/ParseFile$4;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v0, v1, p1}, Lcom/parse/ParseFile;->access$6(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

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

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$4;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
