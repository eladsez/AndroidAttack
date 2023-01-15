.class abstract Lcom/parse/BackgroundTask;
.super Landroid/os/AsyncTask;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/parse/ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private exception:Lcom/parse/ParseException;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/BackgroundTask;, "Lcom/parse/BackgroundTask<TT;>;"
    .local p1, "theCallback":Lcom/parse/ParseCallback;, "Lcom/parse/ParseCallback<TT;>;"
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/parse/BackgroundTask;->result:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/parse/BackgroundTask;->exception:Lcom/parse/ParseException;

    .line 29
    iput-object p1, p0, Lcom/parse/BackgroundTask;->callback:Lcom/parse/ParseCallback;

    .line 30
    return-void
.end method

.method static executeTask(Lcom/parse/BackgroundTask;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/BackgroundTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "task":Lcom/parse/BackgroundTask;, "Lcom/parse/BackgroundTask<*>;"
    const/4 v1, 0x0

    .line 63
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/parse/BackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return v1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parse/BackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .local p0, "this":Lcom/parse/BackgroundTask;, "Lcom/parse/BackgroundTask<TT;>;"
    const/4 v2, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/BackgroundTask;->run()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/BackgroundTask;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lcom/parse/ParseException;
    iput-object v0, p0, Lcom/parse/BackgroundTask;->exception:Lcom/parse/ParseException;

    goto :goto_0
.end method

.method executeInThisThread()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/parse/BackgroundTask;, "Lcom/parse/BackgroundTask<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/parse/BackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/BackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    .line 58
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parse/BackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 48
    .local p0, "this":Lcom/parse/BackgroundTask;, "Lcom/parse/BackgroundTask<TT;>;"
    iget-object v0, p0, Lcom/parse/BackgroundTask;->callback:Lcom/parse/ParseCallback;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/parse/BackgroundTask;->callback:Lcom/parse/ParseCallback;

    iget-object v1, p0, Lcom/parse/BackgroundTask;->result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/parse/BackgroundTask;->exception:Lcom/parse/ParseException;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCallback;->internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 51
    :cond_0
    return-void
.end method

.method public abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation
.end method
