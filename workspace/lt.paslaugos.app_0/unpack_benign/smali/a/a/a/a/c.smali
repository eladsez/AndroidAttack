.class public La/a/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/c$a;
    }
.end annotation


# static fields
.field static volatile a:La/a/a/a/c;

.field static final b:La/a/a/a/l;


# instance fields
.field final c:La/a/a/a/l;

.field final d:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "La/a/a/a/i;",
            ">;",
            "La/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private final i:La/a/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/f<",
            "La/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:La/a/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/f<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:La/a/a/a/a/b/p;

.field private l:La/a/a/a/a;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/b;-><init>()V

    sput-object v0, La/a/a/a/c;->b:La/a/a/a/l;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;La/a/a/a/a/c/k;Landroid/os/Handler;La/a/a/a/l;ZLa/a/a/a/f;La/a/a/a/a/b/p;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "La/a/a/a/i;",
            ">;",
            "La/a/a/a/i;",
            ">;",
            "La/a/a/a/a/c/k;",
            "Landroid/os/Handler;",
            "La/a/a/a/l;",
            "Z",
            "La/a/a/a/f;",
            "La/a/a/a/a/b/p;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/c;->e:Landroid/content/Context;

    iput-object p2, p0, La/a/a/a/c;->f:Ljava/util/Map;

    iput-object p3, p0, La/a/a/a/c;->g:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, La/a/a/a/c;->h:Landroid/os/Handler;

    iput-object p5, p0, La/a/a/a/c;->c:La/a/a/a/l;

    iput-boolean p6, p0, La/a/a/a/c;->d:Z

    iput-object p7, p0, La/a/a/a/c;->i:La/a/a/a/f;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, La/a/a/a/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p0, p1}, La/a/a/a/c;->a(I)La/a/a/a/f;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/c;->j:La/a/a/a/f;

    iput-object p8, p0, La/a/a/a/c;->k:La/a/a/a/a/b/p;

    invoke-virtual {p0, p9}, La/a/a/a/c;->a(Landroid/app/Activity;)La/a/a/a/c;

    return-void
.end method

