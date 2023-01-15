.class Lcom/google/a/a/a/ae;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/z;


# direct methods
.method private constructor <init>(Lcom/google/a/a/a/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/a/a/z;Lcom/google/a/a/a/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/a/a/ae;-><init>(Lcom/google/a/a/a/z;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v0}, Lcom/google/a/a/a/z;->b(Lcom/google/a/a/a/z;)Lcom/google/a/a/a/ad;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ad;->b:Lcom/google/a/a/a/ad;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v0}, Lcom/google/a/a/a/z;->e(Lcom/google/a/a/a/z;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v0}, Lcom/google/a/a/a/z;->f(Lcom/google/a/a/a/z;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v2}, Lcom/google/a/a/a/z;->g(Lcom/google/a/a/a/z;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v2}, Lcom/google/a/a/a/z;->h(Lcom/google/a/a/a/z;)Lcom/google/a/a/a/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/a/a/a/l;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/a/a/a/ar;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v0}, Lcom/google/a/a/a/z;->i(Lcom/google/a/a/a/z;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v0}, Lcom/google/a/a/a/z;->j(Lcom/google/a/a/a/z;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/a/a/a/ae;

    iget-object v2, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-direct {v1, v2}, Lcom/google/a/a/a/ae;-><init>(Lcom/google/a/a/a/z;)V

    iget-object v2, p0, Lcom/google/a/a/a/ae;->a:Lcom/google/a/a/a/z;

    invoke-static {v2}, Lcom/google/a/a/a/z;->g(Lcom/google/a/a/a/z;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
