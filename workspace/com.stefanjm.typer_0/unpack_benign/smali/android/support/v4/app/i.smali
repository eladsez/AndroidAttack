.class public Landroid/support/v4/app/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/e;
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/i$a;,
        Landroid/support/v4/app/i$c;,
        Landroid/support/v4/app/i$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final j:Ljava/lang/Object;


# instance fields
.field A:I

.field B:Landroid/support/v4/app/o;

.field C:Landroid/support/v4/app/m;

.field D:Landroid/support/v4/app/o;

.field E:Landroid/support/v4/app/p;

.field F:Landroid/arch/lifecycle/p;

.field G:Landroid/support/v4/app/i;

.field H:I

.field I:I

.field J:Ljava/lang/String;

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:Landroid/view/ViewGroup;

.field S:Landroid/view/View;

.field T:Landroid/view/View;

.field U:Z

.field V:Z

.field W:Landroid/support/v4/app/LoaderManagerImpl;

.field X:Landroid/support/v4/app/i$a;

.field Y:Z

.field Z:Z

.field aa:F

.field ab:Landroid/view/LayoutInflater;

.field ac:Z

.field ad:Landroid/arch/lifecycle/f;

.field k:I

.field l:Landroid/os/Bundle;

.field m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Boolean;

.field o:I

.field p:Ljava/lang/String;

.field q:Landroid/os/Bundle;

