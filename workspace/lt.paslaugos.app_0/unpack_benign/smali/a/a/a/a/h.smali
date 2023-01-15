.class La/a/a/a/h;
.super La/a/a/a/a/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/a/c/f<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final a:La/a/a/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/i<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a/a/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/i<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, La/a/a/a/a/c/f;-><init>()V

    iput-object p1, p0, La/a/a/a/h;->a:La/a/a/a/i;

    return-void
.end method

.method private a(Ljava/lang/String;)La/a/a/a/a/b/u;
    .locals 3

    new-instance v0, La/a/a/a/a/b/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, La/a/a/a/h;->a:La/a/a/a/i;

    invoke-virtual {v2}, La/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KitInitialization"

    invoke-direct {v0, p1, v1}, La/a/a/a/a/b/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/a/a/b/u;->a()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, La/a/a/a/h;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    const-string p1, "doInBackground"

    invoke-direct {p0, p1}, La/a/a/a/h;->a(Ljava/lang/String;)La/a/a/a/a/b/u;

    move-result-object p1

    invoke-virtual {p0}, La/a/a/a/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/h;->a:La/a/a/a/i;

    invoke-virtual {v0}, La/a/a/a/i;->e()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, La/a/a/a/a/b/u;->b()V

    return-object v0
.end method

.method protected a()V
    .locals 6

    invoke-super {p0}, La/a/a/a/a/c/f;->a()V

    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, La/a/a/a/h;->a(Ljava/lang/String;)La/a/a/a/a/b/u;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, La/a/a/a/h;->a:La/a/a/a/i;

    invoke-virtual {v2}, La/a/a/a/i;->a_()Z

    move-result v2
    :try_end_0
    .catch La/a/a/a/a/c/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La/a/a/a/a/b/u;->b()V

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, La/a/a/a/h;->a(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Failure onPreExecute()"

    invoke-interface {v3, v4, v5, v2}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, La/a/a/a/a/b/u;->b()V

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {v0}, La/a/a/a/a/b/u;->b()V

    invoke-virtual {p0, v1}, La/a/a/a/h;->a(Z)Z

    throw v2
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/h;->a:La/a/a/a/i;

    invoke-virtual {v0, p1}, La/a/a/a/i;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/h;->a:La/a/a/a/i;

    iget-object v0, v0, La/a/a/a/i;->h:La/a/a/a/f;

    invoke-interface {v0, p1}, La/a/a/a/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()La/a/a/a/a/c/e;
    .locals 1

    sget-object v0, La/a/a/a/a/c/e;->c:La/a/a/a/a/c/e;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/h;->a:La/a/a/a/i;

    invoke-virtual {v0, p1}, La/a/a/a/i;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, La/a/a/a/h;->a:La/a/a/a/i;

    invoke-virtual {v0}, La/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Initialization was cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, La/a/a/a/g;

    invoke-direct {v0, p1}, La/a/a/a/g;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, La/a/a/a/h;->a:La/a/a/a/i;

    iget-object p1, p1, La/a/a/a/i;->h:La/a/a/a/f;

    invoke-interface {p1, v0}, La/a/a/a/f;->a(Ljava/lang/Exception;)V

    return-void
.end method
