.class public Lcom/google/android/gms/internal/vc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vc$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/vc;


# instance fields
.field private A:Z

.field private B:Ljava/lang/Boolean;

.field private C:J

.field private D:Ljava/nio/channels/FileLock;

.field private E:Ljava/nio/channels/FileChannel;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private H:I

.field private I:I

.field private J:J

.field private K:J

.field private L:Z

.field private M:Z

.field private N:Z

.field private final O:J

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/tb;

.field private final d:Lcom/google/android/gms/internal/um;

.field private final e:Lcom/google/android/gms/internal/ub;

.field private final f:Lcom/google/android/gms/internal/ux;

.field private final g:Lcom/google/android/gms/internal/xz;

.field private final h:Lcom/google/android/gms/internal/uw;

.field private final i:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final j:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final k:Lcom/google/android/gms/internal/yk;

.field private final l:Lcom/google/android/gms/internal/tz;

.field private final m:Lcom/google/android/gms/internal/uf;

.field private final n:Lcom/google/android/gms/common/util/e;

.field private final o:Lcom/google/android/gms/internal/wv;

.field private final p:Lcom/google/android/gms/internal/we;

.field private final q:Lcom/google/android/gms/internal/sr;

.field private r:Lcom/google/android/gms/internal/tc;

.field private s:Lcom/google/android/gms/internal/tx;

.field private t:Lcom/google/android/gms/internal/wz;

.field private u:Lcom/google/android/gms/internal/ti;

.field private v:Lcom/google/android/gms/internal/tw;

.field private w:Lcom/google/android/gms/internal/uk;

.field private x:Lcom/google/android/gms/internal/yf;

.field private y:Lcom/google/android/gms/internal/sy;