.field r:Landroid/support/v4/app/i;

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->a:Landroid/support/v4/g/m;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/i;->o:I

    iput v0, p0, Landroid/support/v4/app/i;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->P:Z

    iput-boolean v0, p0, Landroid/support/v4/app/i;->V:Z

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/app/i;->a:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object p0, Landroid/support/v4/app/i;->a:Landroid/support/v4/g/m;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/i;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/app/i;->g(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Landroid/support/v4/app/i$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Landroid/support/v4/app/i$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Landroid/support/v4/app/i$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    new-instance p2, Landroid/support/v4/app/i$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p0

    new-instance p2, Landroid/support/v4/app/i$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Landroid/support/v4/app/i;->a:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object p0, Landroid/support/v4/app/i;->a:Landroid/support/v4/g/m;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class p0, Landroid/support/v4/app/i;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private aa()Landroid/support/v4/app/i$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/i$a;

    invoke-direct {v0}, Landroid/support/v4/app/i$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/i$a;->i:Z

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->j:Landroid/support/v4/app/i$c;

    iget-object v2, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iput-object v1, v2, Landroid/support/v4/app/i$a;->j:Landroid/support/v4/app/i$c;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/support/v4/app/i$c;->a()V

    :cond_1
    return-void
.end method

.method static synthetic b(Landroid/support/v4/app/i;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/i;->b()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->e(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->f(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/i;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->A()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->f(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->g(Landroid/support/v4/app/i$a;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->g(Landroid/support/v4/app/i$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->h(Landroid/support/v4/app/i$a;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->h(Landroid/support/v4/app/i$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    iget-object v1, v1, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/m;

    invoke-virtual {v1}, Landroid/support/v4/app/m;->h()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->m:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/i$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/i$1;-><init>(Landroid/support/v4/app/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/i;->b()V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/i$a;->i:Z

    return-void
.end method

.method F()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    new-instance v2, Landroid/support/v4/app/i$2;

    invoke-direct {v2, p0}, Landroid/support/v4/app/i$2;-><init>(Landroid/support/v4/app/i;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/m;Landroid/support/v4/app/k;Landroid/support/v4/app/i;)V

    return-void
.end method

.method G()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->f()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->d()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->o()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method H()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->f()Z

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->r()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->p()V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->f()Z

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method I()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V

    :cond_0
    return-void
.end method

.method J()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->v()V

    :cond_0
    return-void
.end method

.method K()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_PAUSE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->q()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->s()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method L()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_STOP:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->r()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->e()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method M()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->s()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    return-void
.end method

.method N()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->t()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->f()V

    iget-boolean v1, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/i;->W:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/i;->W:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->a()V

    :cond_2
    iput-boolean v0, p0, Landroid/support/v4/app/i;->z:Z

    return-void
.end method

.method O()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_DESTROY:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->u()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    iput-boolean v0, p0, Landroid/support/v4/app/i;->ac:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->t()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    return-void
.end method

.method P()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/i;->ab:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/i;->N:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->u()V

    iput-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    :cond_2
    return-void
.end method

.method Q()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->d:I

    return v0
.end method

.method R()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->e:I

    return v0
.end method

.method S()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->f:I

    return v0
.end method

.method T()Landroid/support/v4/app/ae;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->g:Landroid/support/v4/app/ae;

    return-object v0
.end method

.method U()Landroid/support/v4/app/ae;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->h:Landroid/support/v4/app/ae;

    return-object v0
.end method

.method V()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->a:Landroid/view/View;

    return-object v0
.end method

.method W()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method X()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->c:I

    return v0
.end method

.method Y()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-boolean v0, v0, Landroid/support/v4/app/i$a;->i:Z

    return v0
.end method

.method Z()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-boolean v0, v0, Landroid/support/v4/app/i$a;->k:Z

    return v0
.end method

.method public a()Landroid/arch/lifecycle/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method a(Ljava/lang/String;)Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/i$a;->d:I

    return-void
.end method

.method a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iput p1, v0, Landroid/support/v4/app/i$a;->e:I

    iget-object p1, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iput p2, p1, Landroid/support/v4/app/i$a;->f:I

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method final a(ILandroid/support/v4/app/i;)V
    .locals 0

    iput p1, p0, Landroid/support/v4/app/i;->o:I

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/support/v4/app/i;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/i;->o:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/i;->p:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    goto :goto_0

    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    iget-object p1, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    invoke-virtual {p1}, Landroid/support/v4/app/m;->f()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    iget-object p1, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    invoke-virtual {p1}, Landroid/support/v4/app/m;->f()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/i;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->j(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/o;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {p1}, Landroid/support/v4/app/o;->m()V

    :cond_0
    return-void
.end method

.method a(Landroid/support/v4/app/i$c;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->j:Landroid/support/v4/app/i$c;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->j:Landroid/support/v4/app/i$c;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iget-boolean v0, v0, Landroid/support/v4/app/i$a;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    iput-object p1, v0, Landroid/support/v4/app/i$a;->j:Landroid/support/v4/app/i$c;

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/support/v4/app/i$c;->b()V

    :cond_3
    return-void
.end method

.method public a(Landroid/support/v4/app/i;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->I:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->J:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->o:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->p:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->A:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->P:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->V:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->G:Landroid/support/v4/app/i;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->G:Landroid/support/v4/app/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/i;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->q:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/i;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/i;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->m:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/i;->r:Landroid/support/v4/app/i;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->r:Landroid/support/v4/app/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->t:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/i;->Q()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/i;->Q()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/i;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->R:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/i;->S:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/i;->T:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/i;->V()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/i;->V()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/i;->X()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/i;->W:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->W:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/o;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->z:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method b(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/i$a;->c:I

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/i;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/i;->P:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/i;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/i;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/i;->P:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->a(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/i;->K:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->O:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/i;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->K:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/i;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->b(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/i;->K:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->b(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->T:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/i;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/i;->m:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->k(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez p1, :cond_1

    new-instance p1, Landroid/support/v4/app/af;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method f(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->d(Z)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Z)V

    :cond_0
    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/i;->o:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/i;->q:Landroid/os/Bundle;

    return-void
.end method

.method g(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->e(Z)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Z)V

    :cond_0
    return-void
.end method

.method final g()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/i;->A:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/i;->ab:Landroid/view/LayoutInflater;

    iget-object p1, p0, Landroid/support/v4/app/i;->ab:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method h(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->aa()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/i$a;->k:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->g()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    invoke-virtual {p1}, Landroid/support/v4/app/m;->b()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->n()Landroid/support/v4/app/n;

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->x()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/h/e;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1
.end method

.method public final j()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->i()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method j(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->F()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/i;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/o;->a(Landroid/os/Parcelable;Landroid/support/v4/app/p;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/i;->E:Landroid/support/v4/app/p;

    iget-object p1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {p1}, Landroid/support/v4/app/o;->m()V

    :cond_1
    return-void
.end method

.method public final k()Landroid/support/v4/app/j;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->f()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/j;

    return-object v0
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public final l()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method l(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->a(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroid/support/v4/app/i;->ac:Z

    iget-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez p1, :cond_1

    new-instance p1, Landroid/support/v4/app/af;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/i;->ad:Landroid/arch/lifecycle/f;

    sget-object v0, Landroid/arch/lifecycle/c$a;->ON_CREATE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method public final m()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    return-object v0
.end method

.method m(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->d(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    if-nez p1, :cond_1

    new-instance p1, Landroid/support/v4/app/af;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {p1}, Landroid/support/v4/app/o;->n()V

    :cond_2
    return-void
.end method

.method public final n()Landroid/support/v4/app/n;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->F()V

    iget v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->p()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->o()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->n()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/i;->k:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->m()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    return-object v0
.end method

.method n(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->k()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method o()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->k()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/j;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->v:Z

    return v0
.end method

.method public q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->S:Landroid/view/View;

    return-object v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/i;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->Q:Z

    iget-object v0, p0, Landroid/support/v4/app/i;->F:Landroid/arch/lifecycle/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/o;

    iget-boolean v0, v0, Landroid/support/v4/app/o;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->F:Landroid/arch/lifecycle/p;

    invoke-virtual {v0}, Landroid/arch/lifecycle/p;->a()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/i;->o:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/i;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/app/i;->H:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/i;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/i;->J:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/i;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/i;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/i;->p:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/i;->u:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->v:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->w:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->x:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->y:Z

    iput v1, p0, Landroid/support/v4/app/i;->A:I

    iput-object v0, p0, Landroid/support/v4/app/i;->B:Landroid/support/v4/app/o;

    iput-object v0, p0, Landroid/support/v4/app/i;->D:Landroid/support/v4/app/o;

    iput-object v0, p0, Landroid/support/v4/app/i;->C:Landroid/support/v4/app/m;

    iput v1, p0, Landroid/support/v4/app/i;->H:I

    iput v1, p0, Landroid/support/v4/app/i;->I:I

    iput-object v0, p0, Landroid/support/v4/app/i;->J:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/i;->K:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->L:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->N:Z

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->a(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->b(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/i;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->w()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->b(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->c(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->d(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/i;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->y()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->X:Landroid/support/v4/app/i$a;

    invoke-static {v0}, Landroid/support/v4/app/i$a;->d(Landroid/support/v4/app/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
