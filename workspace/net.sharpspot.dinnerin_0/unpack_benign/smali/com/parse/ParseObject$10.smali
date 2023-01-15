.class Lcom/parse/ParseObject$10;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveEventually(Lcom/parse/SaveCallback;)V
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$cache:Lcom/parse/ParseCommandCache;

.field final synthetic val$succeeded:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/Capture;Lcom/parse/ParseCommandCache;)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$10;->val$succeeded:Lcom/parse/Capture;

    iput-object p3, p0, Lcom/parse/ParseObject$10;->val$cache:Lcom/parse/ParseCommandCache;

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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$10;->val$succeeded:Lcom/parse/Capture;

    invoke-virtual {v0}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/parse/ParseObject$10;->val$cache:Lcom/parse/ParseCommandCache;

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    .line 1137
    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/parse/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$10;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
