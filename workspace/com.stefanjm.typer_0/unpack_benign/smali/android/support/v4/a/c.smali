.class public Landroid/support/v4/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/c$a;,
        Landroid/support/v4/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field f:I

.field g:Landroid/support/v4/a/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/c$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field h:Landroid/support/v4/a/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/c$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field i:Landroid/content/Context;

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/c;->j:Z

    iput-boolean v0, p0, Landroid/support/v4/a/c;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/a/c;->l:Z

    iput-boolean v0, p0, Landroid/support/v4/a/c;->m:Z

    iput-boolean v0, p0, Landroid/support/v4/a/c;->n:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a/c;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(ILandroid/support/v4/a/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/a/c$b<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    iput p1, p0, Landroid/support/v4/a/c;->f:I

    return-void
.end method

.method public a(Landroid/support/v4/a/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c$b<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    if-eq v0, p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/a/c;->f:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroid/support/v4/a/c;->j:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroid/support/v4/a/c;->m:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroid/support/v4/a/c;->n:Z

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/a/c;->j:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/a/c;->m:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/a/c;->n:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean p2, p0, Landroid/support/v4/a/c;->k:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroid/support/v4/a/c;->l:Z

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/a/c;->k:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/a/c;->l:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/support/v4/a/c$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/a/c$b;->a(Landroid/support/v4/a/c;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/c;->h:Landroid/support/v4/a/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/c;->h:Landroid/support/v4/a/c$a;

    invoke-interface {v0, p0}, Landroid/support/v4/a/c$a;->a(Landroid/support/v4/a/c;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/a/c;->k:Z

    return v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/c;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/c;->l:Z

    iput-boolean v0, p0, Landroid/support/v4/a/c;->k:Z

    invoke-virtual {p0}, Landroid/support/v4/a/c;->j()V

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/a/c;->b()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/a/c;->a()V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/c;->j:Z

    invoke-virtual {p0}, Landroid/support/v4/a/c;->n()V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/c;->k:Z

    invoke-virtual {p0}, Landroid/support/v4/a/c;->p()V

    return-void
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/a/c;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/c;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/c;->j:Z

    iput-boolean v0, p0, Landroid/support/v4/a/c;->k:Z

    iput-boolean v0, p0, Landroid/support/v4/a/c;->m:Z

    iput-boolean v0, p0, Landroid/support/v4/a/c;->n:Z

    return-void
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/c;->n:Z

    return-void
.end method

.method public t()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/a/c;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/a/c;->u()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/a/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/a/c;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/a/c;->l()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/c;->m:Z

    return-void
.end method
