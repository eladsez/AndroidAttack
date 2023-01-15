.class Lcom/crashlytics/android/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/a/k$a;


# instance fields
.field final a:Lcom/crashlytics/android/a/e;

.field final b:La/a/a/a/a;

.field final c:Lcom/crashlytics/android/a/k;

.field final d:Lcom/crashlytics/android/a/h;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/e;La/a/a/a/a;Lcom/crashlytics/android/a/k;Lcom/crashlytics/android/a/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    iput-object p2, p0, Lcom/crashlytics/android/a/z;->b:La/a/a/a/a;

    iput-object p3, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/k;

    iput-object p4, p0, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/h;

    iput-wide p5, p0, Lcom/crashlytics/android/a/z;->e:J

    return-void
.end method

.method public static a(La/a/a/a/i;Landroid/content/Context;La/a/a/a/a/b/p;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/a/z;
    .locals 13

    move-object v8, p1

    new-instance v4, Lcom/crashlytics/android/a/ae;

    move-object v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, p1, p2, v1, v2}, Lcom/crashlytics/android/a/ae;-><init>(Landroid/content/Context;La/a/a/a/a/b/p;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/crashlytics/android/a/f;

    new-instance v0, La/a/a/a/a/f/b;

    move-object v1, p0

    invoke-direct {v0, p0}, La/a/a/a/a/f/b;-><init>(La/a/a/a/i;)V

    invoke-direct {v3, p1, v0}, Lcom/crashlytics/android/a/f;-><init>(Landroid/content/Context;La/a/a/a/a/f/a;)V

    new-instance v5, La/a/a/a/a/e/b;

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    invoke-direct {v5, v0}, La/a/a/a/a/e/b;-><init>(La/a/a/a/l;)V

    new-instance v9, La/a/a/a/a;

    invoke-direct {v9, p1}, La/a/a/a/a;-><init>(Landroid/content/Context;)V

    const-string v0, "Answers Events Handler"

    invoke-static {v0}, La/a/a/a/a/b/n;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    new-instance v10, Lcom/crashlytics/android/a/k;

    invoke-direct {v10, v6}, Lcom/crashlytics/android/a/k;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance v7, Lcom/crashlytics/android/a/p;

    invoke-direct {v7, p1}, Lcom/crashlytics/android/a/p;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/crashlytics/android/a/e;

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/crashlytics/android/a/e;-><init>(La/a/a/a/i;Landroid/content/Context;Lcom/crashlytics/android/a/f;Lcom/crashlytics/android/a/ae;La/a/a/a/a/e/e;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/a/p;)V

    invoke-static {p1}, Lcom/crashlytics/android/a/h;->a(Landroid/content/Context;)Lcom/crashlytics/android/a/h;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/a/z;

    move-object v6, v1

    move-object v7, v11

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    move-wide/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lcom/crashlytics/android/a/z;-><init>(Lcom/crashlytics/android/a/e;La/a/a/a/a;Lcom/crashlytics/android/a/k;Lcom/crashlytics/android/a/h;J)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/e;->c()V

    return-void
.end method

.method public a(J)V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged install"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    invoke-static {p1, p2}, Lcom/crashlytics/android/a/ab;->a(J)Lcom/crashlytics/android/a/ab$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/a/e;->b(Lcom/crashlytics/android/a/ab$a;)V

    return-void
.end method

.method public a(La/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/k;

    iget-boolean v1, p1, La/a/a/a/a/g/b;->j:Z

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/k;->a(Z)V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/a/e;->a(La/a/a/a/a/g/b;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/crashlytics/android/a/ab$b;)V
    .locals 4

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged lifecycle event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/crashlytics/android/a/ab$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    invoke-static {p2, p1}, Lcom/crashlytics/android/a/ab;->a(Lcom/crashlytics/android/a/ab$b;Landroid/app/Activity;)Lcom/crashlytics/android/a/ab$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/a/e;->a(Lcom/crashlytics/android/a/ab$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged crash"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    invoke-static {p1, p2}, Lcom/crashlytics/android/a/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/a/ab$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/a/e;->c(Lcom/crashlytics/android/a/ab$a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onCrash called from main thread!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/e;->b()V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->b:La/a/a/a/a;

    new-instance v1, Lcom/crashlytics/android/a/g;

    iget-object v2, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/k;

    invoke-direct {v1, p0, v2}, Lcom/crashlytics/android/a/g;-><init>(Lcom/crashlytics/android/a/z;Lcom/crashlytics/android/a/k;)V

    invoke-virtual {v0, v1}, La/a/a/a/a;->a(La/a/a/a/a$b;)Z

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/k;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/a/k;->a(Lcom/crashlytics/android/a/k$a;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/a/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/crashlytics/android/a/z;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/a/z;->a(J)V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/h;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->b:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/a;->a()V

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/e;->a()V

    return-void
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/h;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
