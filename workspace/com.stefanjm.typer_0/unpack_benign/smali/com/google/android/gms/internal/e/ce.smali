.class public Lcom/google/android/gms/internal/e/ce;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/e/ce$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/e/ce;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/Boolean;

.field private D:J

.field private E:Ljava/nio/channels/FileLock;

.field private F:Ljava/nio/channels/FileChannel;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:I

.field private K:J

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Z

.field private final P:J

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/e/aa;

.field private final d:Lcom/google/android/gms/internal/e/bk;

.field private final e:Lcom/google/android/gms/internal/e/az;

.field private final f:Lcom/google/android/gms/internal/e/bz;

.field private final g:Lcom/google/android/gms/internal/e/fd;

.field private final h:Lcom/google/android/gms/internal/e/by;

.field private final i:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final j:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final k:Lcom/google/android/gms/internal/e/fo;

.field private final l:Lcom/google/android/gms/internal/e/ax;

.field private final m:Lcom/google/android/gms/internal/e/bd;

.field private final n:Lcom/google/android/gms/common/util/e;

.field private final o:Lcom/google/android/gms/internal/e/ea;

.field private final p:Lcom/google/android/gms/internal/e/df;

.field private final q:Lcom/google/android/gms/internal/e/q;

.field private r:Lcom/google/android/gms/internal/e/ab;

.field private s:Lcom/google/android/gms/internal/e/av;

.field private t:Lcom/google/android/gms/internal/e/ee;

.field private u:Lcom/google/android/gms/internal/e/ah;

.field private v:Lcom/google/android/gms/internal/e/au;

.field private w:Lcom/google/android/gms/internal/e/bi;

.field private x:Lcom/google/android/gms/internal/e/fj;

.field private y:Lcom/google/android/gms/internal/e/x;

