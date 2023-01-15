.class Lcom/parse/ParseCommand$5$1;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand$5;->then(Lcom/parse/Task;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseCommand$5;

.field private final synthetic val$delayTaskSource:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand$5;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommand$5$1;->this$1:Lcom/parse/ParseCommand$5;

    iput-object p2, p0, Lcom/parse/ParseCommand$5$1;->val$delayTaskSource:Lcom/parse/Task$TaskCompletionSource;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/parse/ParseCommand$5$1;->val$delayTaskSource:Lcom/parse/Task$TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 387
    return-void
.end method
