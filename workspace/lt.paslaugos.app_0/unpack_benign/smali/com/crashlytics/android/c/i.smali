.class public Lcom/crashlytics/android/c/i;
.super La/a/a/a/i;


# annotations
.annotation runtime La/a/a/a/a/c/d;
    a = {
        Lcom/crashlytics/android/c/a/a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/c/i$b;,
        Lcom/crashlytics/android/c/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/i<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/crashlytics/android/c/j;

.field private d:Lcom/crashlytics/android/c/j;

.field private k:Lcom/crashlytics/android/c/k;

.field private l:Lcom/crashlytics/android/c/h;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:F

.field private q:Z

.field private final r:Lcom/crashlytics/android/c/aa;

.field private s:La/a/a/a/a/e/e;

.field private t:Lcom/crashlytics/android/c/g;

.field private u:Lcom/crashlytics/android/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/crashlytics/android/c/i;-><init>(FLcom/crashlytics/android/c/k;Lcom/crashlytics/android/c/aa;Z)V

    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/c/k;Lcom/crashlytics/android/c/aa;Z)V
    .locals 7

    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, La/a/a/a/a/b/n;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/crashlytics/android/c/i;-><init>(FLcom/crashlytics/android/c/k;Lcom/crashlytics/android/c/aa;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/c/k;Lcom/crashlytics/android/c/aa;ZLjava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, La/a/a/a/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/c/i;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/c/i;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/c/i;->o:Ljava/lang/String;

    iput p1, p0, Lcom/crashlytics/android/c/i;->p:F

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/crashlytics/android/c/i$b;

    invoke-direct {p2, v0}, Lcom/crashlytics/android/c/i$b;-><init>(Lcom/crashlytics/android/c/i$1;)V

    :goto_0
    iput-object p2, p0, Lcom/crashlytics/android/c/i;->k:Lcom/crashlytics/android/c/k;

    iput-object p3, p0, Lcom/crashlytics/android/c/i;->r:Lcom/crashlytics/android/c/aa;

    iput-boolean p4, p0, Lcom/crashlytics/android/c/i;->q:Z

    new-instance p1, Lcom/crashlytics/android/c/g;

    invoke-direct {p1, p5}, Lcom/crashlytics/android/c/g;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/crashlytics/android/c/i;->t:Lcom/crashlytics/android/c/g;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/crashlytics/android/c/i;->a:J

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/i;)Lcom/crashlytics/android/c/j;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/c/i;->c:Lcom/crashlytics/android/c/j;

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p0

    const-string p1, "CrashlyticsCore"

    const-string v1, "Configured not to require a build ID."

    invoke-interface {p0, p1, v1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p0}, La/a/a/a/a/b/i;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p0, "CrashlyticsCore"

    const-string p1, "."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     |  | "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     |  |"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     |  |"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".   \\ |  | /"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".    \\    /"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     \\  /"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".      \\/"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, "."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, "."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".      /\\"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     /  \\"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".    /    \\"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".   / |  | \\"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     |  |"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     |  |"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, ".     |  |"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CrashlyticsCore"

    const-string p1, "."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private v()V
    .locals 4

    new-instance v0, Lcom/crashlytics/android/c/i$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/c/i$1;-><init>(Lcom/crashlytics/android/c/i;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->u()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/a/a/a/c/l;

    invoke-virtual {v0, v2}, La/a/a/a/a/c/g;->a(La/a/a/a/a/c/l;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->r()La/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x4

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics timed out during initialization."

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Problem encountered during Crashlytics initialization."

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was interrupted during initialization."

    :goto_1
    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->t:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/i$a;

    iget-object v2, p0, Lcom/crashlytics/android/c/i;->d:Lcom/crashlytics/android/c/j;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/c/i$a;-><init>(Lcom/crashlytics/android/c/j;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/c/i;->k:Lcom/crashlytics/android/c/k;

    invoke-interface {v0}, Lcom/crashlytics/android/c/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.4.1.19"

    return-object v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-boolean v1, v11, Lcom/crashlytics/android/c/i;->q:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    return v12

    :cond_0
    new-instance v1, La/a/a/a/a/b/g;

    invoke-direct {v1}, La/a/a/a/a/b/g;-><init>()V

    invoke-virtual {v1, v0}, La/a/a/a/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v12

    :cond_1
    invoke-static/range {p1 .. p1}, La/a/a/a/a/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.crashlytics.RequireBuildId"

    const/4 v13, 0x1

    invoke-static {v0, v3, v13}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/crashlytics/android/c/i;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v14, 0x0

    :try_start_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initializing Crashlytics "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/c/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, La/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, La/a/a/a/a/f/b;

    invoke-direct {v7, v11}, La/a/a/a/a/f/b;-><init>(La/a/a/a/i;)V

    new-instance v3, Lcom/crashlytics/android/c/j;

    const-string v4, "crash_marker"

    invoke-direct {v3, v4, v7}, Lcom/crashlytics/android/c/j;-><init>(Ljava/lang/String;La/a/a/a/a/f/a;)V

    iput-object v3, v11, Lcom/crashlytics/android/c/i;->d:Lcom/crashlytics/android/c/j;

    new-instance v3, Lcom/crashlytics/android/c/j;

    const-string v4, "initialization_marker"

    invoke-direct {v3, v4, v7}, Lcom/crashlytics/android/c/j;-><init>(Ljava/lang/String;La/a/a/a/a/f/a;)V

    iput-object v3, v11, Lcom/crashlytics/android/c/i;->c:Lcom/crashlytics/android/c/j;

    new-instance v3, La/a/a/a/a/f/d;

    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.crashlytics.android.core.CrashlyticsCore"

    invoke-direct {v3, v4, v5}, La/a/a/a/a/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, v11}, Lcom/crashlytics/android/c/ab;->a(La/a/a/a/a/f/c;Lcom/crashlytics/android/c/i;)Lcom/crashlytics/android/c/ab;

    move-result-object v6

    iget-object v3, v11, Lcom/crashlytics/android/c/i;->r:Lcom/crashlytics/android/c/aa;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/crashlytics/android/c/l;

    iget-object v4, v11, Lcom/crashlytics/android/c/i;->r:Lcom/crashlytics/android/c/aa;

    invoke-direct {v3, v4}, Lcom/crashlytics/android/c/l;-><init>(Lcom/crashlytics/android/c/aa;)V

    goto :goto_0

    :cond_2
    move-object v3, v14

    :goto_0
    new-instance v4, La/a/a/a/a/e/b;

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v5

    invoke-direct {v4, v5}, La/a/a/a/a/e/b;-><init>(La/a/a/a/l;)V

    iput-object v4, v11, Lcom/crashlytics/android/c/i;->s:La/a/a/a/a/e/e;

    iget-object v4, v11, Lcom/crashlytics/android/c/i;->s:La/a/a/a/a/e/e;

    invoke-interface {v4, v3}, La/a/a/a/a/e/e;->a(La/a/a/a/a/e/g;)V

    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/c/i;->p()La/a/a/a/a/b/p;

    move-result-object v5

    invoke-static {v0, v5, v1, v2}, Lcom/crashlytics/android/c/a;->a(Landroid/content/Context;La/a/a/a/a/b/p;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/c/a;

    move-result-object v8

    new-instance v9, Lcom/crashlytics/android/c/v;

    iget-object v1, v8, Lcom/crashlytics/android/c/a;->d:Ljava/lang/String;

    invoke-direct {v9, v0, v1}, Lcom/crashlytics/android/c/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package name is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/crashlytics/android/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, La/a/a/a/a/b/o;

    invoke-direct {v1}, La/a/a/a/a/b/o;-><init>()V

    invoke-virtual {v1, v0}, La/a/a/a/a/b/o;->b(Landroid/content/Context;)Z

    move-result v10

    new-instance v15, Lcom/crashlytics/android/c/h;

    iget-object v3, v11, Lcom/crashlytics/android/c/i;->t:Lcom/crashlytics/android/c/g;

    iget-object v4, v11, Lcom/crashlytics/android/c/i;->s:La/a/a/a/a/e/e;

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/crashlytics/android/c/h;-><init>(Lcom/crashlytics/android/c/i;Lcom/crashlytics/android/c/g;La/a/a/a/a/e/e;La/a/a/a/a/b/p;Lcom/crashlytics/android/c/ab;La/a/a/a/a/f/a;Lcom/crashlytics/android/c/a;Lcom/crashlytics/android/c/ak;Z)V

    iput-object v15, v11, Lcom/crashlytics/android/c/i;->l:Lcom/crashlytics/android/c/h;

    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/c/i;->l()Z

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/c/i;->w()V

    iget-object v2, v11, Lcom/crashlytics/android/c/i;->l:Lcom/crashlytics/android/c/h;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, La/a/a/a/a/b/i;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/c/i;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v12

    :cond_3
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Exception handling initialization successful"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v14, v11, Lcom/crashlytics/android/c/i;->l:Lcom/crashlytics/android/c/h;

    return v12

    :cond_4
    new-instance v0, La/a/a/a/a/c/m;

    const-string v1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-direct {v0, v1}, La/a/a/a/a/c/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a_()Z
    .locals 1

    invoke-super {p0}, La/a/a/a/i;->q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/i;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method protected d()Ljava/lang/Void;
    .locals 5

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->j()V

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->m()Lcom/crashlytics/android/c/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/crashlytics/android/c/i;->l:Lcom/crashlytics/android/c/h;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/a/a/d;)V

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/c/i;->l:Lcom/crashlytics/android/c/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/h;->d()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, La/a/a/a/a/g/q;->a()La/a/a/a/a/g/q;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/g/q;->b()La/a/a/a/a/g/t;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Received null settings, skipping report submission!"

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->k()V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v2, v1, La/a/a/a/a/g/t;->d:La/a/a/a/a/g/m;

    iget-boolean v2, v2, La/a/a/a/a/g/m;->c:Z

    if-nez v2, :cond_2

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->k()V

    return-object v0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/crashlytics/android/c/i;->l:Lcom/crashlytics/android/c/h;

    iget-object v3, v1, La/a/a/a/a/g/t;->b:La/a/a/a/a/g/p;

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/c/h;->a(La/a/a/a/a/g/p;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Could not finalize previous sessions."

    invoke-interface {v2, v3, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/crashlytics/android/c/i;->l:Lcom/crashlytics/android/c/h;

    iget v3, p0, Lcom/crashlytics/android/c/i;->p:F

    invoke-virtual {v2, v3, v1}, Lcom/crashlytics/android/c/h;->a(FLa/a/a/a/a/g/t;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v2, v3, v4, v1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->k()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->k()V

    throw v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->p()La/a/a/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->p()La/a/a/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i;->p()La/a/a/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method j()V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->t:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/i$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/i$2;-><init>(Lcom/crashlytics/android/c/i;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method k()V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->t:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/i$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/i$3;-><init>(Lcom/crashlytics/android/c/i;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method l()Z
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->t:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/i$4;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/i$4;-><init>(Lcom/crashlytics/android/c/i;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method m()Lcom/crashlytics/android/c/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->u:Lcom/crashlytics/android/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->u:Lcom/crashlytics/android/c/a/a;

    invoke-interface {v0}, Lcom/crashlytics/android/c/a/a;->a()Lcom/crashlytics/android/c/a/a/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method n()V
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/i;->d:Lcom/crashlytics/android/c/j;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/j;->a()Z

    return-void
.end method