.method static a()La/a/a/a/c;
    .locals 2

    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs a(Landroid/content/Context;[La/a/a/a/i;)La/a/a/a/c;
    .locals 2

    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    if-nez v0, :cond_1

    const-class v0, La/a/a/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/a/a/c;->a:La/a/a/a/c;

    if-nez v1, :cond_0

    new-instance v1, La/a/a/a/c$a;

    invoke-direct {v1, p0}, La/a/a/a/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, La/a/a/a/c$a;->a([La/a/a/a/i;)La/a/a/a/c$a;

    move-result-object p0

    invoke-virtual {p0}, La/a/a/a/c$a;->a()La/a/a/a/c;

    move-result-object p0

    invoke-static {p0}, La/a/a/a/c;->c(La/a/a/a/c;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, La/a/a/a/c;->a:La/a/a/a/c;

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)La/a/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/a/a/a/i;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, La/a/a/a/c;->a()La/a/a/a/c;

    move-result-object v0

    iget-object v0, v0, La/a/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/a/a/i;

    return-object p0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, La/a/a/a/c;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(La/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, La/a/a/a/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "La/a/a/a/i;",
            ">;",
            "La/a/a/a/i;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "La/a/a/a/i;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, La/a/a/a/j;

    if-eqz v1, :cond_0

    check-cast v0, La/a/a/a/j;

    invoke-interface {v0}, La/a/a/a/j;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, La/a/a/a/c;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(La/a/a/a/c;)La/a/a/a/f;
    .locals 0

    iget-object p0, p0, La/a/a/a/c;->i:La/a/a/a/f;

    return-object p0
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "La/a/a/a/i;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "La/a/a/a/i;",
            ">;",
            "La/a/a/a/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, p0}, La/a/a/a/c;->a(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, La/a/a/a/c;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private static c(La/a/a/a/c;)V
    .locals 0

    sput-object p0, La/a/a/a/c;->a:La/a/a/a/c;

    invoke-direct {p0}, La/a/a/a/c;->j()V

    return-void
.end method

.method private static d(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h()La/a/a/a/l;
    .locals 1

    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    if-nez v0, :cond_0

    sget-object v0, La/a/a/a/c;->b:La/a/a/a/l;

    return-object v0

    :cond_0
    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    iget-object v0, v0, La/a/a/a/c;->c:La/a/a/a/l;

    return-object v0
.end method

.method public static i()Z
    .locals 1

    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, La/a/a/a/c;->a:La/a/a/a/c;

    iget-boolean v0, v0, La/a/a/a/c;->d:Z

    return v0
.end method

.method private j()V
    .locals 2

    new-instance v0, La/a/a/a/a;

    iget-object v1, p0, La/a/a/a/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, La/a/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/a/a/c;->l:La/a/a/a/a;

    iget-object v0, p0, La/a/a/a/c;->l:La/a/a/a/a;

    new-instance v1, La/a/a/a/c$1;

    invoke-direct {v1, p0}, La/a/a/a/c$1;-><init>(La/a/a/a/c;)V

    invoke-virtual {v0, v1}, La/a/a/a/a;->a(La/a/a/a/a$b;)Z

    iget-object v0, p0, La/a/a/a/c;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, La/a/a/a/c;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)La/a/a/a/c;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/a/a/a/c;->m:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method a(I)La/a/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "La/a/a/a/f<",
            "*>;"
        }
    .end annotation

    new-instance v0, La/a/a/a/c$2;

    invoke-direct {v0, p0, p1}, La/a/a/a/c$2;-><init>(La/a/a/a/c;I)V

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0, p1}, La/a/a/a/c;->b(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/c;->g()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, La/a/a/a/m;

    invoke-direct {v2, v0, v1}, La/a/a/a/m;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v1, La/a/a/a/f;->d:La/a/a/a/f;

    iget-object v3, p0, La/a/a/a/c;->k:La/a/a/a/a/b/p;

    invoke-virtual {v2, p1, p0, v1, v3}, La/a/a/a/m;->a(Landroid/content/Context;La/a/a/a/c;La/a/a/a/f;La/a/a/a/a/b/p;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/a/a/a/i;

    iget-object v4, p0, La/a/a/a/c;->j:La/a/a/a/f;

    iget-object v5, p0, La/a/a/a/c;->k:La/a/a/a/a/b/p;

    invoke-virtual {v3, p1, p0, v4, v5}, La/a/a/a/i;->a(Landroid/content/Context;La/a/a/a/c;La/a/a/a/f;La/a/a/a/a/b/p;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, La/a/a/a/m;->o()V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v1, "Fabric"

    const/4 v3, 0x3

    invoke-interface {p1, v1, v3}, La/a/a/a/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Version: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], with the following kits:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/i;

    iget-object v3, v1, La/a/a/a/i;->f:La/a/a/a/h;

    iget-object v4, v2, La/a/a/a/m;->f:La/a/a/a/h;

    invoke-virtual {v3, v4}, La/a/a/a/h;->a(La/a/a/a/a/c/l;)V

    iget-object v3, p0, La/a/a/a/c;->f:Ljava/util/Map;

    invoke-virtual {p0, v3, v1}, La/a/a/a/c;->a(Ljava/util/Map;La/a/a/a/i;)V

    invoke-virtual {v1}, La/a/a/a/i;->o()V

    if-eqz p1, :cond_2

    invoke-virtual {v1}, La/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [Version: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, La/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;La/a/a/a/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "La/a/a/a/i;",
            ">;",
            "La/a/a/a/i;",
            ">;",
            "La/a/a/a/i;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, La/a/a/a/i;->j:La/a/a/a/a/c/d;

    if-eqz v0, :cond_4

    invoke-interface {v0}, La/a/a/a/a/c/d;->a()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/a/a/a/i;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p2, La/a/a/a/i;->f:La/a/a/a/h;

    iget-object v5, v5, La/a/a/a/i;->f:La/a/a/a/h;

    invoke-virtual {v6, v5}, La/a/a/a/h;->a(La/a/a/a/a/c/l;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/a/a/a/i;

    if-eqz v4, :cond_3

    iget-object v4, p2, La/a/a/a/i;->f:La/a/a/a/h;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/a/a/a/i;

    iget-object v3, v3, La/a/a/a/i;->f:La/a/a/a/h;

    invoke-virtual {v4, v3}, La/a/a/a/h;->a(La/a/a/a/a/c/l;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, La/a/a/a/a/c/m;

    const-string p2, "Referenced Kit was null, does the kit exist?"

    invoke-direct {p1, p2}, La/a/a/a/a/c/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, La/a/a/a/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/c;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method b(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La/a/a/a/k;",
            ">;>;"
        }
    .end annotation

    new-instance v0, La/a/a/a/e;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, La/a/a/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.1.19"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public e()La/a/a/a/a;
    .locals 1

    iget-object v0, p0, La/a/a/a/c;->l:La/a/a/a/a;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, La/a/a/a/c;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "La/a/a/a/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
