.class Lcom/google/a/a/a/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/j;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    iget-object v2, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-virtual {v2}, Lcom/google/a/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;Z)Z

    iget-object v0, p0, Lcom/google/a/a/a/k;->a:Lcom/google/a/a/a/j;

    invoke-static {v0}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
