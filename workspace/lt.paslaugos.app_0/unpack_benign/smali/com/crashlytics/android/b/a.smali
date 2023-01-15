.class abstract Lcom/crashlytics/android/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/b/j;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:Lcom/crashlytics/android/b/c;

.field private e:La/a/a/a/a/b/p;

.field private f:La/a/a/a/a/g/f;

.field private g:Lcom/crashlytics/android/b/d;

.field private h:La/a/a/a/a/f/c;

.field private i:La/a/a/a/a/b/k;

.field private j:La/a/a/a/a/e/e;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/b/a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crashlytics/android/b/a;->k:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private e()V
    .locals 9

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Performing update check"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/a/b/g;

    invoke-direct {v0}, La/a/a/a/a/b/g;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/b/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, La/a/a/a/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/b/a;->e:La/a/a/a/a/b/p;

    invoke-virtual {v1}, La/a/a/a/a/b/p;->h()Ljava/util/Map;

    move-result-object v1

    sget-object v2, La/a/a/a/a/b/p$a;->c:La/a/a/a/a/b/p$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lcom/crashlytics/android/b/e;

    iget-object v3, p0, Lcom/crashlytics/android/b/a;->d:Lcom/crashlytics/android/b/c;

    iget-object v2, p0, Lcom/crashlytics/android/b/a;->d:Lcom/crashlytics/android/b/c;

    invoke-virtual {v2}, Lcom/crashlytics/android/b/c;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/crashlytics/android/b/a;->f:La/a/a/a/a/g/f;

    iget-object v5, v2, La/a/a/a/a/g/f;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/b/a;->j:La/a/a/a/a/e/e;

    new-instance v7, Lcom/crashlytics/android/b/g;

    invoke-direct {v7}, Lcom/crashlytics/android/b/g;-><init>()V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/crashlytics/android/b/e;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;Lcom/crashlytics/android/b/g;)V

    iget-object v2, p0, Lcom/crashlytics/android/b/a;->g:Lcom/crashlytics/android/b/d;

    invoke-virtual {v8, v0, v1, v2}, Lcom/crashlytics/android/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/b/d;)Lcom/crashlytics/android/b/f;

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/crashlytics/android/b/a;->k:J

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/crashlytics/android/b/c;La/a/a/a/a/b/p;La/a/a/a/a/g/f;Lcom/crashlytics/android/b/d;La/a/a/a/a/f/c;La/a/a/a/a/b/k;La/a/a/a/a/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/b/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/b/a;->d:Lcom/crashlytics/android/b/c;

    iput-object p3, p0, Lcom/crashlytics/android/b/a;->e:La/a/a/a/a/b/p;

    iput-object p4, p0, Lcom/crashlytics/android/b/a;->f:La/a/a/a/a/g/f;

    iput-object p5, p0, Lcom/crashlytics/android/b/a;->g:Lcom/crashlytics/android/b/d;

    iput-object p6, p0, Lcom/crashlytics/android/b/a;->h:La/a/a/a/a/f/c;

    iput-object p7, p0, Lcom/crashlytics/android/b/a;->i:La/a/a/a/a/b/k;

    iput-object p8, p0, Lcom/crashlytics/android/b/a;->j:La/a/a/a/a/e/e;

    invoke-virtual {p0}, Lcom/crashlytics/android/b/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/crashlytics/android/b/a;->c()V

    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/crashlytics/android/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method b()Z
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/crashlytics/android/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/b/a;->h:La/a/a/a/a/f/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/b/a;->h:La/a/a/a/a/f/c;

    invoke-interface {v1}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_update_check"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crashlytics/android/b/a;->h:La/a/a/a/a/f/c;

    iget-object v2, p0, Lcom/crashlytics/android/b/a;->h:La/a/a/a/a/f/c;

    invoke-interface {v2}, La/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_update_check"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v1, v2}, La/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/crashlytics/android/b/a;->i:La/a/a/a/a/b/k;

    invoke-interface {v0}, La/a/a/a/a/b/k;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/crashlytics/android/b/a;->f:La/a/a/a/a/g/f;

    iget v2, v2, La/a/a/a/a/g/f;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check for updates delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check for updates last check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/crashlytics/android/b/a;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/b/a;->d()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check for updates current time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", next check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    :try_start_1
    invoke-direct {p0}, Lcom/crashlytics/android/b/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/b/a;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/b/a;->a(J)V

    throw v2

    :cond_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Check for updates next check time was not passed"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method d()J
    .locals 2

    iget-wide v0, p0, Lcom/crashlytics/android/b/a;->k:J

    return-wide v0
.end method
