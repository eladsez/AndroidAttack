.class public Landroid/support/v4/app/j;
.super Landroid/support/v4/app/f;

# interfaces
.implements Landroid/support/v4/app/a$a;
.implements Landroid/support/v4/app/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/j$a;,
        Landroid/support/v4/app/j$b;
    }
.end annotation


# instance fields
.field final c:Landroid/os/Handler;

.field final d:Landroid/support/v4/app/l;

.field e:Landroid/support/v4/app/w;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:I

.field m:Landroid/support/v4/g/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/n<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/arch/lifecycle/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    new-instance v0, Landroid/support/v4/app/j$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/j$1;-><init>(Landroid/support/v4/app/j;)V

    iput-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/j$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/j$a;-><init>(Landroid/support/v4/app/j;)V

    invoke-static {v0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/m;)Landroid/support/v4/app/l;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/j;->i:Z

    return-void
.end method

.method private static a(Landroid/support/v4/app/n;Landroid/arch/lifecycle/c$b;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/n;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/i;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/i;->a()Landroid/arch/lifecycle/c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/lifecycle/c;->a()Landroid/arch/lifecycle/c$b;

    move-result-object v2

    sget-object v3, Landroid/arch/lifecycle/c$b;->d:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/c$b;->a(Landroid/arch/lifecycle/c$b;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v1, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$b;)V

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/i;->o()Landroid/support/v4/app/n;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/n;Landroid/arch/lifecycle/c$b;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private b(Landroid/support/v4/app/i;)I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->b()I

    move-result v0

    const v1, 0xfffe

    if-lt v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    iget v2, p0, Landroid/support/v4/app/j;->l:I

    invoke-virtual {v0, v2}, Landroid/support/v4/g/n;->f(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/j;->l:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/j;->l:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/j;->l:I

    iget-object v2, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    iget-object p1, p1, Landroid/support/v4/app/i;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroid/support/v4/g/n;->b(ILjava/lang/Object;)V

    iget p1, p0, Landroid/support/v4/app/j;->l:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Landroid/support/v4/app/j;->l:I

    return v0
.end method

.method private i()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/j;->g()Landroid/support/v4/app/n;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/c$b;->c:Landroid/arch/lifecycle/c$b;

    invoke-static {v0, v1}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/n;Landroid/arch/lifecycle/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/c;
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->a()Landroid/arch/lifecycle/c;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/l;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v4/app/i;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->b:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    :try_start_0
    invoke-static {p0, p2, v1, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/app/j;->b:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/j;->b(I)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/j;->b(Landroid/support/v4/app/i;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    invoke-static {p0, p2, p1, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/app/j;->b:Z

    return-void

    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/j;->b:Z

    throw p1
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/j;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->i:Z

    iput-boolean p1, p0, Landroid/support/v4/app/j;->j:Z

    iget-object p1, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->f()V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/f;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final a_(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/j;->k:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/app/j;->b(I)V

    :cond_0
    return-void
.end method

.method public b()Landroid/arch/lifecycle/p;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_1

    new-instance v0, Landroid/arch/lifecycle/p;

    invoke-direct {v0}, Landroid/arch/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    return-object v0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->h()V

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/f;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->h:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->i:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroid/support/v4/app/j;->e:Landroid/support/v4/app/w;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/j;->e:Landroid/support/v4/app/w;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/w;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/j;->invalidateOptionsMenu()V

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->k()V

    return-void
.end method

.method public g()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/n;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/support/v4/app/w;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/j;->e:Landroid/support/v4/app/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/j;->e:Landroid/support/v4/app/w;

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/j;->b()Landroid/arch/lifecycle/p;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/p;)V

    iput-object v0, p0, Landroid/support/v4/app/j;->e:Landroid/support/v4/app/w;

    iget-object v0, p0, Landroid/support/v4/app/j;->e:Landroid/support/v4/app/w;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/n;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v2, v0}, Landroid/support/v4/g/n;->c(I)V

    if-nez v1, :cond_0

    const-string p1, "FragmentActivity"

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "FragmentActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Activity result no fragment exists for who: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/i;->a(IILandroid/content/Intent;)V

    return-void

    :cond_2
    invoke-static {}, Landroid/support/v4/app/a;->a()Landroid/support/v4/app/a$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/app/a$b;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/n;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/f;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()V

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/i;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/j$b;

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/j$b;->b:Landroid/arch/lifecycle/p;

    iput-object v2, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/j$b;->c:Landroid/support/v4/app/p;

    :cond_1
    invoke-virtual {v4, v3, v1}, Landroid/support/v4/app/l;->a(Landroid/os/Parcelable;Landroid/support/v4/app/p;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->l:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android:support:request_fragment_who"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/support/v4/g/n;

    array-length v3, v0

    invoke-direct {v1, v3}, Landroid/support/v4/g/n;-><init>(I)V

    iput-object v1, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/g/n;->b(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    if-nez p1, :cond_5

    new-instance p1, Landroid/support/v4/g/n;

    invoke-direct {p1}, Landroid/support/v4/g/n;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    iput v2, p0, Landroid/support/v4/app/j;->l:I

    :cond_5
    iget-object p1, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->e()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/l;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/j;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    invoke-virtual {v0}, Landroid/arch/lifecycle/p;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->l()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->m()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/l;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/l;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->b()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/l;->b(Landroid/view/Menu;)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/f;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->c()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->b(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/f;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->c()V

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->n()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/j;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {p2, p3}, Landroid/support/v4/app/l;->a(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()V

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v2, v0}, Landroid/support/v4/g/n;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v3, v0}, Landroid/support/v4/g/n;->c(I)V

    if-nez v2, :cond_0

    const-string p1, "FragmentActivity"

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "FragmentActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Activity result no fragment exists for who: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/i;->a(I[Ljava/lang/String;[I)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/f;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->n()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/j;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/j;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v1}, Landroid/support/v4/app/l;->d()Landroid/support/v4/app/p;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v2, Landroid/support/v4/app/j$b;

    invoke-direct {v2}, Landroid/support/v4/app/j$b;-><init>()V

    iput-object v0, v2, Landroid/support/v4/app/j$b;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/j;->n:Landroid/arch/lifecycle/p;

    iput-object v0, v2, Landroid/support/v4/app/j$b;->b:Landroid/arch/lifecycle/p;

    iput-object v1, v2, Landroid/support/v4/app/j$b;->c:Landroid/support/v4/app/p;

    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/support/v4/app/j;->i()V

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->b()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/j;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->b()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v1}, Landroid/support/v4/g/n;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v3}, Landroid/support/v4/g/n;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v3, v2}, Landroid/support/v4/g/n;->d(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/g/n;

    invoke-virtual {v3, v2}, Landroid/support/v4/g/n;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/f;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/j;->i:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/j;->f:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/j;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()V

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->n()Z

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->g()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/f;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->h:Z

    invoke-direct {p0}, Landroid/support/v4/app/j;->i()V

    iget-object v1, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->j()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/j;->b:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/j;->b(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/f;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/f;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