.field private z:Lcom/google/android/gms/internal/e/bq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/e/de;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->A:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/de;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/ce;->K:J

    invoke-static {}, Lcom/google/android/gms/common/util/h;->d()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/ce;->P:J

    new-instance v0, Lcom/google/android/gms/internal/e/aa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/aa;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    new-instance v0, Lcom/google/android/gms/internal/e/bk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/bk;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->d:Lcom/google/android/gms/internal/e/bk;

    new-instance v0, Lcom/google/android/gms/internal/e/az;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/az;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->e:Lcom/google/android/gms/internal/e/az;

    new-instance v0, Lcom/google/android/gms/internal/e/fo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/fo;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->k:Lcom/google/android/gms/internal/e/fo;

    new-instance v0, Lcom/google/android/gms/internal/e/ax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/ax;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->l:Lcom/google/android/gms/internal/e/ax;

    new-instance v0, Lcom/google/android/gms/internal/e/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/q;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->q:Lcom/google/android/gms/internal/e/q;

    new-instance v0, Lcom/google/android/gms/internal/e/bd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/bd;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->m:Lcom/google/android/gms/internal/e/bd;

    new-instance v0, Lcom/google/android/gms/internal/e/ea;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/ea;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->o:Lcom/google/android/gms/internal/e/ea;

    new-instance v0, Lcom/google/android/gms/internal/e/df;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/df;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->p:Lcom/google/android/gms/internal/e/df;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->i:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->j:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/e/fd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/fd;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->g:Lcom/google/android/gms/internal/e/fd;

    new-instance v0, Lcom/google/android/gms/internal/e/by;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/by;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->h:Lcom/google/android/gms/internal/e/by;

    new-instance v0, Lcom/google/android/gms/internal/e/bz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/bz;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->f:Lcom/google/android/gms/internal/e/bz;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->l()Lcom/google/android/gms/internal/e/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v0, Lcom/google/android/gms/internal/e/df;->a:Lcom/google/android/gms/internal/e/dy;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/e/dy;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/e/dy;-><init>(Lcom/google/android/gms/internal/e/df;Lcom/google/android/gms/internal/e/dg;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/e/df;->a:Lcom/google/android/gms/internal/e/dy;

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/e/df;->a:Lcom/google/android/gms/internal/e/dy;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/e/df;->a:Lcom/google/android/gms/internal/e/dy;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->f:Lcom/google/android/gms/internal/e/bz;

    new-instance v1, Lcom/google/android/gms/internal/e/cf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/e/cf;-><init>(Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/de;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static E()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final I()Lcom/google/android/gms/internal/e/bi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->w:Lcom/google/android/gms/internal/e/bi;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->w:Lcom/google/android/gms/internal/e/bi;

    return-object v0
.end method

.method private final J()Lcom/google/android/gms/internal/e/fj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->x:Lcom/google/android/gms/internal/e/fj;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->x:Lcom/google/android/gms/internal/e/fj;

    return-object v0
.end method

.method private final K()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    const-string v0, "google_app_measurement.db"

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->F:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->F:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->E:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->E:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final L()J
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dd;->Q()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-object v3, v2, Lcom/google/android/gms/internal/e/bk;->g:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->p()Lcom/google/android/gms/internal/e/fo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/fo;->z()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iget-object v2, v2, Lcom/google/android/gms/internal/e/bk;->g:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    move-wide v3, v7

    :cond_0
    add-long v5, v0, v3

    const-wide/16 v0, 0x3e8

    div-long/2addr v5, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v5, v0

    div-long/2addr v5, v0

    const-wide/16 v0, 0x18

    div-long/2addr v5, v0

    return-wide v5
.end method

.method private final M()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->B()Ljava/lang/String;

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

.method private final N()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->O()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/e/ce;->L:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/internal/e/ce;->L:J

    sub-long v9, v1, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long v7, v5, v1

    cmp-long v1, v7, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->I()Lcom/google/android/gms/internal/e/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bi;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->J()Lcom/google/android/gms/internal/e/fj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/fj;->y()V

    return-void

    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/internal/e/ce;->L:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->M()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/e/ap;->H:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/ab;->H()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/ab;->C()Z

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

    iget-object v9, v0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/aa;->A()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/google/android/gms/internal/e/ap;->C:Lcom/google/android/gms/internal/e/aq;

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/google/android/gms/internal/e/ap;->B:Lcom/google/android/gms/internal/e/aq;

    goto :goto_2

    :cond_7
    sget-object v9, Lcom/google/android/gms/internal/e/ap;->A:Lcom/google/android/gms/internal/e/aq;

    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/e/bk;->c:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/e/bk;->d:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/e/ab;->E()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v10

    move-wide/from16 v18, v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/e/ab;->F()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v5, v3

    goto/16 :goto_4

    :cond_9
    sub-long v8, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v8, v1, v5

    sub-long v5, v11, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v10, v1, v5

    sub-long v5, v13, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v12, v1, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v5, v8, v18

    if-eqz v7, :cond_a

    cmp-long v7, v1, v3

    if-lez v7, :cond_a

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long v10, v5, v16

    move-wide v5, v10

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v7

    move-wide/from16 v10, v16

    invoke-virtual {v7, v1, v2, v10, v11}, Lcom/google/android/gms/internal/e/fo;->a(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long v5, v1, v10

    :cond_b
    cmp-long v1, v12, v3

    if-eqz v1, :cond_d

    cmp-long v1, v12, v8

    if-ltz v1, :cond_d

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x14

    sget-object v7, Lcom/google/android/gms/internal/e/ap;->J:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_8

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v1

    sget-object v2, Lcom/google/android/gms/internal/e/ap;->I:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    mul-long/2addr v14, v9

    add-long v9, v5, v14

    cmp-long v2, v9, v12

    if-lez v2, :cond_c

    move-wide v5, v9

    goto :goto_4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move-wide v5, v9

    goto :goto_3

    :cond_d
    :goto_4
    cmp-long v1, v5, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->I()Lcom/google/android/gms/internal/e/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bi;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->J()Lcom/google/android/gms/internal/e/fj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/fj;->y()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bd;->y()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->I()Lcom/google/android/gms/internal/e/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bi;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->J()Lcom/google/android/gms/internal/e/fj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/fj;->y()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/e/bk;->e:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v1

    sget-object v7, Lcom/google/android/gms/internal/e/ap;->y:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v7, v8}, Lcom/google/android/gms/internal/e/fo;->a(JJ)Z

    move-result v9

    if-nez v9, :cond_10

    add-long v9, v1, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->I()Lcom/google/android/gms/internal/e/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bi;->b()V

    iget-object v1, v0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    sub-long v7, v5, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/e/ap;->D:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/e/bk;->c:Lcom/google/android/gms/internal/e/bn;

    iget-object v2, v0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->J()Lcom/google/android/gms/internal/e/fj;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/e/fj;->a(J)V

    return-void

    :cond_12
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->I()Lcom/google/android/gms/internal/e/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bi;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->J()Lcom/google/android/gms/internal/e/fj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/fj;->y()V

    return-void
.end method

.method private final O()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final P()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->M:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->N:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->O:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->H:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->H:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/e/ce;->M:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/e/ce;->N:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/e/ce;->O:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move p1, v0

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/e/ce;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/e/ce;->a:Lcom/google/android/gms/internal/e/ce;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/e/ce;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/e/ce;->a:Lcom/google/android/gms/internal/e/ce;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/e/de;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/e/de;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/e/ce;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/e/ce;-><init>(Lcom/google/android/gms/internal/e/de;)V

    sput-object p0, Lcom/google/android/gms/internal/e/ce;->a:Lcom/google/android/gms/internal/e/ce;

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
    sget-object p0, Lcom/google/android/gms/internal/e/ce;->a:Lcom/google/android/gms/internal/e/ce;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/e/v;
    .locals 24

    move-object/from16 v1, p2

    const-string v0, "Unknown"

    const-string v2, "Unknown"

    const-string v3, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v6, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

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
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

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

    goto :goto_3

    :cond_4
    const/high16 v0, -0x80000000

    :goto_3
    move-object v3, v2

    new-instance v23, Lcom/google/android/gms/internal/e/v;

    int-to-long v4, v0

    const-wide/16 v7, 0x30a3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/e/fo;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    move-object/from16 v2, p3

    move/from16 v12, p4

    move/from16 v20, p5

    move/from16 v21, p6

    invoke-direct/range {v0 .. v22}, Lcom/google/android/gms/internal/e/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    return-object v23

    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/e/v;
    .locals 25

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v15, p0

    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/u;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v23, Lcom/google/android/gms/internal/e/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->l()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->m()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->n()Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->A()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->B()Z

    move-result v21

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->C()Z

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v24

    invoke-direct/range {v0 .. v22}, Lcom/google/android/gms/internal/e/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    return-object v23

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v3, "No app data available; dropping"

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/de;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/de;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/e/dc;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/e/de;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dc;->c()V

    new-instance p1, Lcom/google/android/gms/internal/e/ah;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/e/ah;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ce;->u:Lcom/google/android/gms/internal/e/ah;

    new-instance p1, Lcom/google/android/gms/internal/e/au;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/e/au;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ce;->v:Lcom/google/android/gms/internal/e/au;

    new-instance v0, Lcom/google/android/gms/internal/e/ab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/ab;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->r:Lcom/google/android/gms/internal/e/ab;

    new-instance v0, Lcom/google/android/gms/internal/e/av;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/av;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->s:Lcom/google/android/gms/internal/e/av;

    new-instance v0, Lcom/google/android/gms/internal/e/x;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/x;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->y:Lcom/google/android/gms/internal/e/x;

    new-instance v0, Lcom/google/android/gms/internal/e/ee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/ee;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->t:Lcom/google/android/gms/internal/e/ee;

    new-instance v0, Lcom/google/android/gms/internal/e/fj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/fj;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->R()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->x:Lcom/google/android/gms/internal/e/fj;

    new-instance v0, Lcom/google/android/gms/internal/e/bi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/bi;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->w:Lcom/google/android/gms/internal/e/bi;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->k:Lcom/google/android/gms/internal/e/fo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->S()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->d:Lcom/google/android/gms/internal/e/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->S()V

    new-instance v0, Lcom/google/android/gms/internal/e/bq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/e/bq;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->z:Lcom/google/android/gms/internal/e/bq;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->v:Lcom/google/android/gms/internal/e/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->S()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    const-wide/16 v2, 0x30a3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/au;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/fo;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

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
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/e/ce;->I:I

    iget v0, p0, Lcom/google/android/gms/internal/e/ce;->J:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string v0, "Not all components initialized"

    iget v1, p0, Lcom/google/android/gms/internal/e/ce;->I:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/e/ce;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/e/ce;->A:Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/e/u;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/e/ap;->l:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/e/ap;->m:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

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

    const-string v3, "12451"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/by;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/e/fy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/e/by;->b(Ljava/lang/String;)Ljava/lang/String;

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

    iput-boolean v1, p0, Lcom/google/android/gms/internal/e/ce;->M:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/e/ci;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/e/ci;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dd;->Q()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->s()Lcom/google/android/gms/internal/e/bz;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/e/bh;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/e/bh;-><init>(Lcom/google/android/gms/internal/e/bd;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/e/bf;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/e/bz;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

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

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return v0
.end method

.method private final a(Ljava/lang/String;J)Z
    .locals 59

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/e/ce$a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/e/ce$a;-><init>(Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/cf;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/e/ce;->K:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dd;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/ab;->A()Landroid/database/sqlite/SQLiteDatabase;

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
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v6, v3

    goto/16 :goto_3c

    :catch_0
    move-exception v0

    move-object v6, v3

    move-object v12, v6

    :goto_0
    move-object v3, v0

    goto/16 :goto_c

    :cond_0
    :try_start_3
    new-array v12, v11, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_1
    cmp-long v13, v5, v7

    if-eqz v13, :cond_1

    :try_start_4
    const-string v13, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v13, ""

    :goto_2
    const/16 v14, 0x94

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v14, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

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

    if-eqz v3, :cond_d

    :goto_3
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_d

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

    move-object/from16 v22, v3

    move-object v3, v12

    move-object/from16 v21, v13

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v3

    goto :goto_0

    :cond_3
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    :try_start_a
    new-array v3, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v3, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    goto :goto_4

    :cond_4
    new-array v3, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v3, v10

    :goto_4
    cmp-long v12, v5, v7

    if-eqz v12, :cond_5

    const-string v12, " and rowid <= ?"

    goto :goto_5

    :cond_5
    const-string v12, ""

    :goto_5
    const/16 v13, 0x54

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " order by rowid limit 1;"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v22, v3

    move-object/from16 v21, v13

    const/4 v3, 0x0

    :goto_6
    :try_start_c
    const-string v13, "raw_events_metadata"

    new-array v14, v11, [Ljava/lang/String;

    const-string v12, "metadata"

    aput-object v12, v14, v10

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v12, v9, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v21, v12, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object/from16 v23, v12

    move-object v12, v15

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v23

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
    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v15, :cond_d

    :try_start_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v6, v15

    goto/16 :goto_3c

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

    invoke-static {v12, v10, v13}, Lcom/google/android/gms/internal/e/a;->a([BII)Lcom/google/android/gms/internal/e/a;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/e/ge;

    invoke-direct {v13}, Lcom/google/android/gms/internal/e/ge;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/e/j;->a(Lcom/google/android/gms/internal/e/a;)Lcom/google/android/gms/internal/e/j;
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
    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v12

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v14, v9}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_8
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/e/ad;->a(Lcom/google/android/gms/internal/e/ge;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    cmp-long v9, v5, v7

    const/4 v14, 0x3

    if-eqz v9, :cond_9

    :try_start_15
    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v12, v14, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v21, v12, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v12, v6
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v5, v9

    move-object/from16 v16, v12

    goto :goto_7

    :cond_9
    :try_start_16
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    aput-object v3, v9, v10

    aput-object v21, v9, v11

    move-object/from16 v16, v9

    :goto_7
    const-string v13, "raw_events"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "rowid"

    aput-object v9, v6, v10

    const-string v9, "name"

    aput-object v9, v6, v11

    const-string v9, "timestamp"

    const/4 v12, 0x2

    aput-object v9, v6, v12

    const-string v9, "data"

    aput-object v9, v6, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/16 v20, 0x0

    move-object/from16 v12, v24

    move v9, v14

    move-object v14, v6

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

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v6

    const-string v9, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v5, :cond_d

    :goto_8
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto/16 :goto_d

    :cond_a
    :goto_9
    :try_start_1a
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    array-length v14, v6

    invoke-static {v6, v10, v14}, Lcom/google/android/gms/internal/e/a;->a([BII)Lcom/google/android/gms/internal/e/a;

    move-result-object v6

    new-instance v14, Lcom/google/android/gms/internal/e/gb;

    invoke-direct {v14}, Lcom/google/android/gms/internal/e/gb;-><init>()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/e/j;->a(Lcom/google/android/gms/internal/e/a;)Lcom/google/android/gms/internal/e/j;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/e/ad;->a(JLcom/google/android/gms/internal/e/gb;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v5, :cond_d

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v6

    const-string v7, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-nez v6, :cond_c

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_c
    const-wide/16 v7, -0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    goto/16 :goto_3c

    :catch_4
    move-exception v0

    move-object v12, v3

    move-object v6, v5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v6, v15

    :try_start_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v7, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v6, :cond_d

    :goto_a
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v6, v15

    goto/16 :goto_3b

    :catch_7
    move-exception v0

    move-object v6, v15

    :goto_b
    move-object v12, v3

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v22

    goto/16 :goto_3c

    :catch_8
    move-exception v0

    move-object v12, v3

    move-object/from16 v6, v22

    goto/16 :goto_0

    :catch_9
    move-exception v0

    move-object v6, v3

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_3c

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_c
    :try_start_1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v6, :cond_d

    goto :goto_a

    :cond_d
    :goto_d
    :try_start_20
    iget-object v3, v2, Lcom/google/android/gms/internal/e/ce$a;->c:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/google/android/gms/internal/e/ce$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_e

    :cond_e
    move v3, v10

    goto :goto_f

    :cond_f
    :goto_e
    move v3, v11

    :goto_f
    if-nez v3, :cond_5e

    iget-object v3, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v4, v2, Lcom/google/android/gms/internal/e/ce$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/e/gb;

    iput-object v4, v3, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    iget-object v4, v1, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v5, v3, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/aa;->d(Ljava/lang/String;)Z

    move-result v4

    move v7, v10

    move v8, v7

    move v9, v8

    const-wide/16 v12, 0x0

    :goto_10
    iget-object v14, v2, Lcom/google/android/gms/internal/e/ce$a;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_2b

    iget-object v14, v2, Lcom/google/android/gms/internal/e/ce$a;->c:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/e/gb;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v15

    iget-object v11, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v11, v11, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v5, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v15, v11, v5}, Lcom/google/android/gms/internal/e/by;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Dropping blacklisted raw event. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v11, v11, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v15

    iget-object v10, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/e/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v11, v10}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v6, v6, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/e/fo;->k(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v6, v6, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/e/fo;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_11

    :cond_10
    const/4 v5, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v5, 0x1

    :goto_12
    if-nez v5, :cond_12

    const-string v5, "_err"

    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v15

    iget-object v5, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v5, v5, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const/16 v17, 0xb

    const-string v18, "_ev"

    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_12
    move/from16 v28, v7

    goto/16 :goto_20

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v6, v6, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v10, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lcom/google/android/gms/internal/e/by;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/e/fo;->m(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_13

    :cond_14
    move/from16 v28, v7

    goto/16 :goto_1b

    :cond_15
    :goto_13
    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    if-nez v6, :cond_16

    const/4 v6, 0x0

    new-array v10, v6, [Lcom/google/android/gms/internal/e/gc;

    iput-object v10, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    :cond_16
    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v10, v6

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_14
    if-ge v11, v10, :cond_19

    move/from16 v25, v10

    aget-object v10, v6, v11

    move-object/from16 v26, v6

    const-string v6, "_c"

    move/from16 v27, v8

    iget-object v8, v10, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    move/from16 v28, v7

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v10, Lcom/google/android/gms/internal/e/gc;->e:Ljava/lang/Long;

    const/4 v15, 0x1

    goto :goto_15

    :cond_17
    move/from16 v28, v7

    const-string v6, "_r"

    iget-object v7, v10, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v10, Lcom/google/android/gms/internal/e/gc;->e:Ljava/lang/Long;

    const/16 v16, 0x1

    :cond_18
    :goto_15
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v25

    move-object/from16 v6, v26

    move/from16 v8, v27

    move/from16 v7, v28

    goto :goto_14

    :cond_19
    move/from16 v28, v7

    move/from16 v27, v8

    if-nez v15, :cond_1a

    if-eqz v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v6

    const-string v7, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v8

    iget-object v10, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/e/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    iget-object v7, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/e/gc;

    new-instance v7, Lcom/google/android/gms/internal/e/gc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/e/gc;-><init>()V

    const-string v8, "_c"

    iput-object v8, v7, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/e/gc;->e:Ljava/lang/Long;

    array-length v8, v6

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    aput-object v7, v6, v8

    iput-object v6, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    :cond_1a
    if-nez v16, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v6

    const-string v7, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v8

    iget-object v10, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/e/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    iget-object v7, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/e/gc;

    new-instance v7, Lcom/google/android/gms/internal/e/gc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/e/gc;-><init>()V

    const-string v8, "_r"

    iput-object v8, v7, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/e/gc;->e:Ljava/lang/Long;

    array-length v8, v6

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    aput-object v7, v6, v8

    iput-object v6, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->L()J

    move-result-wide v30

    iget-object v6, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v6, v6, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    move-object/from16 v32, v6

    invoke-virtual/range {v29 .. v37}, Lcom/google/android/gms/internal/e/ab;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/e/ac;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/gms/internal/e/ac;->e:J

    iget-object v8, v1, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v10, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v10, v10, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/e/aa;->a(Ljava/lang/String;)I

    move-result v8

    int-to-long v10, v8

    cmp-long v8, v6, v10

    if-lez v8, :cond_20

    const/4 v6, 0x0

    :goto_16
    iget-object v7, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v7, v7

    if-ge v6, v7, :cond_1f

    const-string v7, "_r"

    iget-object v8, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    new-array v7, v7, [Lcom/google/android/gms/internal/e/gc;

    if-lez v6, :cond_1c

    iget-object v8, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    const/4 v10, 0x0

    invoke-static {v8, v10, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    array-length v8, v7

    if-ge v6, v8, :cond_1d

    iget-object v8, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    add-int/lit8 v10, v6, 0x1

    array-length v11, v7

    sub-int/2addr v11, v6

    invoke-static {v8, v10, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    iput-object v7, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    goto :goto_17

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1f
    :goto_17
    move/from16 v8, v27

    goto :goto_18

    :cond_20
    const/4 v8, 0x1

    :goto_18
    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    if-eqz v5, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->L()J

    move-result-wide v30

    iget-object v5, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v5, v5, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v32, v5

    invoke-virtual/range {v29 .. v37}, Lcom/google/android/gms/internal/e/ab;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/e/ac;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/internal/e/ac;->c:J

    iget-object v7, v1, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v10, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v10, v10, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/e/ap;->u:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v5, v10

    if-lez v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Too many conversions. Not logging as conversion. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_19
    if-ge v7, v6, :cond_23

    aget-object v15, v5, v7

    move-object/from16 v38, v5

    const-string v5, "_c"

    move/from16 v39, v6

    iget-object v6, v15, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object v11, v15

    goto :goto_1a

    :cond_21
    const-string v5, "_err"

    iget-object v6, v15, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v10, 0x1

    :cond_22
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v38

    move/from16 v6, v39

    goto :goto_19

    :cond_23
    if-eqz v10, :cond_24

    if-eqz v11, :cond_24

    iget-object v5, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/android/gms/internal/e/gc;

    const/4 v6, 0x0

    aput-object v11, v7, v6

    invoke-static {v5, v7}, Lcom/google/android/gms/common/util/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/e/gc;

    iput-object v5, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    goto :goto_1b

    :cond_24
    if-eqz v11, :cond_25

    const-string v5, "_err"

    iput-object v5, v11, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v11, Lcom/google/android/gms/internal/e/gc;->e:Ljava/lang/Long;

    goto :goto_1b

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Did not find conversion parameter. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    :goto_1b
    if-eqz v4, :cond_2a

    const-string v5, "_e"

    iget-object v6, v14, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    if-eqz v5, :cond_29

    iget-object v5, v14, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v5, v5

    if-nez v5, :cond_27

    goto :goto_1d

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    const-string v5, "_et"

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/e/fo;->b(Lcom/google/android/gms/internal/e/gb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :goto_1c
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_28
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v10, v12, v5

    goto :goto_1f

    :cond_29
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1c

    :cond_2a
    :goto_1e
    move-wide v10, v12

    :goto_1f
    iget-object v5, v3, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    add-int/lit8 v6, v9, 0x1

    aput-object v14, v5, v9

    move v9, v6

    move-wide v12, v10

    :goto_20
    add-int/lit8 v7, v28, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_10

    :cond_2b
    move/from16 v27, v8

    iget-object v5, v2, Lcom/google/android/gms/internal/e/ce$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_2c

    iget-object v5, v3, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/e/gb;

    iput-object v5, v3, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    :cond_2c
    if-eqz v4, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const-string v6, "_lte"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/e/ab;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/fn;

    move-result-object v4

    if-eqz v4, :cond_2e

    iget-object v5, v4, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    if-nez v5, :cond_2d

    goto :goto_21

    :cond_2d
    new-instance v5, Lcom/google/android/gms/internal/e/fn;

    iget-object v15, v3, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const-string v16, "auto"

    const-string v17, "_lte"

    iget-object v6, v1, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v18

    iget-object v4, v4, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v8, v6, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v14, v5

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v5

    goto :goto_22

    :cond_2e
    :goto_21
    new-instance v4, Lcom/google/android/gms/internal/e/fn;

    iget-object v5, v3, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const-string v30, "auto"

    const-string v31, "_lte"

    iget-object v6, v1, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v32

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v28 .. v34}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_22
    new-instance v5, Lcom/google/android/gms/internal/e/gg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/e/gg;-><init>()V

    const-string v6, "_lte"

    iput-object v6, v5, Lcom/google/android/gms/internal/e/gg;->d:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/e/gg;->c:Ljava/lang/Long;

    iget-object v6, v4, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v5, Lcom/google/android/gms/internal/e/gg;->f:Ljava/lang/Long;

    const/4 v6, 0x0

    :goto_23
    iget-object v7, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    array-length v7, v7

    if-ge v6, v7, :cond_30

    const-string v7, "_lte"

    iget-object v8, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/google/android/gms/internal/e/gg;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    aput-object v5, v7, v6

    const/4 v6, 0x1

    goto :goto_24

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_30
    const/4 v6, 0x0

    :goto_24
    if-nez v6, :cond_31

    iget-object v6, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v7, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/e/gg;

    iput-object v6, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v6, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v7, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v5, v6, v7

    :cond_31
    const-wide/16 v5, 0x0

    cmp-long v7, v12, v5

    if-lez v7, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/fn;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Updated lifetime engagement user property with value. Value"

    iget-object v4, v4, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    iget-object v4, v3, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v6, v3, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/e/gg;[Lcom/google/android/gms/internal/e/gb;)[Lcom/google/android/gms/internal/e/ga;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/e/ge;->C:[Lcom/google/android/gms/internal/e/ga;

    sget-object v4, Lcom/google/android/gms/internal/e/ap;->g:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, v1, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v5, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v5, v5, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->q()Lcom/google/android/gms/internal/e/by;

    move-result-object v4

    const-string v7, "measurement.event_sampling_enabled"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/e/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v3, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    array-length v5, v5

    new-array v5, v5, [Lcom/google/android/gms/internal/e/gb;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/e/fo;->z()Ljava/security/SecureRandom;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_25
    if-ge v9, v8, :cond_4b

    aget-object v11, v7, v9

    iget-object v12, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    const-string v13, "_ep"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    const-string v12, "_en"

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/e/fo;->b(Lcom/google/android/gms/internal/e/gb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/e/aj;

    if-nez v13, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v14, v14, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    iget-object v12, v13, Lcom/google/android/gms/internal/e/aj;->g:Ljava/lang/Long;

    if-nez v12, :cond_36

    iget-object v12, v13, Lcom/google/android/gms/internal/e/aj;->h:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v12, v14, v16

    if-lez v12, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v12, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    const-string v14, "_sr"

    iget-object v15, v13, Lcom/google/android/gms/internal/e/aj;->h:Ljava/lang/Long;

    invoke-static {v12, v14, v15}, Lcom/google/android/gms/internal/e/fo;->a([Lcom/google/android/gms/internal/e/gc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/e/gc;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    :cond_34
    iget-object v12, v13, Lcom/google/android/gms/internal/e/aj;->i:Ljava/lang/Boolean;

    if-eqz v12, :cond_35

    iget-object v12, v13, Lcom/google/android/gms/internal/e/aj;->i:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v12, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    const-string v13, "_efs"

    move-object/from16 v40, v7

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v13, v7}, Lcom/google/android/gms/internal/e/fo;->a([Lcom/google/android/gms/internal/e/gc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/e/gc;

    move-result-object v7

    iput-object v7, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    goto :goto_26

    :cond_35
    move-object/from16 v40, v7

    :goto_26
    add-int/lit8 v7, v10, 0x1

    aput-object v11, v5, v10

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object/from16 v56, v6

    move v10, v7

    :goto_27
    move/from16 v41, v8

    goto/16 :goto_2d

    :cond_36
    move-object/from16 v40, v7

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object/from16 v56, v6

    goto :goto_27

    :cond_37
    move-object/from16 v40, v7

    const-string v7, "_dbg"

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3d

    if-nez v14, :cond_38

    goto :goto_29

    :cond_38
    iget-object v12, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    array-length v13, v12

    const/4 v15, 0x0

    :goto_28
    if-ge v15, v13, :cond_3d

    move/from16 v41, v8

    aget-object v8, v12, v15

    move-object/from16 v42, v12

    iget-object v12, v8, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    instance-of v7, v14, Ljava/lang/Long;

    if-eqz v7, :cond_39

    iget-object v7, v8, Lcom/google/android/gms/internal/e/gc;->e:Ljava/lang/Long;

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    :cond_39
    instance-of v7, v14, Ljava/lang/String;

    if-eqz v7, :cond_3a

    iget-object v7, v8, Lcom/google/android/gms/internal/e/gc;->d:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    :cond_3a
    instance-of v7, v14, Ljava/lang/Double;

    if-eqz v7, :cond_3e

    iget-object v7, v8, Lcom/google/android/gms/internal/e/gc;->f:Ljava/lang/Double;

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    :cond_3b
    const/4 v7, 0x1

    goto :goto_2a

    :cond_3c
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v41

    move-object/from16 v12, v42

    goto :goto_28

    :cond_3d
    :goto_29
    move/from16 v41, v8

    :cond_3e
    const/4 v7, 0x0

    :goto_2a
    if-nez v7, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v8, v8, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v12, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v7, v8, v12}, Lcom/google/android/gms/internal/e/by;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2b

    :cond_3f
    const/4 v7, 0x1

    :goto_2b
    if-gtz v7, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v8

    const-string v12, "Sample rate must be positive. event, rate"

    iget-object v13, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v12, v13, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v7, v10, 0x1

    aput-object v11, v5, v10

    :cond_40
    :goto_2c
    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object/from16 v56, v6

    move v10, v7

    :goto_2d
    const-wide/16 v14, 0x1

    goto/16 :goto_2f

    :cond_41
    iget-object v8, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/e/aj;

    if-nez v8, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v12, v12, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v13, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v8

    if-nez v8, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v8

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v13, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v13, v13, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v14, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-virtual {v8, v12, v13, v14}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/internal/e/aj;

    iget-object v12, v2, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v12, v12, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v13, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    const-wide/16 v45, 0x1

    const-wide/16 v47, 0x1

    iget-object v14, v11, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v49

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v42, v8

    move-object/from16 v43, v12

    move-object/from16 v44, v13

    invoke-direct/range {v42 .. v55}, Lcom/google/android/gms/internal/e/aj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    const-string v12, "_eid"

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/e/fo;->b(Lcom/google/android/gms/internal/e/gb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_43

    const/4 v13, 0x1

    goto :goto_2e

    :cond_43
    const/4 v13, 0x0

    :goto_2e
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v7, v14, :cond_45

    add-int/lit8 v7, v10, 0x1

    aput-object v11, v5, v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v10, v8, Lcom/google/android/gms/internal/e/aj;->g:Ljava/lang/Long;

    if-nez v10, :cond_44

    iget-object v10, v8, Lcom/google/android/gms/internal/e/aj;->h:Ljava/lang/Long;

    if-nez v10, :cond_44

    iget-object v10, v8, Lcom/google/android/gms/internal/e/aj;->i:Ljava/lang/Boolean;

    if-eqz v10, :cond_40

    :cond_44
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10, v10}, Lcom/google/android/gms/internal/e/aj;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v8

    iget-object v10, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_45
    invoke-virtual {v6, v7}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v12, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    const-string v14, "_sr"

    move-object/from16 v56, v6

    int-to-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/google/android/gms/internal/e/fo;->a([Lcom/google/android/gms/internal/e/gc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/e/gc;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    add-int/lit8 v12, v10, 0x1

    aput-object v11, v5, v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v6, v7}, Lcom/google/android/gms/internal/e/aj;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v8

    :cond_46
    iget-object v6, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    iget-object v7, v11, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/e/aj;->b(J)Lcom/google/android/gms/internal/e/aj;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move v10, v12

    goto/16 :goto_2d

    :cond_47
    move-object/from16 v56, v6

    iget-wide v14, v8, Lcom/google/android/gms/internal/e/aj;->f:J

    iget-object v6, v11, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    sub-long v2, v16, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v14, 0x5265c00

    cmp-long v6, v2, v14

    if-ltz v6, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v2, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    const-string v3, "_efs"

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/e/fo;->a([Lcom/google/android/gms/internal/e/gc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/e/gc;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v2, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    const-string v3, "_sr"

    int-to-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v2, v3, v12}, Lcom/google/android/gms/internal/e/fo;->a([Lcom/google/android/gms/internal/e/gc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/e/gc;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    add-int/lit8 v2, v10, 0x1

    aput-object v11, v5, v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual {v8, v6, v3, v7}, Lcom/google/android/gms/internal/e/aj;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v8

    :cond_48
    iget-object v3, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    iget-object v6, v11, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/e/aj;->b(J)Lcom/google/android/gms/internal/e/aj;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v2

    goto :goto_2f

    :cond_49
    const-wide/16 v14, 0x1

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v11, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v8, v12, v3, v3}, Lcom/google/android/gms/internal/e/aj;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_2f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v40

    move/from16 v8, v41

    move-object/from16 v6, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v58

    goto/16 :goto_25

    :cond_4b
    move-object/from16 v57, v2

    move-object v2, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    array-length v3, v3

    if-ge v10, v3, :cond_4c

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/e/gb;

    iput-object v3, v2, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    :cond_4c
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/e/aj;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/aj;)V

    goto :goto_30

    :cond_4d
    move-object/from16 v57, v2

    move-object v2, v3

    :cond_4e
    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/e/ge;->g:Ljava/lang/Long;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/e/ge;->h:Ljava/lang/Long;

    const/4 v3, 0x0

    :goto_31
    iget-object v4, v2, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    array-length v4, v4

    if-ge v3, v4, :cond_51

    iget-object v4, v2, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v2, Lcom/google/android/gms/internal/e/ge;->g:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_4f

    iget-object v5, v4, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    iput-object v5, v2, Lcom/google/android/gms/internal/e/ge;->g:Ljava/lang/Long;

    :cond_4f
    iget-object v5, v4, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v2, Lcom/google/android/gms/internal/e/ge;->h:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_50

    iget-object v4, v4, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    iput-object v4, v2, Lcom/google/android/gms/internal/e/ge;->h:Ljava/lang/Long;

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_51
    move-object/from16 v3, v57

    iget-object v4, v3, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v4, v4, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v5

    if-nez v5, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v3, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_35

    :cond_52
    iget-object v6, v2, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    array-length v6, v6

    if-lez v6, :cond_56

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/u;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_53

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_32

    :cond_53
    const/4 v8, 0x0

    :goto_32
    iput-object v8, v2, Lcom/google/android/gms/internal/e/ge;->j:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/u;->g()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_54

    goto :goto_33

    :cond_54
    move-wide v6, v8

    :goto_33
    cmp-long v8, v6, v10

    if-eqz v8, :cond_55

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_34

    :cond_55
    const/4 v6, 0x0

    :goto_34
    iput-object v6, v2, Lcom/google/android/gms/internal/e/ge;->i:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/u;->r()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/u;->o()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/google/android/gms/internal/e/ge;->y:Ljava/lang/Integer;

    iget-object v6, v2, Lcom/google/android/gms/internal/e/ge;->g:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/u;->a(J)V

    iget-object v6, v2, Lcom/google/android/gms/internal/e/ge;->h:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/u;->b(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/u;->z()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/google/android/gms/internal/e/ge;->z:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/u;)V

    :cond_56
    :goto_35
    iget-object v5, v2, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    array-length v5, v5

    if-lez v5, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v6, v6, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/e/by;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/e/fy;

    move-result-object v5

    if-eqz v5, :cond_58

    iget-object v6, v5, Lcom/google/android/gms/internal/e/fy;->c:Ljava/lang/Long;

    if-nez v6, :cond_57

    goto :goto_37

    :cond_57
    iget-object v5, v5, Lcom/google/android/gms/internal/e/fy;->c:Ljava/lang/Long;

    :goto_36
    iput-object v5, v2, Lcom/google/android/gms/internal/e/ge;->G:Ljava/lang/Long;

    goto :goto_38

    :cond_58
    :goto_37
    iget-object v5, v3, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v5, v5, Lcom/google/android/gms/internal/e/ge;->A:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_36

    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v3, Lcom/google/android/gms/internal/e/ce$a;->a:Lcom/google/android/gms/internal/e/ge;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    move/from16 v10, v27

    invoke-virtual {v5, v2, v10}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/ge;Z)Z

    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/e/ce$a;->b:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dd;->Q()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_39
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5c

    if-eqz v6, :cond_5b

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_5c
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_5d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v6, "Deleted fewer rows from raw events table than expected"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v5, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :try_start_21
    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_3a

    :catch_b
    move-exception v0

    move-object v3, v0

    :try_start_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->z()V

    const/4 v2, 0x1

    return v2

    :cond_5e
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->z()V

    const/4 v2, 0x0

    return v2

    :catchall_6
    move-exception v0

    :goto_3b
    move-object v2, v0

    :goto_3c
    if-eqz v6, :cond_5f

    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw v2
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/e/an;)Z
    .locals 13

    iget-object v0, p2, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecommerce_purchase"

    iget-object v2, p2, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/e/ak;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v3, v7

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/e/ak;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v3, v5

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v0, "Data lost. Currency value is too big. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v1, p2, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/e/ak;->b(Ljava/lang/String;)Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/google/android/gms/internal/e/ab;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/fn;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/e/fn;

    iget-object v8, p2, Lcom/google/android/gms/internal/e/an;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v10

    add-long v6, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v0, v2

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    sget-object v6, Lcom/google/android/gms/internal/e/ap;->L:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->A()Landroid/database/sqlite/SQLiteDatabase;

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

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/e/fn;

    iget-object v8, p2, Lcom/google/android/gms/internal/e/an;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/fn;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v1, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v5
.end method

.method private final a(Ljava/lang/String;[Lcom/google/android/gms/internal/e/gg;[Lcom/google/android/gms/internal/e/gb;)[Lcom/google/android/gms/internal/e/ga;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->z()Lcom/google/android/gms/internal/e/x;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/e/x;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/e/gb;[Lcom/google/android/gms/internal/e/gg;)[Lcom/google/android/gms/internal/e/ga;

    move-result-object p1

    return-object p1
.end method

.method private final b(Lcom/google/android/gms/internal/e/u;)Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V
    .locals 33

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v10, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/e/fo;->a(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v12, Lcom/google/android/gms/internal/e/v;->h:Z

    if-nez v2, :cond_1

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/internal/e/by;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Dropping blacklisted event. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/e/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/e/fo;->k(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/e/fo;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v9, 0x1

    :goto_1
    if-nez v9, :cond_4

    const-string v2, "_err"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v3

    const/16 v5, 0xb

    const-string v6, "_ev"

    iget-object v7, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/u;->q()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/u;->p()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v4, v11, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/e/ap;->G:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Fetching config for blacklisted app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/u;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/e/az;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Logging event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/e/ax;->a(Lcom/google/android/gms/internal/e/an;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ecommerce_purchase"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {v11, v10, v1}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;Lcom/google/android/gms/internal/e/an;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :cond_9
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;)Z

    move-result v24

    const-string v2, "_err"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->L()J

    move-result-wide v16

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    move/from16 v20, v24

    move/from16 v22, v2

    invoke-virtual/range {v15 .. v23}, Lcom/google/android/gms/internal/e/ab;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/e/ac;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/e/ac;->b:J

    sget-object v7, Lcom/google/android/gms/internal/e/ap;->r:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v6, v7

    sub-long v15, v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v15, v6

    const-wide/16 v17, 0x3e8

    const-wide/16 v8, 0x1

    if-lez v4, :cond_b

    rem-long v15, v15, v17

    cmp-long v1, v15, v8

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/internal/e/ac;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :cond_b
    if-eqz v24, :cond_d

    :try_start_2
    iget-wide v4, v3, Lcom/google/android/gms/internal/e/ac;->a:J

    sget-object v15, Lcom/google/android/gms/internal/e/ap;->t:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v8, v15

    sub-long v15, v4, v8

    cmp-long v4, v15, v6

    if-lez v4, :cond_d

    rem-long v15, v15, v17

    const-wide/16 v4, 0x1

    cmp-long v2, v15, v4

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gms/internal/e/ac;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v3

    const/16 v5, 0x10

    const-string v6, "_ev"

    iget-object v7, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :cond_d
    if-eqz v2, :cond_f

    :try_start_3
    iget-wide v4, v3, Lcom/google/android/gms/internal/e/ac;->d:J

    iget-object v2, v11, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v8, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/e/ap;->s:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)I

    move-result v2

    const v8, 0xf4240

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v8, v2

    sub-long v15, v4, v8

    cmp-long v2, v15, v6

    if-lez v2, :cond_f

    const-wide/16 v4, 0x1

    cmp-long v1, v15, v4

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/internal/e/ac;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :cond_f
    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ak;->b()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    const-string v3, "_o"

    iget-object v4, v1, Lcom/google/android/gms/internal/e/an;->c:Ljava/lang/String;

    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/e/fo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/e/fo;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v15, v3, v8}, Lcom/google/android/gms/internal/e/fo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    const-string v3, "_r"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/e/fo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/e/ab;->c(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v5, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v8, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v8, Lcom/google/android/gms/internal/e/ai;

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->c:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    iget-wide v1, v1, Lcom/google/android/gms/internal/e/an;->d:J

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v1

    move-object v1, v8

    move-object v2, v11

    move-object v4, v10

    move-wide/from16 v30, v13

    const/4 v9, 0x2

    move-wide v13, v6

    move-wide/from16 v6, v18

    move-object v13, v8

    const/4 v14, 0x1

    const/16 v29, 0x0

    move-wide/from16 v8, v16

    move-object v14, v10

    move-object v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/e/ai;-><init>(Lcom/google/android/gms/internal/e/ce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    iget-object v2, v13, Lcom/google/android/gms/internal/e/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/e/ab;->f(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-ltz v5, :cond_12

    if-eqz v24, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v14}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v4

    iget-object v5, v13, Lcom/google/android/gms/internal/e/ai;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v14

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :cond_12
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/e/aj;

    iget-object v2, v13, Lcom/google/android/gms/internal/e/ai;->b:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v3, v13, Lcom/google/android/gms/internal/e/ai;->c:J

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v15, v1

    move-object/from16 v16, v14

    move-object/from16 v17, v2

    move-wide/from16 v22, v3

    invoke-direct/range {v15 .. v28}, Lcom/google/android/gms/internal/e/aj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_13
    iget-wide v2, v1, Lcom/google/android/gms/internal/e/aj;->e:J

    invoke-virtual {v13, v11, v2, v3}, Lcom/google/android/gms/internal/e/ai;->a(Lcom/google/android/gms/internal/e/ce;J)Lcom/google/android/gms/internal/e/ai;

    move-result-object v8

    iget-wide v2, v8, Lcom/google/android/gms/internal/e/ai;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/aj;->a(J)Lcom/google/android/gms/internal/e/aj;

    move-result-object v1

    move-object v13, v8

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/aj;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v13, Lcom/google/android/gms/internal/e/ai;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v13, Lcom/google/android/gms/internal/e/ai;->a:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->b(Z)V

    new-instance v1, Lcom/google/android/gms/internal/e/ge;

    invoke-direct {v1}, Lcom/google/android/gms/internal/e/ge;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->c:Ljava/lang/Integer;

    const-string v3, "android"

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->k:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/e/v;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->p:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/e/v;->c:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->r:Ljava/lang/String;

    iget-wide v3, v12, Lcom/google/android/gms/internal/e/v;->j:J

    const-wide/32 v5, -0x80000000

    cmp-long v7, v3, v5

    const/4 v3, 0x0

    if-nez v7, :cond_14

    move-object v4, v3

    goto :goto_3

    :cond_14
    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->j:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->E:Ljava/lang/Integer;

    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->s:Ljava/lang/Long;

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->A:Ljava/lang/String;

    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->f:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_15

    move-object v4, v3

    goto :goto_4

    :cond_15
    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_4
    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->x:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/bk;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-boolean v5, v12, Lcom/google/android/gms/internal/e/v;->o:Z

    if-eqz v5, :cond_19

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/google/android/gms/internal/e/ge;->u:Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->v:Ljava/lang/Boolean;

    goto :goto_6

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v4

    iget-object v5, v11, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/ah;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-boolean v4, v12, Lcom/google/android/gms/internal/e/v;->p:Z

    if-eqz v4, :cond_19

    iget-object v4, v11, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v5, "null secure ID. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "null"

    goto :goto_5

    :cond_17
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "empty secure ID. appId"

    iget-object v7, v1, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_5
    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->F:Ljava/lang/String;

    :cond_19
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dd;->Q()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->m:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dd;->Q()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->l:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/ah;->x()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->o:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/ah;->y()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->n:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->t:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->f:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->g:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->h:Ljava/lang/Long;

    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->l:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->H:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->C()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {}, Lcom/google/android/gms/internal/e/aa;->B()Z

    move-result v4

    if-eqz v4, :cond_1a

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->I:Ljava/lang/String;

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v3

    if-nez v3, :cond_1b

    new-instance v3, Lcom/google/android/gms/internal/e/u;

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-direct {v3, v11, v4}, Lcom/google/android/gms/internal/e/u;-><init>(Lcom/google/android/gms/internal/e/ce;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/au;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/u;->a(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/u;->d(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/u;->b(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/bk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/u;->c(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->f(J)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->a(J)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->b(J)V

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/u;->e(Ljava/lang/String;)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->j:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->c(J)V

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/u;->f(Ljava/lang/String;)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->e:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->d(J)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->f:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->e(J)V

    iget-boolean v4, v12, Lcom/google/android/gms/internal/e/v;->h:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/u;->a(Z)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/e/v;->l:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->o(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/u;)V

    :cond_1b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/u;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->w:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/u;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/e/ge;->D:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/e/gg;

    iput-object v4, v1, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    move/from16 v4, v29

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c

    new-instance v5, Lcom/google/android/gms/internal/e/gg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/e/gg;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    aput-object v5, v6, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/e/fn;

    iget-object v6, v6, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/e/gg;->d:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/e/fn;

    iget-wide v6, v6, Lcom/google/android/gms/internal/e/fn;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/e/gg;->c:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/e/fn;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/e/fo;->a(Lcom/google/android/gms/internal/e/gg;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_1c
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/ge;)J

    move-result-wide v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    iget-object v5, v13, Lcom/google/android/gms/internal/e/ai;->e:Lcom/google/android/gms/internal/e/ak;

    if-eqz v5, :cond_1f

    iget-object v5, v13, Lcom/google/android/gms/internal/e/ai;->e:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/ak;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "_r"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_8

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v5

    iget-object v6, v13, Lcom/google/android/gms/internal/e/ai;->a:Ljava/lang/String;

    iget-object v7, v13, Lcom/google/android/gms/internal/e/ai;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/e/by;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->L()J

    move-result-wide v15

    iget-object v6, v13, Lcom/google/android/gms/internal/e/ai;->a:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/gms/internal/e/ab;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/e/ac;

    move-result-object v6

    if-eqz v5, :cond_1f

    iget-wide v5, v6, Lcom/google/android/gms/internal/e/ac;->e:J

    iget-object v7, v11, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v8, v13, Lcom/google/android/gms/internal/e/ai;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/e/aa;->a(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1f

    goto :goto_8

    :cond_1f
    move/from16 v2, v29

    :goto_8
    invoke-virtual {v1, v13, v3, v4, v2}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/ai;JZ)Z

    move-result v1

    if-eqz v1, :cond_20

    const-wide/16 v1, 0x0

    iput-wide v1, v11, Lcom/google/android/gms/internal/e/ce;->L:J

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v3

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v1, v1, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->y()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/az;->a(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/e/ax;->a(Lcom/google/android/gms/internal/e/ai;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->z()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->N()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v5, v3, v30

    const-wide/32 v3, 0x7a120

    add-long v7, v5, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw v1
.end method

.method private static b(Lcom/google/android/gms/internal/e/dd;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->P()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

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
    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/bk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/e/u;

    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/e/u;-><init>(Lcom/google/android/gms/internal/e/ce;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/au;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/e/u;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->c(Ljava/lang/String;)V

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/au;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->b(Ljava/lang/String;)V

    move v1, v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/e/v;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->d(Ljava/lang/String;)V

    move v1, v2

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->e:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->e:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->l()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->e:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/e/u;->d(J)V

    move v1, v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/e/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->e(Ljava/lang/String;)V

    move v1, v2

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->j:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->j:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/e/u;->c(J)V

    move v1, v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->d:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/e/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->f(Ljava/lang/String;)V

    move v1, v2

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->f:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->m()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->f:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/e/u;->e(J)V

    move v1, v2

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/e/v;->h:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->n()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/e/v;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->a(Z)V

    move v1, v2

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/e/v;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/e/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->g(Ljava/lang/String;)V

    move v1, v2

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->l:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->A()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/e/v;->l:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/e/u;->o(J)V

    move v1, v2

    :cond_b
    iget-boolean v3, p1, Lcom/google/android/gms/internal/e/v;->o:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->B()Z

    move-result v4

    if-eq v3, v4, :cond_c

    iget-boolean v1, p1, Lcom/google/android/gms/internal/e/v;->o:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/u;->b(Z)V

    move v1, v2

    :cond_c
    iget-boolean v3, p1, Lcom/google/android/gms/internal/e/v;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/u;->C()Z

    move-result v4

    if-eq v3, v4, :cond_d

    iget-boolean p1, p1, Lcom/google/android/gms/internal/e/v;->p:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/u;->c(Z)V

    move v1, v2

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/u;)V

    :cond_e
    return-object v0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/e/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->q:Lcom/google/android/gms/internal/e/q;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/dc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->q:Lcom/google/android/gms/internal/e/q;

    return-object v0
.end method

.method final B()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->A:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final C()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/aa;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bk;->c(Z)Z

    move-result v0

    return v0
.end method

.method final D()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->h:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/e/ce;->P:J

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/e/ce;->P:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final F()V
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->O:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->w()Lcom/google/android/gms/internal/e/ee;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ee;->D()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/e/ce;->O:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->P()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/e/ce;->L:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-object v2, p0, Lcom/google/android/gms/internal/e/ce;->G:Ljava/util/List;

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/bd;->y()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/e/aa;->z()J

    move-result-wide v6

    sub-long v8, v2, v6

    const/4 v6, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/e/bk;->c:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v9, v2, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/ab;->B()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v7, -0x1

    if-nez v5, :cond_13

    iget-wide v9, p0, Lcom/google/android/gms/internal/e/ce;->K:J

    cmp-long v5, v9, v7

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/ab;->I()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/e/ce;->K:J

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    sget-object v7, Lcom/google/android/gms/internal/e/ap;->n:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)I

    move-result v5

    iget-object v7, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    sget-object v8, Lcom/google/android/gms/internal/e/ap;->o:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/internal/e/aa;->b(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v7}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/e/ge;

    iget-object v9, v8, Lcom/google/android/gms/internal/e/ge;->u:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v7, v8, Lcom/google/android/gms/internal/e/ge;->u:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_c

    move v8, v1

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/e/ge;

    iget-object v10, v9, Lcom/google/android/gms/internal/e/ge;->u:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v9, v9, Lcom/google/android/gms/internal/e/ge;->u:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-interface {v5, v1, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    new-instance v7, Lcom/google/android/gms/internal/e/gd;

    invoke-direct {v7}, Lcom/google/android/gms/internal/e/gd;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/e/ge;

    iput-object v8, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/e/aa;->B()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/e/aa;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    move v9, v0

    goto :goto_7

    :cond_d
    move v9, v1

    :goto_7
    move v10, v1

    :goto_8
    iget-object v11, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    array-length v11, v11

    if-ge v10, v11, :cond_f

    iget-object v11, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/e/ge;

    aput-object v12, v11, v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    aget-object v11, v11, v10

    const-wide/16 v12, 0x30a3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/e/ge;->t:Ljava/lang/Long;

    iget-object v11, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    aget-object v11, v11, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/e/ge;->f:Ljava/lang/Long;

    iget-object v11, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    aget-object v11, v11, v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/e/ge;->B:Ljava/lang/Boolean;

    if-nez v9, :cond_e

    iget-object v11, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    aget-object v11, v11, v10

    iput-object v6, v11, Lcom/google/android/gms/internal/e/ge;->I:Ljava/lang/String;

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/e/az;->a(I)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/e/ax;->a(Lcom/google/android/gms/internal/e/gd;)Ljava/lang/String;

    move-result-object v6

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/e/fo;->a(Lcom/google/android/gms/internal/e/gd;)[B

    move-result-object v11

    sget-object v5, Lcom/google/android/gms/internal/e/ap;->x:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/aq;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v0

    invoke-static {v9}, Lcom/google/android/gms/common/internal/ad;->b(Z)V

    iget-object v9, p0, Lcom/google/android/gms/internal/e/ce;->G:Ljava/util/List;

    if-eqz v9, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v8

    const-string v9, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/e/ce;->G:Ljava/util/List;

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/e/bk;->d:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    const-string v2, "?"

    iget-object v3, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    array-length v3, v3

    if-lez v3, :cond_12

    iget-object v2, v7, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v3

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v2, v8, v6}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->N:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object v8

    new-instance v13, Lcom/google/android/gms/internal/e/ch;

    invoke-direct {v13, p0, v4}, Lcom/google/android/gms/internal/e/ch;-><init>(Lcom/google/android/gms/internal/e/ce;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/dd;->Q()V

    invoke-static {v10}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/dc;->s()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/e/bh;

    const/4 v12, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/e/bh;-><init>(Lcom/google/android/gms/internal/e/bd;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/e/bf;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/e/bz;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_13
    iput-wide v7, p0, Lcom/google/android/gms/internal/e/ce;->K:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/e/aa;->z()J

    move-result-wide v4

    sub-long v6, v2, v4

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/e/ab;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/u;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/e/ce;->O:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->P()V

    throw v0
.end method

.method final G()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/e/ce;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/e/ce;->J:I

    return-void
.end method

.method final H()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->B:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->F:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/au;->B()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->c()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/e/ce;->F:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/e/ce;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->B:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V

    :cond_3
    return-void
.end method

.method protected final a(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/e/ce;->G:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/e/ce;->G:Ljava/util/List;
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/e/bk;->c:Lcom/google/android/gms/internal/e/bn;

    iget-object p4, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/e/bk;->d:Lcom/google/android/gms/internal/e/bn;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string p4, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->x()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/e/dd;->Q()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/e/ab;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array p4, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "queue"

    const-string v2, "rowid=?"

    invoke-virtual {p2, v1, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eq p2, v3, :cond_2

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
    invoke-virtual {p3}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string p3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->z()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/bd;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->F()V

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/e/ce;->K:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V

    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/internal/e/ce;->L:J

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/e/ce;->L:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lcom/google/android/gms/internal/e/ce;->L:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object p3

    const-string v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v2, v4, p2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/e/bk;->d:Lcom/google/android/gms/internal/e/bn;

    iget-object p3, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move v3, v0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/e/bk;->e:Lcom/google/android/gms/internal/e/bn;

    iget-object p2, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    sget-object p2, Lcom/google/android/gms/internal/e/ap;->W:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {p1, p4, p2}, Lcom/google/android/gms/internal/e/aa;->d(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/util/List;)V

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->N:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->P()V

    return-void

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->N:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->P()V

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v4, v3, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/internal/e/an;->d:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/e/fo;->a(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-boolean v5, v3, Lcom/google/android/gms/internal/e/v;->h:Z

    if-nez v5, :cond_1

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dd;->Q()V

    const-wide/16 v6, 0x0

    cmp-long v8, v12, v6

    const/4 v9, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-gez v8, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v8, v10, v11}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v10, v9, [Ljava/lang/String;

    aput-object v4, v10, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v15

    invoke-virtual {v5, v8, v10}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/e/y;

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v10

    const-string v11, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v14

    iget-object v9, v8, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v9, v9, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v14, v8, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v11, v15, v9, v14}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/internal/e/y;->g:Lcom/google/android/gms/internal/e/an;

    if-eqz v9, :cond_4

    new-instance v9, Lcom/google/android/gms/internal/e/an;

    iget-object v10, v8, Lcom/google/android/gms/internal/e/y;->g:Lcom/google/android/gms/internal/e/an;

    invoke-direct {v9, v10, v12, v13}, Lcom/google/android/gms/internal/e/an;-><init>(Lcom/google/android/gms/internal/e/an;J)V

    invoke-direct {v1, v9, v3}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v8, v8, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v9, v4, v8}, Lcom/google/android/gms/internal/e/ab;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dd;->Q()V

    cmp-long v8, v12, v6

    if-gez v8, :cond_6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_6
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v10, v9

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-virtual {v5, v8, v10}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/e/y;

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v10

    const-string v11, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v15

    iget-object v6, v9, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v6, v6, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v10, v11, v14, v6, v7}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v9, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    if-eqz v6, :cond_8

    iget-object v6, v9, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v7, v7, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/e/ab;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_9
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_a

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/internal/e/an;

    new-instance v9, Lcom/google/android/gms/internal/e/an;

    invoke-direct {v9, v7, v12, v13}, Lcom/google/android/gms/internal/e/an;-><init>(Lcom/google/android/gms/internal/e/an;J)V

    invoke-direct {v1, v9, v3}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dd;->Q()V

    const-wide/16 v7, 0x0

    cmp-long v9, v12, v7

    if-gez v9, :cond_b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v7

    const-string v8, "Invalid time querying triggered conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/dc;->o()Lcom/google/android/gms/internal/e/ax;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/e/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v8, v4, v5, v6}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    const-string v7, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v8, v14

    const/4 v4, 0x1

    aput-object v6, v8, v4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v8, v6

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/gms/internal/e/y;

    if-eqz v11, :cond_c

    iget-object v5, v11, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    new-instance v9, Lcom/google/android/gms/internal/e/fn;

    iget-object v6, v11, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iget-object v7, v11, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v16

    move-object v5, v9

    move-object v14, v9

    move-wide v9, v12

    move-object/from16 v17, v4

    move-object v4, v11

    move-object/from16 v11, v16

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/fn;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "User property triggered"

    iget-object v7, v4, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v5

    const-string v6, "Too many active user properties, ignoring"

    iget-object v7, v4, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-object v5, v4, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/e/fl;

    invoke-direct {v5, v14}, Lcom/google/android/gms/internal/e/fl;-><init>(Lcom/google/android/gms/internal/e/fn;)V

    iput-object v5, v4, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/e/y;->e:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/y;)Z

    move-object/from16 v4, v17

    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_10

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/internal/e/an;

    new-instance v6, Lcom/google/android/gms/internal/e/an;

    invoke-direct {v6, v5, v12, v13}, Lcom/google/android/gms/internal/e/an;-><init>(Lcom/google/android/gms/internal/e/an;J)V

    invoke-direct {v1, v6, v3}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw v2
.end method

.method final a(Lcom/google/android/gms/internal/e/an;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/u;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "_ui"

    iget-object v5, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/internal/e/v;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->l()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->m()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->n()Z

    move-result v14

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->f()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->A()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->B()Z

    move-result v23

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->C()Z

    move-result v24

    const/16 v25, 0x0

    move-object v2, v15

    move-object/from16 v26, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/internal/e/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/e/dd;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/e/ce;->I:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/e/ce;->I:I

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p2, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/e/v;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/fo;->d(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v3, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/fo;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    iget-object v3, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

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

    :cond_5
    move v11, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/fo;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/e/fn;

    iget-object v4, p2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/e/fl;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/internal/e/fl;->b:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string v2, "Setting user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/fn;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->y()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/e/v;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->Q()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "apps"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "main_event_params"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v4, v2

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/e/v;->h:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/e/v;->o:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/e/v;->p:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/e/ce;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/e/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v2, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/aa;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/e/v;->h:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/e/ce;->d(Lcom/google/android/gms/internal/e/v;)V

    :cond_2
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/e/y;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/e/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/y;Lcom/google/android/gms/internal/e/v;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/e/y;Lcom/google/android/gms/internal/e/v;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p2, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/e/v;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/e/y;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/e/y;-><init>(Lcom/google/android/gms/internal/e/y;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/internal/e/y;->e:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v3, v3, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/ab;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/y;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v5, v5, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/e/y;->e:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/e/y;->d:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/e/y;->d:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/e/y;->h:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/e/y;->h:J

    iget-object v2, v1, Lcom/google/android/gms/internal/e/y;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/e/y;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    iput-object v2, v0, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/e/y;->e:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/e/y;->e:Z

    new-instance v2, Lcom/google/android/gms/internal/e/fl;

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v4, v3, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-wide v5, v3, Lcom/google/android/gms/internal/e/fl;->b:J

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v8, v1, Lcom/google/android/gms/internal/e/fl;->c:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/e/fl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/e/fl;

    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v4, v1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/e/y;->d:J

    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v8, v1, Lcom/google/android/gms/internal/e/fl;->c:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/e/fl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/e/y;->e:Z

    move p1, v2

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/e/y;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    new-instance v9, Lcom/google/android/gms/internal/e/fn;

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/e/fl;->b:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/fn;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/e/an;

    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->i:Lcom/google/android/gms/internal/e/an;

    iget-wide v2, v0, Lcom/google/android/gms/internal/e/y;->d:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/e/an;-><init>(Lcom/google/android/gms/internal/e/an;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/y;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v3, v3, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v3, v3, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/fl;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw p1
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->H:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->H:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->H:Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

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

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/e/u;->h(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/u;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/e/by;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/e/bk;->d:Lcom/google/android/gms/internal/e/bn;

    iget-object p3, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/e/bk;->e:Lcom/google/android/gms/internal/e/bn;

    iget-object p2, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/e/by;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->P()V

    return-void

    :cond_c
    :goto_7
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/e/by;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/e/fy;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/e/by;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_d

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/u;->g(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/u;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->B()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->s()Lcom/google/android/gms/internal/e/bd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/bd;->y()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->M()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->F()V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/ce;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->P()V

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V

    return-void
.end method

.method protected final a()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/e/ce;->D:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/e/ce;->D:J

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/e/ce;->D:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/fo;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/e/fo;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/bu;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/ey;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->C:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/au;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/fo;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/e/ce;->C:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final b()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->c:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->c:Lcom/google/android/gms/internal/e/bn;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->h:Lcom/google/android/gms/internal/e/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bn;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/internal/e/ce;->P:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->h:Lcom/google/android/gms/internal/e/bn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/e/ce;->P:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->a()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/fo;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/fo;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/bu;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/e/ey;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/au;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bk;->y()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/au;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bk;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/au;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->C()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bk;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->t:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ee;->E()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->t:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ee;->C()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/au;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bk;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->h:Lcom/google/android/gms/internal/e/bn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/e/ce;->P:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bn;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bk;->j:Lcom/google/android/gms/internal/e/bp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bp;->a(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->l()Lcom/google/android/gms/internal/e/df;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/e/bk;->j:Lcom/google/android/gms/internal/e/bp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/df;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/au;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->C()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/bk;->E()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/aa;->x()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/bk;->d(Z)V

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->y()Lcom/google/android/gms/internal/e/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/au;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/aa;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->l()Lcom/google/android/gms/internal/e/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/df;->G()V

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->w()Lcom/google/android/gms/internal/e/ee;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/ee;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/e/ce;->N()V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p2, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/e/v;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Removing user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ab;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw p1
.end method

.method final b(Lcom/google/android/gms/internal/e/v;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/e/y;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/e/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/y;Lcom/google/android/gms/internal/e/v;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/internal/e/y;Lcom/google/android/gms/internal/e/v;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    iget-object v0, p2, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/e/v;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v2, v2, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/ab;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/y;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v5, v5, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v3, v3, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/ab;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/e/y;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object v3, v3, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    iget-object v2, v2, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ak;->b()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    iget-object v3, v3, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/e/y;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/e/y;->k:Lcom/google/android/gms/internal/e/an;

    iget-wide v5, p1, Lcom/google/android/gms/internal/e/an;->d:J

    const/4 p1, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/e/fo;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/e/an;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/e/y;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->p()Lcom/google/android/gms/internal/e/ax;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/e/y;->c:Lcom/google/android/gms/internal/e/fl;

    iget-object p1, p1, Lcom/google/android/gms/internal/e/fl;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/e/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/e/an;Ljava/lang/String;)[B
    .locals 32

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-static {}, Lcom/google/android/gms/internal/e/ce;->E()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/e/gd;

    invoke-direct {v8}, Lcom/google/android/gms/internal/e/gd;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v6, 0x0

    if-nez v9, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v1, v6, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v11

    goto/16 :goto_f

    :cond_0
    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->n()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v2, :cond_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_2

    :try_start_5
    const-string v2, "ecommerce_purchase"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    :cond_2
    :try_start_6
    invoke-direct {v11, v10, v1}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;Lcom/google/android/gms/internal/e/an;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v2, :cond_3

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :try_start_8
    iget-object v2, v11, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/e/aa;->d(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_7

    :try_start_9
    const-string v7, "_e"

    iget-object v12, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/ak;->a()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, v1, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    const-string v12, "_et"

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/e/ak;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v7

    const-string v12, "The engagement event does not include duration. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    :goto_1
    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    const-string v7, "_et"

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/e/ak;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v7

    const-string v12, "The engagement event does not contain any parameters. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :cond_7
    :goto_3
    :try_start_a
    new-instance v7, Lcom/google/android/gms/internal/e/ge;

    invoke-direct {v7}, Lcom/google/android/gms/internal/e/ge;-><init>()V

    const/4 v13, 0x1

    new-array v12, v13, [Lcom/google/android/gms/internal/e/ge;

    aput-object v7, v12, v6

    iput-object v12, v8, Lcom/google/android/gms/internal/e/gd;->c:[Lcom/google/android/gms/internal/e/ge;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->c:Ljava/lang/Integer;

    const-string v12, "android"

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->k:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->k()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->p:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->r:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v14

    const-wide/32 v16, -0x80000000

    cmp-long v12, v14, v16

    const/4 v13, 0x0

    if-nez v12, :cond_8

    move-object v12, v13

    goto :goto_4

    :cond_8
    long-to-int v12, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_4
    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->E:Ljava/lang/Integer;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->l()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->s:Ljava/lang/Long;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->A:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->m()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->x:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->C()Z

    move-result v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v12, :cond_9

    :try_start_b
    invoke-static {}, Lcom/google/android/gms/internal/e/aa;->B()Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, v11, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v14, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/e/aa;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    iput-object v13, v7, Lcom/google/android/gms/internal/e/ge;->I:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_9
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->d()Lcom/google/android/gms/internal/e/bk;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/e/bk;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->B()Z

    move-result v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    :try_start_d
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iput-object v14, v7, Lcom/google/android/gms/internal/e/ge;->u:Ljava/lang/String;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->v:Ljava/lang/Boolean;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_a
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/e/dd;->Q()V

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->m:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/e/dd;->Q()V

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->l:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/e/ah;->x()J

    move-result-wide v14

    long-to-int v12, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->o:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->x()Lcom/google/android/gms/internal/e/ah;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/e/ah;->y()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->n:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->c()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->w:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->f()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/e/ge;->D:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Lcom/google/android/gms/internal/e/gg;

    iput-object v14, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v2, :cond_e

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const-string v6, "_lte"

    invoke-virtual {v14, v15, v6}, Lcom/google/android/gms/internal/e/ab;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/fn;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v14, v6, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    if-nez v14, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-lez v16, :cond_c

    new-instance v14, Lcom/google/android/gms/internal/e/fn;

    iget-object v15, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v13, v11, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v13}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v21

    iget-object v6, v6, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    add-long v4, v16, v23

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_6

    :cond_c
    move-object v14, v6

    goto :goto_6

    :cond_d
    :goto_5
    new-instance v4, Lcom/google/android/gms/internal/e/fn;

    iget-object v15, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    const-string v16, "auto"

    const-string v17, "_lte"

    iget-object v5, v11, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v18

    move-object v14, v4

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/e/fn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v14, v4

    goto :goto_6

    :cond_e
    const/4 v14, 0x0

    :goto_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    :try_start_10
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-ge v4, v6, :cond_10

    :try_start_11
    new-instance v6, Lcom/google/android/gms/internal/e/gg;

    invoke-direct {v6}, Lcom/google/android/gms/internal/e/gg;-><init>()V

    iget-object v13, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    aput-object v6, v13, v4

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/e/fn;

    iget-object v13, v13, Lcom/google/android/gms/internal/e/fn;->c:Ljava/lang/String;

    iput-object v13, v6, Lcom/google/android/gms/internal/e/gg;->d:Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/e/fn;

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    iget-wide v8, v13, Lcom/google/android/gms/internal/e/fn;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/gms/internal/e/gg;->c:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v8

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/e/fn;

    iget-object v9, v9, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/internal/e/fo;->a(Lcom/google/android/gms/internal/e/gg;Ljava/lang/Object;)V

    if-eqz v2, :cond_f

    const-string v8, "_lte"

    iget-object v9, v6, Lcom/google/android/gms/internal/e/gg;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v5, v14, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    iput-object v5, v6, Lcom/google/android/gms/internal/e/gg;->f:Ljava/lang/Long;

    iget-object v5, v11, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v6, Lcom/google/android/gms/internal/e/gg;->c:Ljava/lang/Long;

    move-object v5, v6

    :cond_f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    goto :goto_7

    :cond_10
    move-object/from16 v27, v8

    move-object/from16 v28, v9

    if-eqz v2, :cond_11

    if-nez v5, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/e/gg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/e/gg;-><init>()V

    const-string v4, "_lte"

    iput-object v4, v2, Lcom/google/android/gms/internal/e/gg;->d:Ljava/lang/String;

    iget-object v4, v11, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/e/gg;->c:Ljava/lang/Long;

    iget-object v4, v14, Lcom/google/android/gms/internal/e/fn;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v2, Lcom/google/android/gms/internal/e/gg;->f:Ljava/lang/Long;

    iget-object v4, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v5, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/e/gg;

    iput-object v4, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v4, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v5, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput-object v2, v4, v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    :cond_11
    const/4 v6, 0x1

    :goto_8
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const-wide/16 v4, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_12

    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/fn;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_12
    :try_start_14
    iget-object v2, v1, Lcom/google/android/gms/internal/e/an;->b:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ak;->b()Landroid/os/Bundle;

    move-result-object v8

    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const-wide/16 v12, 0x1

    if-eqz v2, :cond_13

    :try_start_15
    const-string v2, "_c"

    invoke-virtual {v8, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    const-string v2, "_r"

    invoke-virtual {v8, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_13
    :try_start_16
    const-string v2, "_o"

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->c:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/internal/e/ge;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/fo;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v2, :cond_14

    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    const-string v3, "_dbg"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v3, v9}, Lcom/google/android/gms/internal/e/fo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    const-string v3, "_r"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v3, v9}, Lcom/google/android/gms/internal/e/fo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_14
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-nez v2, :cond_15

    :try_start_19
    new-instance v2, Lcom/google/android/gms/internal/e/aj;

    iget-object v14, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    iget-wide v12, v1, Lcom/google/android/gms/internal/e/an;->d:J

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v19, v12

    move-object v12, v2

    move v9, v6

    const/16 v26, 0x0

    move-object v13, v10

    invoke-direct/range {v12 .. v25}, Lcom/google/android/gms/internal/e/aj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/aj;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-wide v12, v4

    goto :goto_9

    :cond_15
    move v9, v6

    const/16 v26, 0x0

    :try_start_1a
    iget-wide v12, v2, Lcom/google/android/gms/internal/e/aj;->e:J

    iget-wide v14, v1, Lcom/google/android/gms/internal/e/an;->d:J

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/e/aj;->a(J)Lcom/google/android/gms/internal/e/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/aj;->a()Lcom/google/android/gms/internal/e/aj;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/aj;)V

    :goto_9
    new-instance v14, Lcom/google/android/gms/internal/e/ai;

    iget-object v3, v1, Lcom/google/android/gms/internal/e/an;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/e/an;->a:Ljava/lang/String;

    iget-wide v1, v1, Lcom/google/android/gms/internal/e/an;->d:J
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-wide v15, v1

    move-object v1, v14

    move-object v2, v11

    move-wide/from16 v17, v4

    move-object v4, v10

    move-object v5, v6

    move-object v11, v7

    move-object/from16 v29, v14

    const/4 v14, 0x0

    move-wide v6, v15

    move-object/from16 v16, v8

    move v14, v9

    move-object/from16 v15, v27

    move-object/from16 v30, v28

    move-wide v8, v12

    move-object/from16 v10, v16

    :try_start_1b
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/e/ai;-><init>(Lcom/google/android/gms/internal/e/ce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/internal/e/gb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/e/gb;-><init>()V

    new-array v2, v14, [Lcom/google/android/gms/internal/e/gb;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v11, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    move-object/from16 v2, v29

    iget-wide v3, v2, Lcom/google/android/gms/internal/e/ai;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    iget-object v3, v2, Lcom/google/android/gms/internal/e/ai;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/gb;->d:Ljava/lang/String;

    iget-wide v3, v2, Lcom/google/android/gms/internal/e/ai;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/e/gb;->f:Ljava/lang/Long;

    iget-object v3, v2, Lcom/google/android/gms/internal/e/ai;->e:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/ak;->a()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/e/gc;

    iput-object v3, v1, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    iget-object v3, v2, Lcom/google/android/gms/internal/e/ai;->e:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/ak;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/e/gc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/e/gc;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/e/gb;->c:[Lcom/google/android/gms/internal/e/gc;

    add-int/lit8 v8, v4, 0x1

    aput-object v6, v7, v4

    iput-object v5, v6, Lcom/google/android/gms/internal/e/gc;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/e/ai;->e:Lcom/google/android/gms/internal/e/ak;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/e/ak;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    move-object v7, v11

    move-object/from16 v5, p0

    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v9

    invoke-virtual {v9, v6, v4}, Lcom/google/android/gms/internal/e/fo;->a(Lcom/google/android/gms/internal/e/gc;Ljava/lang/Object;)V

    move-object v11, v7

    move v4, v8

    goto :goto_a

    :cond_16
    move-object v7, v11

    move-object/from16 v2, v30

    move-object/from16 v5, p0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/google/android/gms/internal/e/ge;->e:[Lcom/google/android/gms/internal/e/gg;

    iget-object v6, v7, Lcom/google/android/gms/internal/e/ge;->d:[Lcom/google/android/gms/internal/e/gb;

    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/gms/internal/e/ce;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/e/gg;[Lcom/google/android/gms/internal/e/gb;)[Lcom/google/android/gms/internal/e/ga;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/e/ge;->C:[Lcom/google/android/gms/internal/e/ga;

    iget-object v3, v1, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    iput-object v3, v7, Lcom/google/android/gms/internal/e/ge;->g:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/gb;->e:Ljava/lang/Long;

    iput-object v1, v7, Lcom/google/android/gms/internal/e/ge;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->h()J

    move-result-wide v3

    cmp-long v1, v3, v17

    if-eqz v1, :cond_17

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_b

    :cond_17
    move-object/from16 v13, v26

    :goto_b
    iput-object v13, v7, Lcom/google/android/gms/internal/e/ge;->j:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->g()J

    move-result-wide v8

    cmp-long v1, v8, v17

    if-nez v1, :cond_18

    goto :goto_c

    :cond_18
    move-wide v3, v8

    :goto_c
    cmp-long v1, v3, v17

    if-eqz v1, :cond_19

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_d

    :cond_19
    move-object/from16 v13, v26

    :goto_d
    iput-object v13, v7, Lcom/google/android/gms/internal/e/ge;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->r()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/u;->o()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/e/ge;->y:Ljava/lang/Integer;

    const-wide/16 v3, 0x30a3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/e/ge;->t:Ljava/lang/Long;

    iget-object v1, v5, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/e/ge;->f:Ljava/lang/Long;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v7, Lcom/google/android/gms/internal/e/ge;->B:Ljava/lang/Boolean;

    iget-object v1, v7, Lcom/google/android/gms/internal/e/ge;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/e/u;->a(J)V

    iget-object v1, v7, Lcom/google/android/gms/internal/e/ge;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/e/u;->b(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/u;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ab;->z()V

    :try_start_1d
    invoke-virtual {v15}, Lcom/google/android/gms/internal/e/j;->d()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/e/b;->a([BII)Lcom/google/android/gms/internal/e/b;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/e/j;->a(Lcom/google/android/gms/internal/e/b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/b;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->o()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/e/fo;->a([B)[B

    move-result-object v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v26

    :catchall_1
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v5, v11

    :goto_e
    move-object v1, v0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw v1
.end method

.method public final c()Lcom/google/android/gms/internal/e/aa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/e/v;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/e/cg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/e/cg;-><init>(Lcom/google/android/gms/internal/e/ce;Lcom/google/android/gms/internal/e/v;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bz;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Lcom/google/android/gms/internal/e/bk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->d:Lcom/google/android/gms/internal/e/bk;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/dc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->d:Lcom/google/android/gms/internal/e/bk;

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/e/v;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/e/u;->g(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/e/ab;->a(Lcom/google/android/gms/internal/e/u;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->i()Lcom/google/android/gms/internal/e/by;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/e/by;->d(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, v2, Lcom/google/android/gms/internal/e/v;->h:Z

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    return-void

    :cond_2
    iget-wide v6, v2, Lcom/google/android/gms/internal/e/v;->m:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    :cond_3
    iget v3, v2, Lcom/google/android/gms/internal/e/v;->n:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v10, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v9, v10, v3}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v14

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/ab;->x()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/e/ab;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/e/u;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->d()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/internal/e/v;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/az;->A()Lcom/google/android/gms/internal/e/bb;

    move-result-object v9

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/dd;->Q()V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/ab;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v11, v15, [Ljava/lang/String;

    aput-object v8, v11, v14

    const-string v12, "events"

    const-string v13, "app_id=?"

    invoke-virtual {v10, v12, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v14

    const-string v13, "user_attributes"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "conditional_properties"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "apps"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "raw_events"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "raw_events_metadata"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "event_filters"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "property_filters"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "audience_filter_values"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    if-lez v12, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v10

    const-string v11, "Deleted application data. app, records"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v12}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v9

    const-string v11, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v11, v8, v10}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    move-object/from16 v8, v16

    :cond_6
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v9

    const-wide/32 v11, -0x80000000

    cmp-long v13, v9, v11

    if-eqz v13, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->j()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/google/android/gms/internal/e/v;->j:J

    cmp-long v13, v9, v11

    if-eqz v13, :cond_8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/google/android/gms/internal/e/an;

    const-string v10, "_au"

    new-instance v11, Lcom/google/android/gms/internal/e/ak;

    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/e/ak;-><init>(Landroid/os/Bundle;)V

    const-string v12, "auto"

    move-object v8, v14

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/an;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/e/ak;Ljava/lang/String;J)V

    :goto_1
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/internal/e/v;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/u;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/google/android/gms/internal/e/an;

    const-string v10, "_au"

    new-instance v11, Lcom/google/android/gms/internal/e/ak;

    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/e/ak;-><init>(Landroid/os/Bundle;)V

    const-string v12, "auto"

    move-object v8, v14

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/an;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/e/ak;Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/e/ce;->e(Lcom/google/android/gms/internal/e/v;)Lcom/google/android/gms/internal/e/u;

    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    const-string v10, "_f"

    :goto_3
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/e/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/e/aj;

    move-result-object v8

    goto :goto_4

    :cond_9
    if-ne v3, v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    const-string v10, "_v"

    goto :goto_3

    :cond_a
    move-object/from16 v8, v16

    :goto_4
    if-nez v8, :cond_16

    const-wide/32 v8, 0x36ee80

    div-long v10, v6, v8

    const-wide/16 v13, 0x1

    add-long v17, v13, v10

    mul-long v8, v8, v17

    if-nez v3, :cond_13

    new-instance v3, Lcom/google/android/gms/internal/e/fl;

    const-string v10, "_fot"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v17, "auto"

    move-object v8, v3

    move-object v9, v10

    move-wide v10, v6

    move-wide v4, v13

    move-object/from16 v13, v17

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/fl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_c"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_r"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_uwa"

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_pfo"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_sys"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_sysu"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v8, v1, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/e/aa;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, v2, Lcom/google/android/gms/internal/e/v;->q:Z

    if-eqz v8, :cond_b

    const-string v8, "_dac"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_b
    iget-object v8, v1, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v8

    const-string v9, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v10, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :cond_c
    :try_start_3
    iget-object v8, v1, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v9

    const-string v10, "Package info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v16

    :goto_5
    if-eqz v8, :cond_f

    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_f

    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v11, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v8, v9, v11

    if-eqz v8, :cond_d

    const-string v8, "_uwa"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    move v8, v15

    :goto_6
    new-instance v14, Lcom/google/android/gms/internal/e/fl;

    const-string v9, "_fi"

    if-eqz v8, :cond_e

    move-wide v10, v4

    goto :goto_7

    :cond_e
    const-wide/16 v10, 0x0

    :goto_7
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "auto"

    move-object v8, v14

    move-wide v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/fl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    :try_start_5
    iget-object v8, v1, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/d/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->e()Lcom/google/android/gms/internal/e/az;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v9

    const-string v10, "Application info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/e/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v16

    :goto_8
    if-eqz v8, :cond_11

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v15

    if-eqz v9, :cond_10

    const-string v9, "_sys"

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_11

    const-string v8, "_sysu"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_11
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/e/dd;->Q()V

    const-string v10, "first_open_count"

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/e/ab;->h(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-ltz v12, :cond_12

    const-string v10, "_pfo"

    invoke-virtual {v3, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_12
    new-instance v14, Lcom/google/android/gms/internal/e/an;

    const-string v9, "_f"

    new-instance v10, Lcom/google/android/gms/internal/e/ak;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/e/ak;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v14

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/an;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/e/ak;Ljava/lang/String;J)V

    :goto_a
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_b

    :cond_13
    move-wide v4, v13

    if-ne v3, v15, :cond_15

    new-instance v3, Lcom/google/android/gms/internal/e/fl;

    const-string v10, "_fvt"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "auto"

    move-object v8, v3

    move-object v9, v10

    move-wide v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/fl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/fl;Lcom/google/android/gms/internal/e/v;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->g()Lcom/google/android/gms/internal/e/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/dc;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->B()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_c"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_r"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v8, v1, Lcom/google/android/gms/internal/e/ce;->c:Lcom/google/android/gms/internal/e/aa;

    iget-object v9, v2, Lcom/google/android/gms/internal/e/v;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/e/aa;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-boolean v8, v2, Lcom/google/android/gms/internal/e/v;->q:Z

    if-eqz v8, :cond_14

    const-string v8, "_dac"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_14
    new-instance v14, Lcom/google/android/gms/internal/e/an;

    const-string v9, "_v"

    new-instance v10, Lcom/google/android/gms/internal/e/ak;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/e/ak;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v14

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/an;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/e/ak;Ljava/lang/String;J)V

    goto :goto_a

    :cond_15
    :goto_b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_et"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v4, Lcom/google/android/gms/internal/e/an;

    const-string v9, "_e"

    new-instance v10, Lcom/google/android/gms/internal/e/ak;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/e/ak;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/an;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/e/ak;Ljava/lang/String;J)V

    :goto_c
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/an;Lcom/google/android/gms/internal/e/v;)V

    goto :goto_d

    :cond_16
    iget-boolean v3, v2, Lcom/google/android/gms/internal/e/v;->i:Z

    if-eqz v3, :cond_17

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/e/an;

    const-string v9, "_cd"

    new-instance v10, Lcom/google/android/gms/internal/e/ak;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/e/ak;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/e/an;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/e/ak;Ljava/lang/String;J)V

    goto :goto_c

    :cond_17
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/ab;->z()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/e/ce;->q()Lcom/google/android/gms/internal/e/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/ab;->z()V

    throw v2
.end method

.method public final e()Lcom/google/android/gms/internal/e/az;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->e:Lcom/google/android/gms/internal/e/az;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->e:Lcom/google/android/gms/internal/e/az;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/e/az;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->e:Lcom/google/android/gms/internal/e/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->e:Lcom/google/android/gms/internal/e/az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dd;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->e:Lcom/google/android/gms/internal/e/az;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/e/bz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->f:Lcom/google/android/gms/internal/e/bz;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->f:Lcom/google/android/gms/internal/e/bz;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/e/fd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->g:Lcom/google/android/gms/internal/e/fd;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->g:Lcom/google/android/gms/internal/e/fd;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/e/by;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->h:Lcom/google/android/gms/internal/e/by;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->h:Lcom/google/android/gms/internal/e/by;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/e/bq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->z:Lcom/google/android/gms/internal/e/bq;

    return-object v0
.end method

.method final k()Lcom/google/android/gms/internal/e/bz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->f:Lcom/google/android/gms/internal/e/bz;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/e/df;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->p:Lcom/google/android/gms/internal/e/df;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->p:Lcom/google/android/gms/internal/e/df;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->i:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final n()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->j:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/e/fo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->k:Lcom/google/android/gms/internal/e/fo;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/dc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->k:Lcom/google/android/gms/internal/e/fo;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/e/ax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->l:Lcom/google/android/gms/internal/e/ax;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/dc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->l:Lcom/google/android/gms/internal/e/ax;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->r:Lcom/google/android/gms/internal/e/ab;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->r:Lcom/google/android/gms/internal/e/ab;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/e/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->s:Lcom/google/android/gms/internal/e/av;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->s:Lcom/google/android/gms/internal/e/av;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/internal/e/bd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->m:Lcom/google/android/gms/internal/e/bd;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->m:Lcom/google/android/gms/internal/e/bd;

    return-object v0
.end method

.method public final t()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/common/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->n:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/e/ea;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->o:Lcom/google/android/gms/internal/e/ea;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->o:Lcom/google/android/gms/internal/e/ea;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/internal/e/ee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->t:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->t:Lcom/google/android/gms/internal/e/ee;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/e/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->u:Lcom/google/android/gms/internal/e/ah;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->u:Lcom/google/android/gms/internal/e/ah;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/internal/e/au;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->v:Lcom/google/android/gms/internal/e/au;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->v:Lcom/google/android/gms/internal/e/au;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/e/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->y:Lcom/google/android/gms/internal/e/x;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ce;->b(Lcom/google/android/gms/internal/e/dd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ce;->y:Lcom/google/android/gms/internal/e/x;

    return-object v0
.end method
