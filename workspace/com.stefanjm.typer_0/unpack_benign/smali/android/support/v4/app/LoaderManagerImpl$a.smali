.class public Landroid/support/v4/app/LoaderManagerImpl$a;
.super Landroid/arch/lifecycle/j;

# interfaces
.implements Landroid/support/v4/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/j<",
        "TD;>;",
        "Landroid/support/v4/a/c$b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/os/Bundle;

.field private final c:Landroid/support/v4/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/c<",
            "TD;>;"
        }
    .end annotation
.end field

.field private d:Landroid/arch/lifecycle/e;

.field private e:Landroid/support/v4/app/LoaderManagerImpl$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManagerImpl$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v4/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/c<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroid/support/v4/a/c;Landroid/support/v4/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/a/c<",
            "TD;>;",
            "Landroid/support/v4/a/c<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/arch/lifecycle/j;-><init>()V

    iput p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->a:I

    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->b:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    iput-object p4, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->f:Landroid/support/v4/a/c;

    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {p2, p1, p0}, Landroid/support/v4/a/c;->a(ILandroid/support/v4/a/c$b;)V

    return-void
.end method


# virtual methods
.method a(Landroid/arch/lifecycle/e;Landroid/support/v4/app/w$a;)Landroid/support/v4/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/e;",
            "Landroid/support/v4/app/w$a<",
            "TD;>;)",
            "Landroid/support/v4/a/c<",
            "TD;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$b;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-direct {v0, v1, p2}, Landroid/support/v4/app/LoaderManagerImpl$b;-><init>(Landroid/support/v4/a/c;Landroid/support/v4/app/w$a;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/k;)V

    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Landroid/arch/lifecycle/k;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->d:Landroid/arch/lifecycle/e;

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    return-object p1
.end method

.method a(Z)Landroid/support/v4/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v4/a/c<",
            "TD;>;"
        }
    .end annotation

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {v0}, Landroid/support/v4/a/c;->k()Z

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {v0}, Landroid/support/v4/a/c;->o()V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Landroid/arch/lifecycle/k;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$b;->b()V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {v1, p0}, Landroid/support/v4/a/c;->a(Landroid/support/v4/a/c$b;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {p1}, Landroid/support/v4/a/c;->q()V

    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->f:Landroid/support/v4/a/c;

    return-object p1

    :cond_4
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    return-object p1
.end method

.method public a(Landroid/arch/lifecycle/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/k<",
            "TD;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/arch/lifecycle/j;->a(Landroid/arch/lifecycle/k;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->d:Landroid/arch/lifecycle/e;

    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    return-void
.end method

.method public a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c<",
            "TD;>;TD;)V"
        }
    .end annotation

    sget-boolean p1, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-boolean p1, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "LoaderManager"

    const-string v0, "onLoadComplete was incorrectly called on a background thread"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/a/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallbacks="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroid/support/v4/app/LoaderManagerImpl$b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mData="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$a;->f()Landroid/support/v4/a/c;

    move-result-object p2

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$a;->a()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/support/v4/a/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStarted="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$a;->d()Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected b()V
    .locals 3

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {v0}, Landroid/support/v4/a/c;->i()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/arch/lifecycle/j;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->f:Landroid/support/v4/a/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->f:Landroid/support/v4/a/c;

    invoke-virtual {p1}, Landroid/support/v4/a/c;->q()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->f:Landroid/support/v4/a/c;

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 3

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-virtual {v0}, Landroid/support/v4/a/c;->m()V

    return-void
.end method

.method f()Landroid/support/v4/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/a/c<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    return-object v0
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->d:Landroid/arch/lifecycle/e;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->e:Landroid/support/v4/app/LoaderManagerImpl$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroid/arch/lifecycle/j;->a(Landroid/arch/lifecycle/k;)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/k;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->c:Landroid/support/v4/a/c;

    invoke-static {v1, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
