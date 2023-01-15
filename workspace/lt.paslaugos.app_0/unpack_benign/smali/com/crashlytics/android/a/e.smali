.class Lcom/crashlytics/android/a/e;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/d/d;


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:Lcom/crashlytics/android/a/aa;

.field private final c:La/a/a/a/i;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/crashlytics/android/a/f;

.field private final f:Lcom/crashlytics/android/a/ae;

.field private final g:La/a/a/a/a/e/e;

.field private final h:Lcom/crashlytics/android/a/p;


# direct methods
.method public constructor <init>(La/a/a/a/i;Landroid/content/Context;Lcom/crashlytics/android/a/f;Lcom/crashlytics/android/a/ae;La/a/a/a/a/e/e;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/a/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/crashlytics/android/a/l;

    invoke-direct {v0}, Lcom/crashlytics/android/a/l;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/e;->b:Lcom/crashlytics/android/a/aa;

    iput-object p1, p0, Lcom/crashlytics/android/a/e;->c:La/a/a/a/i;

    iput-object p2, p0, Lcom/crashlytics/android/a/e;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/crashlytics/android/a/e;->e:Lcom/crashlytics/android/a/f;

    iput-object p4, p0, Lcom/crashlytics/android/a/e;->f:Lcom/crashlytics/android/a/ae;

    iput-object p5, p0, Lcom/crashlytics/android/a/e;->g:La/a/a/a/a/e/e;

    iput-object p6, p0, Lcom/crashlytics/android/a/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/crashlytics/android/a/e;->h:Lcom/crashlytics/android/a/p;

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/a/e;)Lcom/crashlytics/android/a/ae;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/a/e;->f:Lcom/crashlytics/android/a/ae;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to run events task"

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/crashlytics/android/a/e;)Lcom/crashlytics/android/a/f;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/a/e;->e:Lcom/crashlytics/android/a/f;

    return-object p0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to submit events task"

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/crashlytics/android/a/e;)La/a/a/a/i;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/a/e;->c:La/a/a/a/i;

    return-object p0
.end method

.method static synthetic d(Lcom/crashlytics/android/a/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/a/e;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/crashlytics/android/a/e;)La/a/a/a/a/e/e;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/a/e;->g:La/a/a/a/a/e/e;

    return-object p0
.end method

.method static synthetic f(Lcom/crashlytics/android/a/e;)Lcom/crashlytics/android/a/p;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/a/e;->h:Lcom/crashlytics/android/a/p;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/crashlytics/android/a/e$2;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/e$2;-><init>(Lcom/crashlytics/android/a/e;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(La/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/crashlytics/android/a/e$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/a/e$1;-><init>(Lcom/crashlytics/android/a/e;La/a/a/a/a/g/b;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/crashlytics/android/a/ab$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/crashlytics/android/a/e;->a(Lcom/crashlytics/android/a/ab$a;ZZ)V

    return-void
.end method

.method a(Lcom/crashlytics/android/a/ab$a;ZZ)V
    .locals 1

    new-instance v0, Lcom/crashlytics/android/a/e$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/crashlytics/android/a/e$6;-><init>(Lcom/crashlytics/android/a/e;Lcom/crashlytics/android/a/ab$a;Z)V

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/e;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/crashlytics/android/a/e$3;

    invoke-direct {p1, p0}, Lcom/crashlytics/android/a/e$3;-><init>(Lcom/crashlytics/android/a/e;)V

    invoke-direct {p0, p1}, Lcom/crashlytics/android/a/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/crashlytics/android/a/e$4;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/e$4;-><init>(Lcom/crashlytics/android/a/e;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/crashlytics/android/a/ab$a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/a/e;->a(Lcom/crashlytics/android/a/ab$a;ZZ)V

    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, Lcom/crashlytics/android/a/e$5;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/e$5;-><init>(Lcom/crashlytics/android/a/e;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/crashlytics/android/a/ab$a;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/a/e;->a(Lcom/crashlytics/android/a/ab$a;ZZ)V

    return-void
.end method