.field private z:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/wd;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vc;->z:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/wd;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/vc;->J:J

    invoke-static {}, Lcom/google/android/gms/common/util/g;->d()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/vc;->O:J

    new-instance v0, Lcom/google/android/gms/internal/tb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/tb;-><init>(Lcom/google/android/gms/internal/vc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    new-instance v0, Lcom/google/android/gms/internal/um;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/um;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->d:Lcom/google/android/gms/internal/um;

    new-instance v0, Lcom/google/android/gms/internal/ub;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ub;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->e:Lcom/google/android/gms/internal/ub;

    new-instance v0, Lcom/google/android/gms/internal/yk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/yk;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->k:Lcom/google/android/gms/internal/yk;

    new-instance v0, Lcom/google/android/gms/internal/tz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/tz;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->l:Lcom/google/android/gms/internal/tz;

    new-instance v0, Lcom/google/android/gms/internal/sr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/sr;-><init>(Lcom/google/android/gms/internal/vc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->q:Lcom/google/android/gms/internal/sr;

    new-instance v0, Lcom/google/android/gms/internal/uf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/uf;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->m:Lcom/google/android/gms/internal/uf;

    new-instance v0, Lcom/google/android/gms/internal/wv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/wv;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->o:Lcom/google/android/gms/internal/wv;

    new-instance v0, Lcom/google/android/gms/internal/we;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/we;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->p:Lcom/google/android/gms/internal/we;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/vc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->i:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/vc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->j:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/xz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/xz;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->g:Lcom/google/android/gms/internal/xz;

    new-instance v0, Lcom/google/android/gms/internal/uw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/uw;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->h:Lcom/google/android/gms/internal/uw;

    new-instance v0, Lcom/google/android/gms/internal/ux;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ux;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->f:Lcom/google/android/gms/internal/ux;

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v0, Lcom/google/android/gms/internal/we;->a:Lcom/google/android/gms/internal/ws;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ws;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ws;-><init>(Lcom/google/android/gms/internal/we;Lcom/google/android/gms/internal/wf;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/we;->a:Lcom/google/android/gms/internal/ws;

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/we;->a:Lcom/google/android/gms/internal/ws;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/we;->a:Lcom/google/android/gms/internal/ws;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->f:Lcom/google/android/gms/internal/ux;

    new-instance v1, Lcom/google/android/gms/internal/vd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/vc;Lcom/google/android/gms/internal/wd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ux;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static D()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final H()Lcom/google/android/gms/internal/uk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->w:Lcom/google/android/gms/internal/uk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->w:Lcom/google/android/gms/internal/uk;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final I()Lcom/google/android/gms/internal/yf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->x:Lcom/google/android/gms/internal/yf;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->x:Lcom/google/android/gms/internal/yf;

    return-object v0
.end method

.method private final J()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    const-string v0, "google_app_measurement.db"

    iget-object v1, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->E:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->E:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->D:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->D:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final K()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wb;->c()V

    iget-object v3, v2, Lcom/google/android/gms/internal/um;->g:Lcom/google/android/gms/internal/up;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wb;->p()Lcom/google/android/gms/internal/yk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yk;->z()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    iget-object v2, v2, Lcom/google/android/gms/internal/um;->g:Lcom/google/android/gms/internal/up;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_0
    const/4 v2, 0x0

    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final L()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final M()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->N()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/vc;->K:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/internal/vc;->K:J

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->H()Lcom/google/android/gms/internal/uk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/uk;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->I()Lcom/google/android/gms/internal/yf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yf;->y()V

    return-void

    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/internal/vc;->K:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->L()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/tq;->G:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/tc;->H()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/tc;->C()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_7

    iget-object v10, v0, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/tb;->A()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lcom/google/android/gms/internal/tq;->B:Lcom/google/android/gms/internal/ts;

    goto :goto_2

    :cond_6
    sget-object v10, Lcom/google/android/gms/internal/tq;->A:Lcom/google/android/gms/internal/ts;

    goto :goto_2

    :cond_7
    sget-object v10, Lcom/google/android/gms/internal/tq;->z:Lcom/google/android/gms/internal/ts;

    :goto_2
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/gms/internal/um;->c:Lcom/google/android/gms/internal/up;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/gms/internal/um;->d:Lcom/google/android/gms/internal/up;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/tc;->E()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/tc;->F()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-nez v10, :cond_9

    :cond_8
    move-wide v5, v3

    goto/16 :goto_4

    :cond_9
    const/4 v10, 0x0

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v1, v10

    sub-long/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long/2addr v1, v12

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long/2addr v5, v8

    if-eqz v7, :cond_a

    cmp-long v7, v10, v3

    if-lez v7, :cond_a

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long v5, v5, v17

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v7

    move-wide/from16 v12, v17

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/google/android/gms/internal/yk;->a(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long/2addr v10, v12

    move-wide v5, v10

    :cond_b
    cmp-long v7, v1, v3

    if-eqz v7, :cond_d

    cmp-long v7, v1, v8

    if-ltz v7, :cond_d

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_3
    const/16 v8, 0x14

    sget-object v9, Lcom/google/android/gms/internal/tq;->I:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v5, v8, :cond_8

    const/4 v8, 0x1

    shl-int v9, v8, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/android/gms/internal/tq;->H:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    mul-long v13, v13, v11

    add-long/2addr v6, v13

    cmp-long v9, v6, v1

    if-lez v9, :cond_c

    move-wide v5, v6

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    cmp-long v1, v5, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->H()Lcom/google/android/gms/internal/uk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/uk;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->I()Lcom/google/android/gms/internal/yf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yf;->y()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->s()Lcom/google/android/gms/internal/uf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/uf;->y()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->H()Lcom/google/android/gms/internal/uk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/uk;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->I()Lcom/google/android/gms/internal/yf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yf;->y()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/um;->e:Lcom/google/android/gms/internal/up;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v1

    sget-object v7, Lcom/google/android/gms/internal/tq;->x:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v7, v8}, Lcom/google/android/gms/internal/yk;->a(JJ)Z

    move-result v9

    if-nez v9, :cond_10

    add-long/2addr v1, v7

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->H()Lcom/google/android/gms/internal/uk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/uk;->b()V

    iget-object v1, v0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-gtz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/tq;->C:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/um;->c:Lcom/google/android/gms/internal/up;

    iget-object v2, v0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->I()Lcom/google/android/gms/internal/yf;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/yf;->a(J)V

    return-void

    :cond_12
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->H()Lcom/google/android/gms/internal/uk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/uk;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->I()Lcom/google/android/gms/internal/yf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yf;->y()V

    return-void
.end method

.method private final N()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vc;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final O()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vc;->L:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vc;->M:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vc;->N:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->G:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/vc;->L:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/vc;->M:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/vc;->N:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return v0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/sw;
    .locals 22

    move-object/from16 v1, p2

    const-string v0, "Unknown"

    const-string v2, "Unknown"

    const-string v3, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return-object v5

    :cond_0
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v4

    const-string v6, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "manual_install"

    :cond_1
    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_2
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ""

    goto :goto_1

    :goto_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/rm;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/rm;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v2

    move v2, v0

    goto :goto_3

    :cond_4
    const/high16 v0, -0x80000000

    move-object v3, v2

    const/high16 v2, -0x80000000

    :goto_3
    new-instance v21, Lcom/google/android/gms/internal/sw;

    move-object/from16 v0, v21

    int-to-long v4, v2

    const-wide/16 v7, 0x2fb3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v2

    move-object/from16 v9, p1

    invoke-virtual {v2, v9, v1}, Lcom/google/android/gms/internal/yk;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v12, p4

    move/from16 v20, p5

    invoke-direct/range {v0 .. v20}, Lcom/google/android/gms/internal/sw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v21

    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v2, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/vc;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/vc;->a:Lcom/google/android/gms/internal/vc;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/vc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vc;->a:Lcom/google/android/gms/internal/vc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/wd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/wd;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/vc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vc;-><init>(Lcom/google/android/gms/internal/wd;)V

    sput-object p0, Lcom/google/android/gms/internal/vc;->a:Lcom/google/android/gms/internal/vc;

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
    sget-object p0, Lcom/google/android/gms/internal/vc;->a:Lcom/google/android/gms/internal/vc;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/sv;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/vc;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/tq;->k:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/tq;->l:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "app_instance_id"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v3, "12211"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/uw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/yu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/uw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/vc;->L:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->s()Lcom/google/android/gms/internal/uf;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/vg;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wb;->s()Lcom/google/android/gms/internal/ux;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/uj;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/uj;-><init>(Lcom/google/android/gms/internal/uf;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/uh;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ux;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/vc;Lcom/google/android/gms/internal/wd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/wd;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/wb;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Lcom/google/android/gms/internal/wd;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wb;->c()V

    new-instance p1, Lcom/google/android/gms/internal/ti;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ti;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vc;->u:Lcom/google/android/gms/internal/ti;

    new-instance p1, Lcom/google/android/gms/internal/tw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/tw;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vc;->v:Lcom/google/android/gms/internal/tw;

    new-instance v0, Lcom/google/android/gms/internal/tc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/tc;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->r:Lcom/google/android/gms/internal/tc;

    new-instance v0, Lcom/google/android/gms/internal/tx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/tx;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->s:Lcom/google/android/gms/internal/tx;

    new-instance v0, Lcom/google/android/gms/internal/sy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/sy;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->y:Lcom/google/android/gms/internal/sy;

    new-instance v0, Lcom/google/android/gms/internal/wz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->t:Lcom/google/android/gms/internal/wz;

    new-instance v0, Lcom/google/android/gms/internal/yf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/yf;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->x:Lcom/google/android/gms/internal/yf;

    new-instance v0, Lcom/google/android/gms/internal/uk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/uk;-><init>(Lcom/google/android/gms/internal/vc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->w:Lcom/google/android/gms/internal/uk;

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->k:Lcom/google/android/gms/internal/yk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->S()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->d:Lcom/google/android/gms/internal/um;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->S()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->v:Lcom/google/android/gms/internal/tw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->S()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->C()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    const-wide/16 v2, 0x2fb3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->C()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tw;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/yk;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->C()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->C()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/vc;->H:I

    iget v0, p0, Lcom/google/android/gms/internal/vc;->I:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v0, "Not all components initialized"

    iget v1, p0, Lcom/google/android/gms/internal/vc;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/vc;->I:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vc;->z:Z

    return-void
.end method

.method private final a(ILjava/nio/channels/FileChannel;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return v0
.end method

.method private static a(Lcom/google/android/gms/internal/yy;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_1

    iget-object p0, v3, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, v3, Lcom/google/android/gms/internal/yz;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_4

    iget-object p0, v3, Lcom/google/android/gms/internal/yz;->d:Ljava/lang/Double;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method private final a(Ljava/lang/String;J)Z
    .locals 56

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/vc$a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/vc$a;-><init>(Lcom/google/android/gms/internal/vc;Lcom/google/android/gms/internal/vd;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/vc;->J:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wc;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v12, :cond_3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_0

    :try_start_2
    new-array v13, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v21, v3

    goto/16 :goto_34

    :catch_0
    move-exception v0

    move-object v6, v3

    move-object v12, v6

    :goto_0
    move-object v3, v0

    goto/16 :goto_b

    :cond_0
    :try_start_3
    new-array v13, v11, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_1
    if-eqz v12, :cond_1

    :try_start_4
    const-string v12, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v12, ""

    :goto_2
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit16 v14, v14, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_2

    if-eqz v3, :cond_c

    :goto_3
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_c

    :cond_2
    :try_start_8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v23, v3

    move-object v3, v12

    move-object/from16 v22, v13

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v3

    goto :goto_0

    :cond_3
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    :try_start_a
    new-array v12, v9, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v13, v12, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    :goto_4
    if-eqz v3, :cond_5

    const-string v3, " and rowid <= ?"

    goto :goto_5

    :cond_5
    const-string v3, ""

    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by rowid limit 1;"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v23, v3

    move-object/from16 v22, v13

    const/4 v3, 0x0

    :goto_6
    :try_start_c
    const-string v13, "raw_events_metadata"

    const-string v12, "metadata"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v14

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v12, v9, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v22, v12, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object/from16 v24, v12

    move-object v12, v15

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v24

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v12, :cond_7

    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v15, :cond_c

    :try_start_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v21, v15

    goto/16 :goto_34

    :catch_2
    move-exception v0

    move-object v12, v3

    move-object v6, v15

    goto/16 :goto_0

    :cond_7
    :try_start_10
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v10, v13}, Lcom/google/android/gms/internal/ans;->a([BII)Lcom/google/android/gms/internal/ans;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/zb;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zb;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v12, :cond_8

    :try_start_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v12

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v14, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_8
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/te;->a(Lcom/google/android/gms/internal/zb;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v9, 0x3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_9

    :try_start_15
    const-string v12, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v13, v9, [Ljava/lang/String;

    aput-object v3, v13, v10

    aput-object v22, v13, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v13, v6
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v5, v12

    move-object/from16 v16, v13

    goto :goto_7

    :cond_9
    :try_start_16
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v22, v12, v11

    move-object/from16 v16, v12

    :goto_7
    const-string v13, "raw_events"

    const-string v6, "rowid"

    const-string v12, "name"

    const-string v14, "timestamp"

    const-string v7, "data"

    filled-new-array {v6, v12, v14, v7}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/16 v20, 0x0

    move-object/from16 v12, v25

    move-object v6, v15

    move-object v15, v5

    :try_start_17
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v5, :cond_c

    :goto_8
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto/16 :goto_c

    :cond_a
    :try_start_1a
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    array-length v12, v8

    invoke-static {v8, v10, v12}, Lcom/google/android/gms/internal/ans;->a([BII)Lcom/google/android/gms/internal/ans;

    move-result-object v8

    new-instance v12, Lcom/google/android/gms/internal/yy;

    invoke-direct {v12}, Lcom/google/android/gms/internal/yy;-><init>()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/ans;)Lcom/google/android/gms/internal/aob;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-interface {v2, v6, v7, v12}, Lcom/google/android/gms/internal/te;->a(JLcom/google/android/gms/internal/yy;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v8, v12, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-nez v6, :cond_a

    if-eqz v5, :cond_c

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v21, v5

    goto/16 :goto_34

    :catch_4
    move-exception v0

    move-object v12, v3

    move-object v6, v5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v5, v0

    move-object v6, v15

    :try_start_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v5}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v6, :cond_c

    :goto_9
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v6, v15

    goto/16 :goto_33

    :catch_7
    move-exception v0

    move-object v6, v15

    :goto_a
    move-object v12, v3

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v21, v23

    goto/16 :goto_34

    :catch_8
    move-exception v0

    move-object v12, v3

    move-object/from16 v6, v23

    goto/16 :goto_0

    :catch_9
    move-exception v0

    move-object v6, v3

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/16 v21, 0x0

    goto/16 :goto_34

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_b
    :try_start_1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v6, :cond_c

    goto :goto_9

    :cond_c
    :goto_c
    :try_start_20
    iget-object v3, v2, Lcom/google/android/gms/internal/vc$a;->c:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/internal/vc$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v3, 0x1

    :goto_e
    if-nez v3, :cond_53

    iget-object v3, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v4, v2, Lcom/google/android/gms/internal/vc$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/yy;

    iput-object v4, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    iget-object v4, v1, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    iget-object v5, v3, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/tb;->d(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    :goto_f
    iget-object v14, v2, Lcom/google/android/gms/internal/vc$a;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_2a

    iget-object v14, v2, Lcom/google/android/gms/internal/vc$a;->c:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/yy;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v11, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v11}, Lcom/google/android/gms/internal/uw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Dropping blacklisted raw event. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v11, v11, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v15

    iget-object v10, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v11, v10}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/yk;->k(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/yk;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_10

    :cond_f
    const/4 v5, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v5, 0x1

    :goto_11
    if-nez v5, :cond_11

    const-string v5, "_err"

    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v15

    iget-object v5, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const/16 v17, 0xb

    const-string v18, "_ev"

    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move/from16 v35, v7

    goto/16 :goto_1d

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v10, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lcom/google/android/gms/internal/uw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/yk;->m(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_12

    :cond_13
    move/from16 v35, v7

    goto/16 :goto_19

    :cond_14
    :goto_12
    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    if-nez v6, :cond_15

    const/4 v6, 0x0

    new-array v10, v6, [Lcom/google/android/gms/internal/yz;

    iput-object v10, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    :cond_15
    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v10, v6

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_13
    if-ge v11, v10, :cond_18

    aget-object v15, v6, v11

    move-object/from16 v28, v6

    const-string v6, "_c"

    move/from16 v29, v10

    iget-object v10, v15, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v15, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    const/16 v17, 0x1

    goto :goto_14

    :cond_16
    const-string v6, "_r"

    iget-object v10, v15, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v15, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    const/16 v18, 0x1

    :cond_17
    :goto_14
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v28

    move/from16 v10, v29

    goto :goto_13

    :cond_18
    if-nez v17, :cond_19

    if-eqz v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v6

    const-string v10, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v11

    iget-object v15, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    iget-object v10, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/yz;

    new-instance v10, Lcom/google/android/gms/internal/yz;

    invoke-direct {v10}, Lcom/google/android/gms/internal/yz;-><init>()V

    const-string v11, "_c"

    iput-object v11, v10, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    array-length v11, v6

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    aput-object v10, v6, v11

    iput-object v6, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    :cond_19
    if-nez v18, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v6

    const-string v10, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v11

    iget-object v15, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    iget-object v10, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/yz;

    new-instance v10, Lcom/google/android/gms/internal/yz;

    invoke-direct {v10}, Lcom/google/android/gms/internal/yz;-><init>()V

    const-string v11, "_r"

    iput-object v11, v10, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    array-length v11, v6

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    aput-object v10, v6, v11

    iput-object v6, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v26

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->K()J

    move-result-wide v27

    iget-object v6, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v29, v6

    invoke-virtual/range {v26 .. v34}, Lcom/google/android/gms/internal/tc;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/td;

    move-result-object v6

    iget-wide v10, v6, Lcom/google/android/gms/internal/td;->e:J

    iget-object v6, v1, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    iget-object v15, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v15, v15, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/tb;->a(Ljava/lang/String;)I

    move-result v6

    move/from16 v35, v7

    int-to-long v6, v6

    cmp-long v6, v10, v6

    if-lez v6, :cond_1e

    const/4 v6, 0x0

    :goto_15
    iget-object v7, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v7, v7

    if-ge v6, v7, :cond_1f

    const-string v7, "_r"

    iget-object v10, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v7, v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    new-array v7, v7, [Lcom/google/android/gms/internal/yz;

    if-lez v6, :cond_1b

    iget-object v10, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    array-length v10, v7

    if-ge v6, v10, :cond_1c

    iget-object v10, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    add-int/lit8 v11, v6, 0x1

    array-length v15, v7

    sub-int/2addr v15, v6

    invoke-static {v10, v11, v7, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    iput-object v7, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    goto :goto_16

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1e
    const/4 v8, 0x1

    :cond_1f
    :goto_16
    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    if-eqz v5, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v26

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->K()J

    move-result-wide v27

    iget-object v5, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, v5

    invoke-virtual/range {v26 .. v34}, Lcom/google/android/gms/internal/tc;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/td;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/internal/td;->c:J

    iget-object v7, v1, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    iget-object v10, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v10, v10, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/tq;->t:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/tb;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ts;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v5, v5, v10

    if-lez v5, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Too many conversions. Not logging as conversion. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_17
    if-ge v7, v6, :cond_22

    aget-object v15, v5, v7

    move-object/from16 v36, v5

    const-string v5, "_c"

    move/from16 v37, v6

    iget-object v6, v15, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object v11, v15

    goto :goto_18

    :cond_20
    const-string v5, "_err"

    iget-object v6, v15, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v10, 0x1

    :cond_21
    :goto_18
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v36

    move/from16 v6, v37

    goto :goto_17

    :cond_22
    if-eqz v10, :cond_23

    if-eqz v11, :cond_23

    iget-object v5, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/android/gms/internal/yz;

    const/4 v6, 0x0

    aput-object v11, v7, v6

    invoke-static {v5, v7}, Lcom/google/android/gms/common/util/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/yz;

    iput-object v5, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    goto :goto_19

    :cond_23
    if-eqz v11, :cond_24

    const-string v5, "_err"

    iput-object v5, v11, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v11, Lcom/google/android/gms/internal/yz;->c:Ljava/lang/Long;

    goto :goto_19

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Did not find conversion parameter. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_25
    :goto_19
    if-eqz v4, :cond_29

    const-string v5, "_e"

    iget-object v6, v14, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    if-eqz v5, :cond_28

    iget-object v5, v14, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    array-length v5, v5

    if-nez v5, :cond_26

    goto :goto_1b

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    const-string v5, "_et"

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/yk;->b(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :goto_1a
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_27
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    add-long/2addr v12, v5

    goto :goto_1c

    :cond_28
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1a

    :cond_29
    :goto_1c
    iget-object v5, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    add-int/lit8 v6, v9, 0x1

    aput-object v14, v5, v9

    move v9, v6

    :goto_1d
    add-int/lit8 v7, v35, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_f

    :cond_2a
    iget-object v5, v2, Lcom/google/android/gms/internal/vc$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_2b

    iget-object v5, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/yy;

    iput-object v5, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    :cond_2b
    if-eqz v4, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const-string v6, "_lte"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/tc;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/yj;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v5, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    if-nez v5, :cond_2c

    goto :goto_1e

    :cond_2c
    new-instance v5, Lcom/google/android/gms/internal/yj;

    iget-object v15, v3, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const-string v16, "auto"

    const-string v17, "_lte"

    iget-object v6, v1, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v18

    iget-object v4, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v4, 0x0

    add-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v14, v5

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v5

    goto :goto_1f

    :cond_2d
    :goto_1e
    new-instance v4, Lcom/google/android/gms/internal/yj;

    iget-object v5, v3, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const-string v30, "auto"

    const-string v31, "_lte"

    iget-object v6, v1, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v32

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v28 .. v34}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_1f
    new-instance v5, Lcom/google/android/gms/internal/zd;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zd;-><init>()V

    const-string v6, "_lte"

    iput-object v6, v5, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/zd;->a:Ljava/lang/Long;

    iget-object v6, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v5, Lcom/google/android/gms/internal/zd;->d:Ljava/lang/Long;

    const/4 v6, 0x0

    :goto_20
    iget-object v7, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    array-length v7, v7

    if-ge v6, v7, :cond_2f

    const-string v7, "_lte"

    iget-object v9, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    aput-object v5, v7, v6

    const/4 v6, 0x1

    goto :goto_21

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_2f
    const/4 v6, 0x0

    :goto_21
    if-nez v6, :cond_30

    iget-object v6, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v7, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    array-length v7, v7

    const/4 v9, 0x1

    add-int/2addr v7, v9

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/zd;

    iput-object v6, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v6, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v7, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    array-length v7, v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    aput-object v5, v6, v7

    :cond_30
    const-wide/16 v5, 0x0

    cmp-long v7, v12, v5

    if-lez v7, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/yj;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Updated lifetime engagement user property with value. Value"

    iget-object v4, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_31
    iget-object v4, v3, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v6, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/internal/vc;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/zd;[Lcom/google/android/gms/internal/yy;)[Lcom/google/android/gms/internal/yx;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zb;->A:[Lcom/google/android/gms/internal/yx;

    sget-object v4, Lcom/google/android/gms/internal/tq;->f:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, v1, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    iget-object v5, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->q()Lcom/google/android/gms/internal/uw;

    move-result-object v4

    const-string v7, "measurement.event_sampling_enabled"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/uw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    array-length v5, v5

    new-array v5, v5, [Lcom/google/android/gms/internal/yy;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/yk;->z()Ljava/security/SecureRandom;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    array-length v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_22
    if-ge v10, v9, :cond_43

    aget-object v12, v7, v10

    iget-object v13, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    const-string v14, "_ep"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    const-string v13, "_en"

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/yk;->b(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/tk;

    if-nez v14, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v15, v15, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/tk;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-object v13, v14, Lcom/google/android/gms/internal/tk;->g:Ljava/lang/Long;

    if-nez v13, :cond_35

    iget-object v13, v14, Lcom/google/android/gms/internal/tk;->h:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v13, v15, v17

    if-lez v13, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v13, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    const-string v15, "_sr"

    iget-object v1, v14, Lcom/google/android/gms/internal/tk;->h:Ljava/lang/Long;

    invoke-static {v13, v15, v1}, Lcom/google/android/gms/internal/yk;->a([Lcom/google/android/gms/internal/yz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/yz;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    :cond_33
    iget-object v1, v14, Lcom/google/android/gms/internal/tk;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_34

    iget-object v1, v14, Lcom/google/android/gms/internal/tk;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v1, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    const-string v13, "_efs"

    move-object/from16 v38, v7

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v13, v7}, Lcom/google/android/gms/internal/yk;->a([Lcom/google/android/gms/internal/yz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/yz;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    goto :goto_23

    :cond_34
    move-object/from16 v38, v7

    :goto_23
    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    goto :goto_25

    :cond_35
    move-object/from16 v38, v7

    goto :goto_26

    :cond_36
    move-object/from16 v38, v7

    const-string v1, "_dbg"

    const-wide/16 v13, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v1, v7}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/yy;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v1

    iget-object v7, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v13, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v1, v7, v13}, Lcom/google/android/gms/internal/uw;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_24

    :cond_37
    const/4 v1, 0x1

    :goto_24
    if-gtz v1, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v13, "Sample rate must be positive. event, rate"

    iget-object v14, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    :cond_38
    :goto_25
    move v11, v1

    :goto_26
    move-object/from16 v55, v2

    move/from16 v53, v8

    move/from16 v54, v9

    :goto_27
    const/4 v2, 0x0

    const-wide/16 v15, 0x1

    goto/16 :goto_29

    :cond_39
    iget-object v7, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/tk;

    if-nez v7, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v7

    iget-object v13, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v14, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/tk;

    move-result-object v7

    if-nez v7, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v14, v14, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v15, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-virtual {v7, v13, v14, v15}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/internal/tk;

    iget-object v13, v2, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v14, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    const-wide/16 v42, 0x1

    const-wide/16 v44, 0x1

    iget-object v15, v12, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v39, v7

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    invoke-direct/range {v39 .. v52}, Lcom/google/android/gms/internal/tk;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/yk;->b(Lcom/google/android/gms/internal/yy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_3b

    const/4 v14, 0x1

    goto :goto_28

    :cond_3b
    const/4 v14, 0x0

    :goto_28
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v1, v15, :cond_3d

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_38

    iget-object v11, v7, Lcom/google/android/gms/internal/tk;->g:Ljava/lang/Long;

    if-nez v11, :cond_3c

    iget-object v11, v7, Lcom/google/android/gms/internal/tk;->h:Ljava/lang/Long;

    if-nez v11, :cond_3c

    iget-object v11, v7, Lcom/google/android/gms/internal/tk;->i:Ljava/lang/Boolean;

    if-eqz v11, :cond_38

    :cond_3c
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v11, v11}, Lcom/google/android/gms/internal/tk;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/tk;

    move-result-object v7

    iget-object v11, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    invoke-interface {v4, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_25

    :cond_3d
    invoke-virtual {v6, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v13, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    const-string v15, "_sr"

    move/from16 v53, v8

    move/from16 v54, v9

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v15, v1}, Lcom/google/android/gms/internal/yk;->a([Lcom/google/android/gms/internal/yz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/yz;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    add-int/lit8 v1, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3e

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8, v9}, Lcom/google/android/gms/internal/tk;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/tk;

    move-result-object v7

    :cond_3e
    iget-object v8, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    iget-object v9, v12, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/tk;->b(J)Lcom/google/android/gms/internal/tk;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v1

    move-object/from16 v55, v2

    goto/16 :goto_27

    :cond_3f
    move/from16 v53, v8

    move/from16 v54, v9

    iget-wide v8, v7, Lcom/google/android/gms/internal/tk;->f:J

    iget-object v15, v12, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const/16 v17, 0x0

    sub-long/2addr v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v15, 0x5265c00

    cmp-long v8, v8, v15

    if-ltz v8, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v8, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    const-string v9, "_efs"

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v8, v9, v13}, Lcom/google/android/gms/internal/yk;->a([Lcom/google/android/gms/internal/yz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/yz;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v8, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    const-string v9, "_sr"

    move-object/from16 v55, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v8, v9, v13}, Lcom/google/android/gms/internal/yk;->a([Lcom/google/android/gms/internal/yz;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/yz;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    add-int/lit8 v8, v11, 0x1

    aput-object v12, v5, v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1, v9}, Lcom/google/android/gms/internal/tk;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/tk;

    move-result-object v7

    :cond_40
    iget-object v1, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/tk;->b(J)Lcom/google/android/gms/internal/tk;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v8

    :cond_41
    const/4 v2, 0x0

    goto :goto_29

    :cond_42
    move-object/from16 v55, v2

    const-wide/16 v15, 0x1

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, v12, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v7, v13, v2, v2}, Lcom/google/android/gms/internal/tk;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/tk;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v38

    move/from16 v8, v53

    move/from16 v9, v54

    move-object/from16 v2, v55

    move-object/from16 v1, p0

    goto/16 :goto_22

    :cond_43
    move-object/from16 v55, v2

    move/from16 v53, v8

    const/4 v2, 0x0

    iget-object v1, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    array-length v1, v1

    if-ge v11, v1, :cond_44

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/yy;

    iput-object v1, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    :cond_44
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/tk;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/tk;)V

    goto :goto_2a

    :cond_45
    move-object/from16 v55, v2

    move/from16 v53, v8

    const/4 v2, 0x0

    :cond_46
    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/zb;->e:Ljava/lang/Long;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/zb;->f:Ljava/lang/Long;

    const/4 v1, 0x0

    :goto_2b
    iget-object v4, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    array-length v4, v4

    if-ge v1, v4, :cond_49

    iget-object v4, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    aget-object v4, v4, v1

    iget-object v5, v4, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v3, Lcom/google/android/gms/internal/zb;->e:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_47

    iget-object v5, v4, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    iput-object v5, v3, Lcom/google/android/gms/internal/zb;->e:Ljava/lang/Long;

    :cond_47
    iget-object v5, v4, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v3, Lcom/google/android/gms/internal/zb;->f:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_48

    iget-object v4, v4, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    iput-object v4, v3, Lcom/google/android/gms/internal/zb;->f:Ljava/lang/Long;

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_49
    move-object/from16 v1, v55

    iget-object v4, v1, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v4, v4, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v5

    if-nez v5, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_4a
    iget-object v6, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    array-length v6, v6

    if-lez v6, :cond_4e

    invoke-virtual {v5}, Lcom/google/android/gms/internal/sv;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4b

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2c

    :cond_4b
    move-object v8, v2

    :goto_2c
    iput-object v8, v3, Lcom/google/android/gms/internal/zb;->h:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/sv;->g()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_4c

    goto :goto_2d

    :cond_4c
    move-wide v6, v8

    :goto_2d
    cmp-long v8, v6, v10

    if-eqz v8, :cond_4d

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4d
    iput-object v2, v3, Lcom/google/android/gms/internal/zb;->g:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/sv;->r()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/sv;->o()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/zb;->w:Ljava/lang/Integer;

    iget-object v2, v3, Lcom/google/android/gms/internal/zb;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/sv;->a(J)V

    iget-object v2, v3, Lcom/google/android/gms/internal/zb;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/sv;->b(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/sv;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/zb;->x:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sv;)V

    :cond_4e
    :goto_2e
    iget-object v2, v3, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    array-length v2, v2

    if-lez v2, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v2

    iget-object v5, v1, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/uw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/yu;

    move-result-object v2

    if-eqz v2, :cond_50

    iget-object v5, v2, Lcom/google/android/gms/internal/yu;->a:Ljava/lang/Long;

    if-nez v5, :cond_4f

    goto :goto_30

    :cond_4f
    iget-object v2, v2, Lcom/google/android/gms/internal/yu;->a:Ljava/lang/Long;

    :goto_2f
    iput-object v2, v3, Lcom/google/android/gms/internal/zb;->E:Ljava/lang/Long;

    goto :goto_31

    :cond_50
    :goto_30
    iget-object v2, v1, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zb;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2f

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/vc$a;->a:Lcom/google/android/gms/internal/zb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    move/from16 v8, v53

    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/zb;Z)Z

    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/vc$a;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/tc;->a(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :try_start_21
    const-string v3, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_32

    :catch_b
    move-exception v0

    move-object v2, v0

    :try_start_22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v3, "Failed to remove unused event metadata. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->z()V

    const/4 v1, 0x1

    return v1

    :cond_53
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->z()V

    const/4 v1, 0x0

    return v1

    :catchall_6
    move-exception v0

    :goto_33
    move-object v1, v0

    move-object/from16 v21, v6

    :goto_34
    if-eqz v21, :cond_54

    :try_start_24
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_54
    throw v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tc;->z()V

    throw v1
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/to;)Z
    .locals 13

    iget-object v0, p2, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecommerce_purchase"

    iget-object v2, p2, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/tl;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double v3, v3, v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v3, v7

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/tl;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double v3, v3, v5

    :cond_0
    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_1

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string v0, "Data lost. Currency value is too big. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v1, p2, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/tl;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_ltv_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v9, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/google/android/gms/internal/tc;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/yj;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/yj;

    iget-object v8, p2, Lcom/google/android/gms/internal/to;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v10

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v0, v2

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    sget-object v6, Lcom/google/android/gms/internal/tq;->K:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/tb;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ts;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->Q()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v2

    aput-object p1, v8, v5

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/yj;

    iget-object v8, p2, Lcom/google/android/gms/internal/to;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/yj;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string v1, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v5
.end method

.method private final a(Ljava/lang/String;[Lcom/google/android/gms/internal/zd;[Lcom/google/android/gms/internal/yy;)[Lcom/google/android/gms/internal/yx;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->z()Lcom/google/android/gms/internal/sy;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/sy;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/yy;[Lcom/google/android/gms/internal/zd;)[Lcom/google/android/gms/internal/yx;

    move-result-object p1

    return-object p1
.end method

.method private final b(Ljava/lang/String;)Lcom/google/android/gms/internal/sw;
    .locals 22

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v15

    const/4 v0, 0x0

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p0

    invoke-direct {v14, v15}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/sv;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v21, Lcom/google/android/gms/internal/sw;

    move-object/from16 v0, v21

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->l()J

    move-result-wide v7

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->m()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->n()Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->f()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->A()J

    move-result-wide v16

    move-object/from16 v20, v15

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/sv;->B()Z

    move-result v20

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v20}, Lcom/google/android/gms/internal/sw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v21

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    goto :goto_0
.end method

.method private final b(Lcom/google/android/gms/internal/sv;)Ljava/lang/Boolean;
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/rm;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/rm;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V
    .locals 32

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v15, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v12, Lcom/google/android/gms/internal/sw;->h:Z

    if-nez v1, :cond_1

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/uw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    const/16 v29, 0x1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Dropping blacklisted event. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/yk;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/yk;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v29, 0x0

    :cond_3
    :goto_0
    if-nez v29, :cond_4

    const-string v1, "_err"

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v2

    const/16 v4, 0xb

    const-string v5, "_ev"

    iget-object v6, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v29, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->q()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->p()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Lcom/google/android/gms/internal/tq;->F:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Fetching config for blacklisted app"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/sv;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ub;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Logging event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/tz;->a(Lcom/google/android/gms/internal/to;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    const-string v1, "_iap"

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ecommerce_purchase"

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-direct {v11, v15, v0}, Lcom/google/android/gms/internal/vc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/to;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :cond_9
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;)Z

    move-result v16

    const-string v1, "_err"

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->K()J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object v5, v15

    move/from16 v7, v16

    move v9, v1

    move-wide/from16 v30, v13

    const/4 v13, 0x0

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/tc;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/td;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/gms/internal/td;->b:J

    sget-object v5, Lcom/google/android/gms/internal/tq;->q:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    cmp-long v14, v3, v9

    if-lez v14, :cond_b

    rem-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Data loss. Too many events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/td;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :cond_b
    if-eqz v16, :cond_d

    :try_start_2
    iget-wide v3, v2, Lcom/google/android/gms/internal/td;->a:J

    sget-object v14, Lcom/google/android/gms/internal/tq;->s:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v13, v14

    sub-long/2addr v3, v13

    cmp-long v13, v3, v9

    if-lez v13, :cond_d

    rem-long/2addr v3, v5

    cmp-long v1, v3, v7

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v3, "Data loss. Too many public events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/internal/td;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v2

    const/16 v4, 0x10

    const-string v5, "_ev"

    iget-object v6, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :cond_d
    if-eqz v1, :cond_f

    :try_start_3
    iget-wide v3, v2, Lcom/google/android/gms/internal/td;->d:J

    iget-object v1, v11, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    iget-object v5, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/tq;->r:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/tb;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ts;)I

    move-result v1

    const v5, 0xf4240

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    cmp-long v1, v3, v9

    if-lez v1, :cond_10

    cmp-long v0, v3, v7

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Too many error events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/td;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :cond_f
    const/4 v13, 0x0

    :cond_10
    :try_start_4
    iget-object v1, v0, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->b()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    const-string v2, "_o"

    iget-object v3, v0, Lcom/google/android/gms/internal/to;->c:Ljava/lang/String;

    invoke-virtual {v1, v14, v2, v3}, Lcom/google/android/gms/internal/yk;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/yk;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    const-string v2, "_dbg"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lcom/google/android/gms/internal/yk;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    const-string v2, "_r"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v14, v2, v3}, Lcom/google/android/gms/internal/yk;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/tc;->c(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-lez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v4, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v8, Lcom/google/android/gms/internal/tj;

    iget-object v3, v0, Lcom/google/android/gms/internal/to;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/internal/to;->d:J

    const-wide/16 v17, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v4, v15

    move-object v0, v8

    move-wide/from16 v8, v17

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/tj;-><init>(Lcom/google/android/gms/internal/vc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/tj;->b:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/tk;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/tc;->f(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_13

    if-eqz v16, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v15}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/tj;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :cond_13
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/tk;

    iget-object v2, v0, Lcom/google/android/gms/internal/tj;->b:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v3, v0, Lcom/google/android/gms/internal/tj;->c:J

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v5, v15

    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-wide/from16 v22, v3

    invoke-direct/range {v15 .. v28}, Lcom/google/android/gms/internal/tk;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v8, v0

    goto :goto_1

    :cond_14
    iget-wide v2, v1, Lcom/google/android/gms/internal/tk;->e:J

    invoke-virtual {v0, v11, v2, v3}, Lcom/google/android/gms/internal/tj;->a(Lcom/google/android/gms/internal/vc;J)Lcom/google/android/gms/internal/tj;

    move-result-object v8

    iget-wide v2, v8, Lcom/google/android/gms/internal/tj;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/tk;->a(J)Lcom/google/android/gms/internal/tk;

    move-result-object v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/tk;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Lcom/google/android/gms/internal/tj;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v8, Lcom/google/android/gms/internal/tj;->a:Ljava/lang/String;

    iget-object v1, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Z)V

    new-instance v1, Lcom/google/android/gms/internal/zb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zb;-><init>()V

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->a:Ljava/lang/Integer;

    const-string v0, "android"

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->i:Ljava/lang/String;

    iget-object v0, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    iget-object v0, v12, Lcom/google/android/gms/internal/sw;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->n:Ljava/lang/String;

    iget-object v0, v12, Lcom/google/android/gms/internal/sw;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->p:Ljava/lang/String;

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->j:J

    const-wide/32 v4, -0x80000000

    const/4 v0, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_15

    move-object v2, v0

    goto :goto_2

    :cond_15
    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->j:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->C:Ljava/lang/Integer;

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->q:Ljava/lang/Long;

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->y:Ljava/lang/String;

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    move-object v2, v0

    goto :goto_3

    :cond_16
    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->v:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/um;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-boolean v3, v12, Lcom/google/android/gms/internal/sw;->o:Z

    if-eqz v3, :cond_1a

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zb;->s:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->t:Ljava/lang/Boolean;

    goto :goto_5

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ti;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v11, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "null secure ID. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    goto :goto_4

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v6, "empty secure ID. appId"

    iget-object v7, v1, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_4
    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->D:Ljava/lang/String;

    :cond_1a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wc;->Q()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->k:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wc;->Q()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->j:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ti;->x()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->m:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ti;->y()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->l:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->r:Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->d:Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->e:Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->f:Ljava/lang/Long;

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->F:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->B()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/google/android/gms/internal/tb;->B()Z

    move-result v2

    if-eqz v2, :cond_1b

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->G:Ljava/lang/String;

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Lcom/google/android/gms/internal/sv;

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-direct {v0, v11, v2}, Lcom/google/android/gms/internal/sv;-><init>(Lcom/google/android/gms/internal/vc;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tw;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sv;->a(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sv;->d(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sv;->b(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/um;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sv;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/sv;->f(J)V

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/sv;->a(J)V

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/sv;->b(J)V

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sv;->e(Ljava/lang/String;)V

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/sv;->c(J)V

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sv;->f(Ljava/lang/String;)V

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/sv;->d(J)V

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/sv;->e(J)V

    iget-boolean v2, v12, Lcom/google/android/gms/internal/sw;->h:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sv;->a(Z)V

    iget-wide v2, v12, Lcom/google/android/gms/internal/sw;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/sv;->o(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sv;)V

    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zb;->B:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v2, v12, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zd;

    iput-object v2, v1, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    new-instance v3, Lcom/google/android/gms/internal/zd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zd;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    aput-object v3, v6, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/yj;

    iget-object v6, v6, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    iput-object v6, v3, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/yj;

    iget-wide v6, v6, Lcom/google/android/gms/internal/yj;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lcom/google/android/gms/internal/zd;->a:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/yj;

    iget-object v7, v7, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/zd;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/zb;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/tl;

    if-eqz v1, :cond_20

    iget-object v1, v8, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "_r"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :goto_7
    const/4 v13, 0x1

    goto :goto_8

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v1

    iget-object v6, v8, Lcom/google/android/gms/internal/tj;->a:Ljava/lang/String;

    iget-object v7, v8, Lcom/google/android/gms/internal/tj;->b:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/uw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->K()J

    move-result-wide v15

    iget-object v6, v8, Lcom/google/android/gms/internal/tj;->a:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/gms/internal/tc;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/td;

    move-result-object v6

    if-eqz v1, :cond_20

    iget-wide v6, v6, Lcom/google/android/gms/internal/td;->e:J

    iget-object v1, v11, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    iget-object v9, v8, Lcom/google/android/gms/internal/tj;->a:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/tb;->a(Ljava/lang/String;)I

    move-result v1

    int-to-long v9, v1

    cmp-long v1, v6, v9

    if-gez v1, :cond_20

    goto :goto_7

    :cond_20
    :goto_8
    invoke-virtual {v0, v8, v2, v3, v13}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/tj;JZ)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-wide v4, v11, Lcom/google/android/gms/internal/vc;->K:J

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v1, v1, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ub;->a(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/tz;->a(Lcom/google/android/gms/internal/tj;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->M()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v30

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->z()V

    throw v0
.end method

.method private static b(Lcom/google/android/gms/internal/wc;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final d(Lcom/google/android/gms/internal/sw;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/um;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/sv;

    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/sv;-><init>(Lcom/google/android/gms/internal/vc;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/tw;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/sv;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->c(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tw;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->e:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->e:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->l()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->e:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/sv;->d(J)V

    const/4 v1, 0x1

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->j:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->j:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/sv;->c(J)V

    const/4 v1, 0x1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->d:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->f(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->f:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->m()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->f:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/sv;->e(J)V

    const/4 v1, 0x1

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/sw;->h:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->n()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/sw;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->a(Z)V

    const/4 v1, 0x1

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/sw;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sv;->g(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->l:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->A()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/sw;->l:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/sv;->o(J)V

    const/4 v1, 0x1

    :cond_b
    iget-boolean v3, p1, Lcom/google/android/gms/internal/sw;->o:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->B()Z

    move-result v4

    if-eq v3, v4, :cond_c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/sw;->o:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/sv;->b(Z)V

    const/4 v1, 0x1

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sv;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/sr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->q:Lcom/google/android/gms/internal/sr;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/wb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->q:Lcom/google/android/gms/internal/sr;

    return-object v0
.end method

.method public final B()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tb;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/tb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/s;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/um;->c(Z)Z

    move-result v0

    return v0
.end method

.method final C()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->h:Lcom/google/android/gms/internal/up;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/vc;->O:J

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/vc;->O:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final E()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/vc;->N:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->w()Lcom/google/android/gms/internal/wz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wz;->D()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iput-boolean v2, v1, Lcom/google/android/gms/internal/vc;->N:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->O()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_2
    iget-wide v3, v1, Lcom/google/android/gms/internal/vc;->K:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->M()V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wb;->c()V

    iget-object v3, v1, Lcom/google/android/gms/internal/vc;->F:Ljava/util/List;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->s()Lcom/google/android/gms/internal/uf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/uf;->y()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v3, v1, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/gms/internal/tb;->z()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long v7, v3, v7

    const/4 v9, 0x0

    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/internal/vc;->a(Ljava/lang/String;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/um;->c:Lcom/google/android/gms/internal/up;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    const/4 v10, 0x0

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/tc;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_13

    iget-wide v10, v1, Lcom/google/android/gms/internal/vc;->J:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/tc;->I()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/vc;->J:J

    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    sget-object v7, Lcom/google/android/gms/internal/tq;->m:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/tb;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ts;)I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    sget-object v8, Lcom/google/android/gms/internal/tq;->n:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/tb;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ts;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/zb;

    iget-object v10, v8, Lcom/google/android/gms/internal/zb;->s:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v7, v8, Lcom/google/android/gms/internal/zb;->s:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v7, v9

    :goto_4
    if-eqz v7, :cond_c

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_c

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/zb;

    iget-object v11, v10, Lcom/google/android/gms/internal/zb;->s:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v10, v10, Lcom/google/android/gms/internal/zb;->s:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    new-instance v7, Lcom/google/android/gms/internal/za;

    invoke-direct {v7}, Lcom/google/android/gms/internal/za;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/zb;

    iput-object v8, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/tb;->B()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/tb;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    const/4 v11, 0x0

    :goto_8
    iget-object v12, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    array-length v12, v12

    if-ge v11, v12, :cond_f

    iget-object v12, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/zb;

    aput-object v13, v12, v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    aget-object v12, v12, v11

    const-wide/16 v13, 0x2fb3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zb;->r:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    aget-object v12, v12, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zb;->d:Ljava/lang/Long;

    iget-object v12, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    aget-object v12, v12, v11

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/zb;->z:Ljava/lang/Boolean;

    if-nez v10, :cond_e

    iget-object v12, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    aget-object v12, v12, v11

    iput-object v9, v12, Lcom/google/android/gms/internal/zb;->G:Ljava/lang/String;

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v6

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ub;->a(I)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/tz;->a(Lcom/google/android/gms/internal/za;)Ljava/lang/String;

    move-result-object v9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/za;)[B

    move-result-object v14

    sget-object v6, Lcom/google/android/gms/internal/tq;->w:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ts;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v0

    invoke-static {v10}, Lcom/google/android/gms/common/internal/ad;->b(Z)V

    iget-object v10, v1, Lcom/google/android/gms/internal/vc;->F:Ljava/util/List;

    if-eqz v10, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v8

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lcom/google/android/gms/internal/vc;->F:Ljava/util/List;

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/um;->d:Lcom/google/android/gms/internal/up;

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/up;->a(J)V

    const-string v3, "?"

    iget-object v4, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    array-length v4, v4

    if-lez v4, :cond_12

    iget-object v3, v7, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, v1, Lcom/google/android/gms/internal/vc;->M:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->s()Lcom/google/android/gms/internal/uf;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/internal/vf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vf;-><init>(Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/wb;->s()Lcom/google/android/gms/internal/ux;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/uj;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/uj;-><init>(Lcom/google/android/gms/internal/uf;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/uh;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ux;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v5}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_13
    iput-wide v7, v1, Lcom/google/android/gms/internal/vc;->J:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/tb;->z()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/tc;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/sv;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/vc;->N:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->O()V

    throw v0
.end method

.method final F()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vc;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vc;->I:I

    return-void
.end method

.method final G()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vc;->A:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->C()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->E:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vc;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tw;->B()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wb;->c()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/vc;->E:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/vc;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vc;->A:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->M()V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ve;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ve;-><init>(Lcom/google/android/gms/internal/vc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ux;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vc;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(ILjava/lang/Throwable;[B)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vc;->F:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/vc;->F:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/um;->c:Lcom/google/android/gms/internal/up;

    iget-object v2, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/up;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/um;->d:Lcom/google/android/gms/internal/up;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/up;->a(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->M()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->x()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "queue"

    const-string v2, "rowid=?"

    invoke-virtual {p2, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Deleted fewer rows from queue than expected"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string p3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->z()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->s()Lcom/google/android/gms/internal/uf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/uf;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->L()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->E()V

    goto :goto_2

    :cond_4
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/vc;->J:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->M()V

    :goto_2
    iput-wide v4, p0, Lcom/google/android/gms/internal/vc;->K:J

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/tc;->z()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/vc;->K:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v1, p0, Lcom/google/android/gms/internal/vc;->K:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/um;->d:Lcom/google/android/gms/internal/up;

    iget-object p3, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/up;->a(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/um;->e:Lcom/google/android/gms/internal/up;

    iget-object p2, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->M()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vc;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->O()V

    return-void

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vc;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->O()V

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/sw;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->Q()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "apps"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    const-string v4, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "main_event_params"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/sw;->h:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/sw;->o:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/vc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/sw;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vc;->c(Lcom/google/android/gms/internal/sw;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/sz;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/sw;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/sz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/sz;-><init>(Lcom/google/android/gms/internal/sz;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/internal/sz;->e:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v3, v3, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/tc;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/sz;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v5, v5, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/sz;->e:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/sz;->d:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/sz;->d:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/sz;->h:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/sz;->h:J

    iget-object v2, v1, Lcom/google/android/gms/internal/sz;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/sz;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/sz;->i:Lcom/google/android/gms/internal/to;

    iput-object v2, v0, Lcom/google/android/gms/internal/sz;->i:Lcom/google/android/gms/internal/to;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/sz;->e:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/sz;->e:Z

    new-instance v2, Lcom/google/android/gms/internal/yh;

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v4, v3, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-wide v5, v3, Lcom/google/android/gms/internal/yh;->b:J

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v8, v1, Lcom/google/android/gms/internal/yh;->c:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/yh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/yh;

    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v4, v1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/sz;->d:J

    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v8, v1, Lcom/google/android/gms/internal/yh;->c:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/yh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/sz;->e:Z

    const/4 p1, 0x1

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/sz;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    new-instance v9, Lcom/google/android/gms/internal/yj;

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/yh;->b:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/yj;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/sz;->i:Lcom/google/android/gms/internal/to;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/to;

    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->i:Lcom/google/android/gms/internal/to;

    iget-wide v2, v0, Lcom/google/android/gms/internal/sz;->d:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/to;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sz;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v3, v3, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v3, v3, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/tc;->z()V

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v3, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/internal/to;->d:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/internal/sw;->h:Z

    if-nez v4, :cond_1

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wc;->Q()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v5, v11, v5

    if-gez v5, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v4

    const-string v6, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v6, v8, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/sz;

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v8

    const-string v9, "User property timed out"

    iget-object v10, v6, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v15

    iget-object v14, v6, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v14, v14, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v9, v10, v14, v15}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v6, Lcom/google/android/gms/internal/sz;->g:Lcom/google/android/gms/internal/to;

    if-eqz v8, :cond_4

    new-instance v8, Lcom/google/android/gms/internal/to;

    iget-object v9, v6, Lcom/google/android/gms/internal/sz;->g:Lcom/google/android/gms/internal/to;

    invoke-direct {v8, v9, v11, v12}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/to;J)V

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v8

    iget-object v6, v6, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v6, v6, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Lcom/google/android/gms/internal/tc;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wc;->Q()V

    if-gez v5, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v4

    const-string v6, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v6, v8, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/sz;

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v9

    const-string v10, "User property expired"

    iget-object v14, v8, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v15

    iget-object v7, v8, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v7, v7, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v15, v8, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v10, v14, v7, v15}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v7

    iget-object v9, v8, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v9, v9, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v8, Lcom/google/android/gms/internal/sz;->k:Lcom/google/android/gms/internal/to;

    if-eqz v7, :cond_8

    iget-object v7, v8, Lcom/google/android/gms/internal/sz;->k:Lcom/google/android/gms/internal/to;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v7

    iget-object v8, v8, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v8, v8, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/tc;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    goto :goto_3

    :cond_9
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/internal/to;

    new-instance v9, Lcom/google/android/gms/internal/to;

    invoke-direct {v9, v8, v11, v12}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/to;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wc;->Q()V

    if-gez v5, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v5

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wb;->o()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/tz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v7, v3, v4, v6}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_b
    const-string v5, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v6, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v7, v6

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/internal/sz;

    if-eqz v15, :cond_c

    iget-object v4, v15, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    new-instance v10, Lcom/google/android/gms/internal/yj;

    iget-object v5, v15, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/yj;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/internal/sz;->i:Lcom/google/android/gms/internal/to;

    if-eqz v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/sz;->i:Lcom/google/android/gms/internal/to;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v4, Lcom/google/android/gms/internal/yh;

    invoke-direct {v4, v13}, Lcom/google/android/gms/internal/yh;-><init>(Lcom/google/android/gms/internal/yj;)V

    iput-object v4, v15, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/internal/sz;->e:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sz;)Z

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_10

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/to;

    new-instance v5, Lcom/google/android/gms/internal/to;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/to;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tc;->z()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/to;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/sv;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "_ui"

    iget-object v4, v1, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v2

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/internal/sw;

    move-object v2, v14

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->l()J

    move-result-wide v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->m()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v15}, Lcom/google/android/gms/internal/sv;->n()Z

    move-result v16

    move-object/from16 v23, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v22, v15

    move/from16 v15, v16

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/sv;->f()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/sv;->A()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/sv;->B()Z

    move-result v22

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v22}, Lcom/google/android/gms/internal/sw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/wc;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/vc;->H:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vc;->H:I

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/sw;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yk;->d(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v3, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/yk;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    iget-object v3, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/yk;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/yj;

    iget-object v4, p2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/yh;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/internal/yh;->b:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v2, "Setting user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/yj;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/tc;->z()V

    throw p1
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->G:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->G:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/16 v4, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/sv;->h(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/uw;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/um;->d:Lcom/google/android/gms/internal/up;

    iget-object p3, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/up;->a(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/um;->e:Lcom/google/android/gms/internal/up;

    iget-object p2, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->M()V

    goto/16 :goto_9

    :cond_8
    :goto_3
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_4

    :cond_9
    move-object p5, p3

    :goto_4
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object p5, p3

    :goto_5
    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/uw;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vc;->L:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->O()V

    return-void

    :cond_c
    :goto_7
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/uw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/yu;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/uw;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_d

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/sv;->g(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sv;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->B()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->s()Lcom/google/android/gms/internal/uf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/uf;->y()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->L()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->E()V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/tc;->z()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vc;->L:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->O()V

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->M()V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/sw;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v0, p1, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/sz;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v0, v0, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/sw;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v2, v2, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/tc;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/sz;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v5, v5, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v3, v3, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/tc;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/sz;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object v3, v3, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/sz;->k:Lcom/google/android/gms/internal/to;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/sz;->k:Lcom/google/android/gms/internal/to;

    iget-object v2, v2, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/sz;->k:Lcom/google/android/gms/internal/to;

    iget-object v1, v1, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->b()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/sz;->k:Lcom/google/android/gms/internal/to;

    iget-object v3, v3, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/sz;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/sz;->k:Lcom/google/android/gms/internal/to;

    iget-wide v5, p1, Lcom/google/android/gms/internal/to;->d:J

    const/4 p1, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/to;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/sz;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/sz;->c:Lcom/google/android/gms/internal/yh;

    iget-object p1, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/tc;->z()V

    throw p1
.end method

.method final b(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/sw;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Removing user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/tc;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->p()Lcom/google/android/gms/internal/tz;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/tz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/tc;->z()V

    throw p1
.end method

.method protected final b()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/vc;->C:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/vc;->C:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/vc;->C:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yk;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/yk;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rm;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ut;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xt;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->B:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tw;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yk;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vc;->B:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/gms/internal/to;Ljava/lang/String;)[B
    .locals 31

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-static {}, Lcom/google/android/gms/internal/vc;->D()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/za;

    invoke-direct {v8}, Lcom/google/android/gms/internal/za;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v9

    const/4 v6, 0x0

    if-nez v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Log and bundle not available. package_name"

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v0, v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->z()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->n()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "_iap"

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ecommerce_purchase"

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {v11, v10, v0}, Lcom/google/android/gms/internal/vc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/to;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, v11, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/tb;->d(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v26, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v1, :cond_7

    const-string v3, "_e"

    iget-object v4, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/tl;->a()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    const-string v4, "_et"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/tl;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v4, "The engagement event does not include duration. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    const-string v3, "_et"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tl;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v4, "The engagement event does not contain any parameters. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_7
    :goto_3
    new-instance v7, Lcom/google/android/gms/internal/zb;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zb;-><init>()V

    const/4 v5, 0x1

    new-array v3, v5, [Lcom/google/android/gms/internal/zb;

    aput-object v7, v3, v6

    iput-object v3, v8, Lcom/google/android/gms/internal/za;->a:[Lcom/google/android/gms/internal/zb;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->a:Ljava/lang/Integer;

    const-string v3, "android"

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->i:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->n:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->p:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v3

    const-wide/32 v12, -0x80000000

    const/4 v15, 0x0

    cmp-long v12, v3, v12

    if-nez v12, :cond_8

    move-object v3, v15

    goto :goto_4

    :cond_8
    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->C:Ljava/lang/Integer;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->q:Ljava/lang/Long;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->y:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->v:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->B()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/tb;->B()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v11, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    iget-object v4, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/tb;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-object v15, v7, Lcom/google/android/gms/internal/zb;->G:Ljava/lang/String;

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/um;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->B()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lcom/google/android/gms/internal/zb;->s:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->t:Ljava/lang/Boolean;

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wc;->Q()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->k:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wc;->Q()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->j:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ti;->x()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->m:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->x()Lcom/google/android/gms/internal/ti;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ti;->y()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->l:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->u:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->B:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zd;

    iput-object v4, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    iget-object v12, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const-string v13, "_lte"

    invoke-virtual {v4, v12, v13}, Lcom/google/android/gms/internal/tc;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/yj;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v12, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    if-nez v12, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v26

    if-lez v12, :cond_c

    new-instance v12, Lcom/google/android/gms/internal/yj;

    iget-object v13, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const-string v18, "auto"

    const-string v19, "_lte"

    iget-object v14, v11, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v14}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v20

    iget-object v4, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/4 v4, 0x0

    add-long v16, v16, v22

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v12

    :cond_c
    move-object/from16 v28, v15

    goto :goto_6

    :cond_d
    :goto_5
    new-instance v4, Lcom/google/android/gms/internal/yj;

    iget-object v13, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    const-string v14, "auto"

    const-string v16, "_lte"

    iget-object v12, v11, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v12}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v17

    move-object v12, v4

    move-object/from16 v28, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_6

    :cond_e
    move-object/from16 v28, v15

    move-object/from16 v4, v28

    :goto_6
    move-object/from16 v13, v28

    const/4 v12, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_10

    new-instance v14, Lcom/google/android/gms/internal/zd;

    invoke-direct {v14}, Lcom/google/android/gms/internal/zd;-><init>()V

    iget-object v15, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    aput-object v14, v15, v12

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/yj;

    iget-object v15, v15, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    iput-object v15, v14, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/yj;

    iget-wide v5, v15, Lcom/google/android/gms/internal/yj;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v14, Lcom/google/android/gms/internal/zd;->a:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v5

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/yj;

    iget-object v6, v6, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    invoke-virtual {v5, v14, v6}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/zd;Ljava/lang/Object;)V

    if-eqz v1, :cond_f

    const-string v5, "_lte"

    iget-object v6, v14, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    iput-object v5, v14, Lcom/google/android/gms/internal/zd;->d:Ljava/lang/Long;

    iget-object v5, v11, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v14, Lcom/google/android/gms/internal/zd;->a:Ljava/lang/Long;

    move-object v13, v14

    :cond_f
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    if-eqz v1, :cond_11

    if-nez v13, :cond_11

    new-instance v1, Lcom/google/android/gms/internal/zd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zd;-><init>()V

    const-string v3, "_lte"

    iput-object v3, v1, Lcom/google/android/gms/internal/zd;->b:Ljava/lang/String;

    iget-object v3, v11, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zd;->a:Ljava/lang/Long;

    iget-object v3, v4, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/zd;->d:Ljava/lang/Long;

    iget-object v3, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v5, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/zd;

    iput-object v3, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v3, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v5, v7, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput-object v1, v3, v5

    goto :goto_8

    :cond_11
    const/4 v6, 0x1

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v26

    if-lez v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/yj;)Z

    :cond_12
    iget-object v1, v0, Lcom/google/android/gms/internal/to;->b:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->b()Landroid/os/Bundle;

    move-result-object v5

    const-string v1, "_iap"

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_13

    const-string v1, "_c"

    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v4, "Marking in-app purchase as real-time"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    const-string v1, "_r"

    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_13
    const-string v1, "_o"

    iget-object v4, v0, Lcom/google/android/gms/internal/to;->c:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    iget-object v4, v7, Lcom/google/android/gms/internal/zb;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/yk;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    const-string v4, "_dbg"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v5, v4, v12}, Lcom/google/android/gms/internal/yk;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    const-string v4, "_r"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v2}, Lcom/google/android/gms/internal/yk;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/tk;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/google/android/gms/internal/tk;

    iget-object v14, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    iget-wide v2, v0, Lcom/google/android/gms/internal/to;->d:J

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v12, v1

    move-object/from16 v13, p2

    move-wide/from16 v19, v2

    invoke-direct/range {v12 .. v25}, Lcom/google/android/gms/internal/tk;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/tk;)V

    move-wide/from16 v12, v26

    goto :goto_9

    :cond_15
    iget-wide v2, v1, Lcom/google/android/gms/internal/tk;->e:J

    iget-wide v12, v0, Lcom/google/android/gms/internal/to;->d:J

    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/internal/tk;->a(J)Lcom/google/android/gms/internal/tk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tk;->a()Lcom/google/android/gms/internal/tk;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/tk;)V

    move-wide v12, v2

    :goto_9
    new-instance v14, Lcom/google/android/gms/internal/tj;

    iget-object v3, v0, Lcom/google/android/gms/internal/to;->c:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/internal/to;->a:Ljava/lang/String;

    iget-wide v0, v0, Lcom/google/android/gms/internal/to;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide/from16 v16, v0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object v0, v5

    move-object v5, v15

    move-object v15, v7

    const/4 v11, 0x1

    move-wide/from16 v6, v16

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-wide v8, v12

    move-object v10, v0

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/tj;-><init>(Lcom/google/android/gms/internal/vc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v0, Lcom/google/android/gms/internal/yy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/yy;-><init>()V

    new-array v1, v11, [Lcom/google/android/gms/internal/yy;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, v15, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;

    iget-wide v3, v14, Lcom/google/android/gms/internal/tj;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    iget-object v1, v14, Lcom/google/android/gms/internal/tj;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/yy;->b:Ljava/lang/String;

    iget-wide v3, v14, Lcom/google/android/gms/internal/tj;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/yy;->d:Ljava/lang/Long;

    iget-object v1, v14, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->a()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/yz;

    iput-object v1, v0, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    iget-object v1, v14, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tl;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/yz;

    invoke-direct {v5}, Lcom/google/android/gms/internal/yz;-><init>()V

    iget-object v6, v0, Lcom/google/android/gms/internal/yy;->a:[Lcom/google/android/gms/internal/yz;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    iput-object v4, v5, Lcom/google/android/gms/internal/yz;->a:Ljava/lang/String;

    iget-object v3, v14, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/tl;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/tl;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/yk;->a(Lcom/google/android/gms/internal/yz;Ljava/lang/Object;)V

    move v3, v7

    goto :goto_a

    :cond_16
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/gms/internal/zb;->c:[Lcom/google/android/gms/internal/zd;

    iget-object v4, v15, Lcom/google/android/gms/internal/zb;->b:[Lcom/google/android/gms/internal/yy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v2, p0

    const/4 v5, 0x0

    :try_start_3
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/vc;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/zd;[Lcom/google/android/gms/internal/yy;)[Lcom/google/android/gms/internal/yx;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/zb;->A:[Lcom/google/android/gms/internal/yx;

    iget-object v1, v0, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    iput-object v1, v15, Lcom/google/android/gms/internal/zb;->e:Ljava/lang/Long;

    iget-object v0, v0, Lcom/google/android/gms/internal/yy;->c:Ljava/lang/Long;

    iput-object v0, v15, Lcom/google/android/gms/internal/zb;->f:Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/sv;->h()J

    move-result-wide v0

    cmp-long v3, v0, v26

    if-eqz v3, :cond_17

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_b

    :cond_17
    move-object/from16 v3, v28

    :goto_b
    iput-object v3, v15, Lcom/google/android/gms/internal/zb;->h:Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/sv;->g()J

    move-result-wide v3

    cmp-long v6, v3, v26

    if-nez v6, :cond_18

    goto :goto_c

    :cond_18
    move-wide v0, v3

    :goto_c
    cmp-long v3, v0, v26

    if-eqz v3, :cond_19

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_d

    :cond_19
    move-object/from16 v0, v28

    :goto_d
    iput-object v0, v15, Lcom/google/android/gms/internal/zb;->g:Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/sv;->r()V

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/sv;->o()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/zb;->w:Ljava/lang/Integer;

    const-wide/16 v0, 0x2fb3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/zb;->r:Ljava/lang/Long;

    iget-object v0, v2, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/zb;->d:Ljava/lang/Long;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v15, Lcom/google/android/gms/internal/zb;->z:Ljava/lang/Boolean;

    iget-object v0, v15, Lcom/google/android/gms/internal/zb;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v3, v30

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/sv;->a(J)V

    iget-object v0, v15, Lcom/google/android/gms/internal/zb;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/sv;->b(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sv;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    :try_start_4
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/aob;->f()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/ant;->a([BII)Lcom/google/android/gms/internal/ant;

    move-result-object v1

    move-object/from16 v3, v29

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/ant;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ant;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/yk;->a([B)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v28

    :catchall_0
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v11

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tc;->z()V

    throw v0
.end method

.method protected final c()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->c:Lcom/google/android/gms/internal/up;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->c:Lcom/google/android/gms/internal/up;

    iget-object v1, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->h:Lcom/google/android/gms/internal/up;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/up;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/internal/vc;->O:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->h:Lcom/google/android/gms/internal/up;

    iget-wide v1, p0, Lcom/google/android/gms/internal/vc;->O:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/up;->a(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->B()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yk;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yk;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rm;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ut;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xt;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tw;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/um;->y()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tw;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/um;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tw;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->C()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/um;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->t:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wz;->E()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->t:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wz;->C()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tw;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/um;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->h:Lcom/google/android/gms/internal/up;

    iget-wide v1, p0, Lcom/google/android/gms/internal/vc;->O:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/up;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/um;->i:Lcom/google/android/gms/internal/ur;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ur;->a(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->e()Lcom/google/android/gms/internal/um;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/um;->i:Lcom/google/android/gms/internal/ur;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ur;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->y()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tw;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->Q()V

    iget-object v1, v0, Lcom/google/android/gms/internal/we;->p:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vc;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->i()Lcom/google/android/gms/internal/wz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wz;->B()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->u()Lcom/google/android/gms/internal/um;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/um;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->h()Lcom/google/android/gms/internal/ti;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wc;->Q()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->w()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wz;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vc;->M()V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/sw;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v2, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/sv;->g(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/tc;->a(Lcom/google/android/gms/internal/sv;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->j()Lcom/google/android/gms/internal/uw;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/uw;->d(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, v2, Lcom/google/android/gms/internal/sw;->h:Z

    if-nez v0, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    return-void

    :cond_2
    iget-wide v5, v2, Lcom/google/android/gms/internal/sw;->m:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    :cond_3
    iget v0, v2, Lcom/google/android/gms/internal/sw;->n:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v9, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    move v15, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/tc;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/sv;

    move-result-object v0

    const/16 v16, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/sw;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->A()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v8, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/wc;->Q()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/tc;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v9, v14, [Ljava/lang/String;

    aput-object v8, v9, v13

    const-string v10, "events"

    const-string v11, "app_id=?"

    invoke-virtual {v0, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v13

    const-string v11, "user_attributes"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "conditional_properties"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "apps"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "raw_events"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "raw_events_metadata"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "event_filters"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "property_filters"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "audience_filter_values"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v10, v0

    if-lez v10, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->E()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v9, "Deleted application data. app, records"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v8, v10}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v9, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v9, v8, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    move-object/from16 v0, v16

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->j()J

    move-result-wide v7

    iget-wide v9, v2, Lcom/google/android/gms/internal/sw;->j:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/to;

    const-string v8, "_au"

    new-instance v9, Lcom/google/android/gms/internal/tl;

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/tl;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/to;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/tl;Ljava/lang/String;J)V

    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/sw;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/to;

    const-string v8, "_au"

    new-instance v9, Lcom/google/android/gms/internal/tl;

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/tl;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/to;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/tl;Ljava/lang/String;J)V

    goto :goto_2

    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/vc;->d(Lcom/google/android/gms/internal/sw;)V

    if-nez v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    const-string v8, "_f"

    :goto_4
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/tc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/tk;

    move-result-object v0

    goto :goto_5

    :cond_9
    if-ne v15, v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    const-string v8, "_v"

    goto :goto_4

    :cond_a
    move-object/from16 v0, v16

    :goto_5
    if-nez v0, :cond_14

    const-wide/32 v7, 0x36ee80

    div-long v9, v5, v7

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    mul-long v9, v9, v7

    if-nez v15, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/yh;

    const-string v8, "_fot"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v17, "auto"

    move-object v7, v0

    move-wide v9, v5

    move-wide v13, v11

    move-object v11, v15

    move-object/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/yh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v7, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_a

    :cond_b
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/rm;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v7

    const-string v8, "Package info is null, first open report might be inaccurate. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    :goto_6
    if-eqz v0, :cond_e

    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_e

    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_c

    const-string v0, "_uwa"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    const/4 v0, 0x1

    :goto_7
    new-instance v12, Lcom/google/android/gms/internal/yh;

    const-string v8, "_fi"

    if-eqz v0, :cond_d

    move-wide v9, v13

    goto :goto_8

    :cond_d
    move-wide v9, v3

    :goto_8
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v0, "auto"

    move-object v7, v12

    move-wide v9, v5

    move-object v3, v12

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/yh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_e
    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/rm;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v3

    const-string v4, "Application info is null, first open report might be inaccurate. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ub;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v7, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    :goto_9
    if-eqz v0, :cond_10

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    const-string v3, "_sys"

    invoke-virtual {v15, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_10

    const-string v0, "_sysu"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/internal/sw;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->Q()V

    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/tc;->h(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-ltz v0, :cond_11

    const-string v0, "_pfo"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/to;

    const-string v8, "_f"

    new-instance v9, Lcom/google/android/gms/internal/tl;

    invoke-direct {v9, v15}, Lcom/google/android/gms/internal/tl;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/to;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/tl;Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    goto :goto_b

    :cond_12
    move-wide v13, v11

    const/4 v3, 0x1

    if-ne v15, v3, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/yh;

    const-string v8, "_fvt"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "auto"

    move-object v7, v0

    move-wide v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/yh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/sw;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->a()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_c"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_r"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/internal/to;

    const-string v8, "_v"

    new-instance v9, Lcom/google/android/gms/internal/tl;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/tl;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/to;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/tl;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    :cond_13
    :goto_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/internal/to;

    const-string v8, "_e"

    new-instance v9, Lcom/google/android/gms/internal/tl;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/tl;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/to;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/tl;Ljava/lang/String;J)V

    :goto_c
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/to;Lcom/google/android/gms/internal/sw;)V

    goto :goto_d

    :cond_14
    iget-boolean v0, v2, Lcom/google/android/gms/internal/sw;->i:Z

    if-eqz v0, :cond_15

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/to;

    const-string v8, "_cd"

    new-instance v9, Lcom/google/android/gms/internal/tl;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/tl;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/to;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/tl;Ljava/lang/String;J)V

    goto :goto_c

    :cond_15
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tc;->z()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vc;->q()Lcom/google/android/gms/internal/tc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tc;->z()V

    throw v0
.end method

.method public final d()Lcom/google/android/gms/internal/tb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->c:Lcom/google/android/gms/internal/tb;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/um;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->d:Lcom/google/android/gms/internal/um;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/wb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->d:Lcom/google/android/gms/internal/um;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->e:Lcom/google/android/gms/internal/ub;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->e:Lcom/google/android/gms/internal/ub;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->e:Lcom/google/android/gms/internal/ub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->e:Lcom/google/android/gms/internal/ub;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->e:Lcom/google/android/gms/internal/ub;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ux;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->f:Lcom/google/android/gms/internal/ux;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->f:Lcom/google/android/gms/internal/ux;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/xz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->g:Lcom/google/android/gms/internal/xz;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->g:Lcom/google/android/gms/internal/xz;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/uw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->h:Lcom/google/android/gms/internal/uw;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->h:Lcom/google/android/gms/internal/uw;

    return-object v0
.end method

.method final k()Lcom/google/android/gms/internal/ux;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->f:Lcom/google/android/gms/internal/ux;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/we;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->p:Lcom/google/android/gms/internal/we;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->p:Lcom/google/android/gms/internal/we;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->i:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final n()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->j:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/yk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->k:Lcom/google/android/gms/internal/yk;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/wb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->k:Lcom/google/android/gms/internal/yk;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/tz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->l:Lcom/google/android/gms/internal/tz;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/wb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->l:Lcom/google/android/gms/internal/tz;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/tc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->r:Lcom/google/android/gms/internal/tc;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->r:Lcom/google/android/gms/internal/tc;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/tx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->s:Lcom/google/android/gms/internal/tx;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->s:Lcom/google/android/gms/internal/tx;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/internal/uf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->m:Lcom/google/android/gms/internal/uf;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->m:Lcom/google/android/gms/internal/uf;

    return-object v0
.end method

.method public final t()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/common/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->n:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/wv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->o:Lcom/google/android/gms/internal/wv;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->o:Lcom/google/android/gms/internal/wv;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/internal/wz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->t:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->t:Lcom/google/android/gms/internal/wz;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/ti;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->u:Lcom/google/android/gms/internal/ti;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->u:Lcom/google/android/gms/internal/ti;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/internal/tw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->v:Lcom/google/android/gms/internal/tw;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->v:Lcom/google/android/gms/internal/tw;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/sy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->y:Lcom/google/android/gms/internal/sy;

    invoke-static {v0}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/wc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vc;->y:Lcom/google/android/gms/internal/sy;

    return-object v0
.end method
