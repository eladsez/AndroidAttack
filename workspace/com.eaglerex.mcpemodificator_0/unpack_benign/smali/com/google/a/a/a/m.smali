.class Lcom/google/a/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/a/a/as;


# instance fields
.field private a:Lcom/google/a/a/a/at;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/a/a/a/at;->b:Lcom/google/a/a/a/at;

    iput-object v0, p0, Lcom/google/a/a/a/m;->a:Lcom/google/a/a/a/at;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/a/a/a/at;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/m;->a:Lcom/google/a/a/a/at;

    return-object v0
.end method

.method public a(Lcom/google/a/a/a/at;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/m;->a:Lcom/google/a/a/a/at;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/m;->a:Lcom/google/a/a/a/at;

    invoke-virtual {v0}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/a/a/a/at;->a:Lcom/google/a/a/a/at;

    invoke-virtual {v1}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/a/a/a/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/m;->a:Lcom/google/a/a/a/at;

    invoke-virtual {v0}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/a/a/a/at;->b:Lcom/google/a/a/a/at;

    invoke-virtual {v1}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/a/a/a/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/m;->a:Lcom/google/a/a/a/at;

    invoke-virtual {v0}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/a/a/a/at;->c:Lcom/google/a/a/a/at;

    invoke-virtual {v1}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/a/a/a/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/m;->a:Lcom/google/a/a/a/at;

    invoke-virtual {v0}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/a/a/a/at;->d:Lcom/google/a/a/a/at;

    invoke-virtual {v1}, Lcom/google/a/a/a/at;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    invoke-direct {p0, p1}, Lcom/google/a/a/a/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
