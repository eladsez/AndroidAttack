.class public Lcom/google/a/a/a/ao;
.super Lcom/google/a/a/a/bi;


# static fields
.field private static g:Lcom/google/a/a/a/ao;


# instance fields
.field private a:Z

.field private b:Lcom/google/a/a/a/h;

.field private c:Landroid/content/Context;

.field private volatile d:Ljava/lang/Boolean;

.field private final e:Ljava/util/Map;

.field private f:Lcom/google/a/a/a/as;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/a/ai;->a(Landroid/content/Context;)Lcom/google/a/a/a/ai;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/a/ao;-><init>(Landroid/content/Context;Lcom/google/a/a/a/h;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/a/a/a/h;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/a/a/a/bi;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/ao;->d:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/ao;->e:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/ao;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/a/a/a/ao;->b:Lcom/google/a/a/a/h;

    iget-object v0, p0, Lcom/google/a/a/a/ao;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/a/a/a/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/a/a/a/ao;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/a/a/a/bb;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/a/a/a/ao;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/a/a/a/j;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/a/a/a/m;

    invoke-direct {v0}, Lcom/google/a/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/ao;->f:Lcom/google/a/a/a/as;

    return-void
.end method

.method static a()Lcom/google/a/a/a/ao;
    .locals 2

    const-class v1, Lcom/google/a/a/a/ao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/a/a/a/ao;->g:Lcom/google/a/a/a/ao;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/a/a/a/ao;
    .locals 2

    const-class v1, Lcom/google/a/a/a/ao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/a/a/a/ao;->g:Lcom/google/a/a/a/ao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/a/a/ao;

    invoke-direct {v0, p0}, Lcom/google/a/a/a/ao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/a/a/a/ao;->g:Lcom/google/a/a/a/ao;

    :cond_0
    sget-object v0, Lcom/google/a/a/a/ao;->g:Lcom/google/a/a/a/ao;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a(Ljava/util/Map;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/a/bj;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/a/a/a/bj;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    invoke-static {}, Lcom/google/a/a/a/bb;->a()Lcom/google/a/a/a/bb;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lcom/google/a/a/a/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/a/a/a/bj;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&_u"

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/a/a/am;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/a/am;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/a/a/a/ao;->b:Lcom/google/a/a/a/h;

    invoke-interface {v0, p1}, Lcom/google/a/a/a/h;->a(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->ac:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    iput-boolean p1, p0, Lcom/google/a/a/a/ao;->a:Z

    return-void
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->ad:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    iget-boolean v0, p0, Lcom/google/a/a/a/ao;->a:Z

    return v0
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->R:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    iget-object v0, p0, Lcom/google/a/a/a/ao;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/a/a/a/as;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/ao;->f:Lcom/google/a/a/a/as;

    return-object v0
.end method
