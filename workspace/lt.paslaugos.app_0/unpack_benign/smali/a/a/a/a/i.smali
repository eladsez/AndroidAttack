.class public abstract La/a/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "La/a/a/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field e:La/a/a/a/c;

.field f:La/a/a/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/h<",
            "TResult;>;"
        }
    .end annotation
.end field

.field g:Landroid/content/Context;

.field h:La/a/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/f<",
            "TResult;>;"
        }
    .end annotation
.end field

.field i:La/a/a/a/a/b/p;

.field final j:La/a/a/a/a/c/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/a/h;

    invoke-direct {v0, p0}, La/a/a/a/h;-><init>(La/a/a/a/i;)V

    iput-object v0, p0, La/a/a/a/i;->f:La/a/a/a/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, La/a/a/a/a/c/d;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/d;

    iput-object v0, p0, La/a/a/a/i;->j:La/a/a/a/a/c/d;

    return-void
.end method


# virtual methods
.method public a(La/a/a/a/i;)I
    .locals 3

    invoke-virtual {p0, p1}, La/a/a/a/i;->b(La/a/a/a/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p0}, La/a/a/a/i;->b(La/a/a/a/i;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, La/a/a/a/i;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, La/a/a/a/i;->t()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, La/a/a/a/i;->t()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, La/a/a/a/i;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method a(Landroid/content/Context;La/a/a/a/c;La/a/a/a/f;La/a/a/a/a/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La/a/a/a/c;",
            "La/a/a/a/f<",
            "TResult;>;",
            "La/a/a/a/a/b/p;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, La/a/a/a/i;->e:La/a/a/a/c;

    new-instance p2, La/a/a/a/d;

    invoke-virtual {p0}, La/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/i;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, La/a/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, La/a/a/a/i;->g:Landroid/content/Context;

    iput-object p3, p0, La/a/a/a/i;->h:La/a/a/a/f;

    iput-object p4, p0, La/a/a/a/i;->i:La/a/a/a/a/b/p;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected a_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method b(La/a/a/a/i;)Z
    .locals 6

    invoke-virtual {p0}, La/a/a/a/i;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/i;->j:La/a/a/a/a/c/d;

    invoke-interface {v0}, La/a/a/a/a/c/d;->a()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La/a/a/a/i;

    invoke-virtual {p0, p1}, La/a/a/a/i;->a(La/a/a/a/i;)I

    move-result p1

    return p1
.end method

.method protected abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method final o()V
    .locals 5

    iget-object v0, p0, La/a/a/a/i;->f:La/a/a/a/h;

    iget-object v1, p0, La/a/a/a/i;->e:La/a/a/a/c;

    invoke-virtual {v1}, La/a/a/a/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, La/a/a/a/h;->a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V

    return-void
.end method

.method protected p()La/a/a/a/a/b/p;
    .locals 1

    iget-object v0, p0, La/a/a/a/i;->i:La/a/a/a/a/b/p;

    return-object v0
.end method

.method public q()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, La/a/a/a/i;->g:Landroid/content/Context;

    return-object v0
.end method

.method public r()La/a/a/a/c;
    .locals 1

    iget-object v0, p0, La/a/a/a/i;->e:La/a/a/a/c;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Fabric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method t()Z
    .locals 1

    iget-object v0, p0, La/a/a/a/i;->j:La/a/a/a/a/c/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected u()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "La/a/a/a/a/c/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/i;->f:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
