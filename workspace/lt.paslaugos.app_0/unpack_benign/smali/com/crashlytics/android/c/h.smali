.class Lcom/crashlytics/android/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/c/h$f;,
        Lcom/crashlytics/android/c/h$j;,
        Lcom/crashlytics/android/c/h$g;,
        Lcom/crashlytics/android/c/h$h;,
        Lcom/crashlytics/android/c/h$i;,
        Lcom/crashlytics/android/c/h$d;,
        Lcom/crashlytics/android/c/h$b;,
        Lcom/crashlytics/android/c/h$e;,
        Lcom/crashlytics/android/c/h$a;,
        Lcom/crashlytics/android/c/h$k;,
        Lcom/crashlytics/android/c/h$c;
    }
.end annotation


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/io/FilenameFilter;

.field static final c:Ljava/io/FileFilter;

.field static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:[Ljava/lang/String;


# instance fields
.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Lcom/crashlytics/android/c/i;

.field private final k:Lcom/crashlytics/android/c/g;

.field private final l:La/a/a/a/a/e/e;

.field private final m:La/a/a/a/a/b/p;

.field private final n:Lcom/crashlytics/android/c/ab;

.field private final o:La/a/a/a/a/f/a;

.field private final p:Lcom/crashlytics/android/c/a;

.field private final q:Lcom/crashlytics/android/c/h$f;

.field private final r:Lcom/crashlytics/android/c/u;

.field private final s:Lcom/crashlytics/android/c/af$c;

.field private final t:Lcom/crashlytics/android/c/af$b;

.field private final u:Lcom/crashlytics/android/c/q;

.field private final v:Lcom/crashlytics/android/c/ai;

.field private final w:Ljava/lang/String;

.field private final x:Lcom/crashlytics/android/a/o;

.field private final y:Z

.field private z:Lcom/crashlytics/android/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/crashlytics/android/c/h$1;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/c/h$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/c/h;->a:Ljava/io/FilenameFilter;

    new-instance v0, Lcom/crashlytics/android/c/h$10;

    invoke-direct {v0}, Lcom/crashlytics/android/c/h$10;-><init>()V

    sput-object v0, Lcom/crashlytics/android/c/h;->b:Ljava/io/FilenameFilter;

    new-instance v0, Lcom/crashlytics/android/c/h$17;

    invoke-direct {v0}, Lcom/crashlytics/android/c/h$17;-><init>()V

    sput-object v0, Lcom/crashlytics/android/c/h;->c:Ljava/io/FileFilter;

    new-instance v0, Lcom/crashlytics/android/c/h$18;

    invoke-direct {v0}, Lcom/crashlytics/android/c/h$18;-><init>()V

    sput-object v0, Lcom/crashlytics/android/c/h;->d:Ljava/util/Comparator;

    new-instance v0, Lcom/crashlytics/android/c/h$19;

    invoke-direct {v0}, Lcom/crashlytics/android/c/h$19;-><init>()V

    sput-object v0, Lcom/crashlytics/android/c/h;->e:Ljava/util/Comparator;

    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/c/h;->f:Ljava/util/regex/Pattern;

    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/c/h;->g:Ljava/util/Map;

    const-string v0, "SessionUser"

    const-string v1, "SessionApp"

    const-string v2, "SessionOS"

    const-string v3, "SessionDevice"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/c/h;->h:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/c/i;Lcom/crashlytics/android/c/g;La/a/a/a/a/e/e;La/a/a/a/a/b/p;Lcom/crashlytics/android/c/ab;La/a/a/a/a/f/a;Lcom/crashlytics/android/c/a;Lcom/crashlytics/android/c/ak;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/c/h;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->k:Lcom/crashlytics/android/c/g;

    iput-object p3, p0, Lcom/crashlytics/android/c/h;->l:La/a/a/a/a/e/e;

    iput-object p4, p0, Lcom/crashlytics/android/c/h;->m:La/a/a/a/a/b/p;

    iput-object p5, p0, Lcom/crashlytics/android/c/h;->n:Lcom/crashlytics/android/c/ab;

    iput-object p6, p0, Lcom/crashlytics/android/c/h;->o:La/a/a/a/a/f/a;

    iput-object p7, p0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    invoke-interface {p8}, Lcom/crashlytics/android/c/ak;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->w:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/crashlytics/android/c/h;->y:Z

    invoke-virtual {p1}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/crashlytics/android/c/h$f;

    invoke-direct {p2, p6}, Lcom/crashlytics/android/c/h$f;-><init>(La/a/a/a/a/f/a;)V

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->q:Lcom/crashlytics/android/c/h$f;

    new-instance p2, Lcom/crashlytics/android/c/u;

    iget-object p3, p0, Lcom/crashlytics/android/c/h;->q:Lcom/crashlytics/android/c/h$f;

    invoke-direct {p2, p1, p3}, Lcom/crashlytics/android/c/u;-><init>(Landroid/content/Context;Lcom/crashlytics/android/c/u$a;)V

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->r:Lcom/crashlytics/android/c/u;

    new-instance p2, Lcom/crashlytics/android/c/h$h;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/crashlytics/android/c/h$h;-><init>(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/h$1;)V

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->s:Lcom/crashlytics/android/c/af$c;

    new-instance p2, Lcom/crashlytics/android/c/h$i;

    invoke-direct {p2, p0, p3}, Lcom/crashlytics/android/c/h$i;-><init>(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/h$1;)V

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->t:Lcom/crashlytics/android/c/af$b;

    new-instance p2, Lcom/crashlytics/android/c/q;

    invoke-direct {p2, p1}, Lcom/crashlytics/android/c/q;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->u:Lcom/crashlytics/android/c/q;

    new-instance p2, Lcom/crashlytics/android/c/x;

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/crashlytics/android/c/ai;

    new-instance p4, Lcom/crashlytics/android/c/ad;

    const/16 p5, 0xa

    invoke-direct {p4, p5}, Lcom/crashlytics/android/c/ad;-><init>(I)V

    aput-object p4, p3, v1

    const/16 p4, 0x400

    invoke-direct {p2, p4, p3}, Lcom/crashlytics/android/c/x;-><init>(I[Lcom/crashlytics/android/c/ai;)V

    iput-object p2, p0, Lcom/crashlytics/android/c/h;->v:Lcom/crashlytics/android/c/ai;

    invoke-static {p1}, Lcom/crashlytics/android/a/j;->a(Landroid/content/Context;)Lcom/crashlytics/android/a/o;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/c/h;->x:Lcom/crashlytics/android/a/o;

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/h;)Lcom/crashlytics/android/c/i;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    return-object p0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(J)V
    .locals 3

    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-interface {p1, p2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/crashlytics/android/c/h;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->x:Lcom/crashlytics/android/a/o;

    if-eqz v0, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Logging Crashlytics event to Firebase"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_r"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fatal"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/crashlytics/android/c/h;->x:Lcom/crashlytics/android/a/o;

    const-string p2, "clx"

    const-string v1, "_ae"

    invoke-interface {p1, p2, v1, v0}, Lcom/crashlytics/android/a/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics"

    invoke-interface {p1, p2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(La/a/a/a/a/g/p;Z)V
    .locals 2

    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/h;->b(I)V

    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->n()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-gt v1, p2, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "No open sessions to be closed."

    invoke-interface {p1, p2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    aget-object v1, v0, p2

    invoke-static {v1}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/c/h;->f(Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "Unable to close session. Settings are not loaded."

    invoke-interface {p1, p2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget p1, p1, La/a/a/a/a/g/p;->c:I

    invoke-direct {p0, v0, p2, p1}, Lcom/crashlytics/android/c/h;->a([Ljava/io/File;II)V

    return-void
.end method

.method private a(Lcom/crashlytics/android/c/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/crashlytics/android/c/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Error closing session file stream in the presence of an exception"

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static a(Lcom/crashlytics/android/c/e;Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p0

    const-string v0, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, v1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {v0, p0, p1}, Lcom/crashlytics/android/c/h;->a(Ljava/io/InputStream;Lcom/crashlytics/android/c/e;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "Failed to close file input stream."

    invoke-static {v0, p0}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_0
    const-string p1, "Failed to close file input stream."

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/crashlytics/android/c/e;Ljava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/crashlytics/android/c/h;->h:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Lcom/crashlytics/android/c/h$c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".cls"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/c/h$c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data for session ID "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data for session ID "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v5, v2

    invoke-static {p1, v4}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/e;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 24

    move-object/from16 v0, p0

    new-instance v5, Lcom/crashlytics/android/c/aj;

    iget-object v1, v0, Lcom/crashlytics/android/c/h;->v:Lcom/crashlytics/android/c/ai;

    move-object/from16 v2, p4

    invoke-direct {v5, v2, v1}, Lcom/crashlytics/android/c/aj;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/c/ai;)V

    iget-object v1, v0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v1}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v1}, La/a/a/a/a/b/i;->c(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v16

    iget-object v4, v0, Lcom/crashlytics/android/c/h;->u:Lcom/crashlytics/android/c/q;

    invoke-virtual {v4}, Lcom/crashlytics/android/c/q;->a()Z

    move-result v4

    invoke-static {v1, v4}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Z)I

    move-result v17

    invoke-static {v1}, La/a/a/a/a/b/i;->d(Landroid/content/Context;)Z

    move-result v18

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v13, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, La/a/a/a/a/b/i;->b()J

    move-result-wide v6

    invoke-static {v1}, La/a/a/a/a/b/i;->b(Landroid/content/Context;)J

    move-result-wide v8

    sub-long v19, v6, v8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/a/a/a/a/b/i;->c(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, La/a/a/a/a/b/i;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v12

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iget-object v7, v5, Lcom/crashlytics/android/c/aj;->c:[Ljava/lang/StackTraceElement;

    iget-object v4, v0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    iget-object v15, v4, Lcom/crashlytics/android/c/a;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/crashlytics/android/c/h;->m:La/a/a/a/a/b/p;

    invoke-virtual {v4}, La/a/a/a/a/b/p;->c()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    if-eqz p6, :cond_1

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Thread;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    aput-object v23, v10, v4

    iget-object v6, v0, Lcom/crashlytics/android/c/h;->v:Lcom/crashlytics/android/c/ai;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/StackTraceElement;

    invoke-interface {v6, v11}, Lcom/crashlytics/android/c/ai;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v8, v10

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    new-array v4, v4, [Ljava/lang/Thread;

    move-object v8, v4

    :goto_1
    const-string v4, "com.crashlytics.CollectCustomKeys"

    invoke-static {v1, v4, v6}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :cond_2
    move-object v10, v1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v1}, Lcom/crashlytics/android/c/i;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, v6, :cond_2

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v10, v4

    :goto_2
    iget-object v11, v0, Lcom/crashlytics/android/c/h;->r:Lcom/crashlytics/android/c/u;

    move-object/from16 v1, p1

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v22}, Lcom/crashlytics/android/c/ag;->a(Lcom/crashlytics/android/c/e;JLjava/lang/String;Lcom/crashlytics/android/c/aj;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/c/u;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V

    return-void
.end method

.method private static a(Lcom/crashlytics/android/c/e;[Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    sget-object v0, La/a/a/a/a/b/i;->a:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Found Non Fatal for session ID %s in %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/e;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "Error writting non-fatal to session."

    invoke-interface {v4, v5, v6, v3}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/h;La/a/a/a/a/g/p;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/c/h;->a(La/a/a/a/a/g/p;Z)V

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/a/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->b(Lcom/crashlytics/android/c/a/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/c/h;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collecting session parts for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/crashlytics/android/c/h$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionCrash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/c/h$c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Session %s has fatal exception: %s"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object p2, v9, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/crashlytics/android/c/h$c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SessionEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/crashlytics/android/c/h$c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Session %s has non-fatal exceptions: %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v1

    invoke-static {v9, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p3, "CrashlyticsCore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No events present for session ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-direct {p0, p2, v4, p3}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;

    move-result-object p3

    if-eqz v3, :cond_4

    aget-object v0, v0, v2

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V

    :goto_4
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p3, "CrashlyticsCore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing session part files for ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->g()Ljava/io/File;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->h()Ljava/io/File;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/crashlytics/android/c/d;

    invoke-direct {v4, v2, p2}, Lcom/crashlytics/android/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v4}, Lcom/crashlytics/android/c/e;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/c/e;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v3

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collecting SessionStart data for session ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/e;Ljava/io/File;)V

    const/4 p1, 0x4

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v2, p1, v5, v6}, Lcom/crashlytics/android/c/e;->a(IJ)V

    const/4 p1, 0x5

    invoke-virtual {v2, p1, v1}, Lcom/crashlytics/android/c/e;->a(IZ)V

    const/16 p1, 0xb

    invoke-virtual {v2, p1, v0}, Lcom/crashlytics/android/c/e;->a(II)V

    const/16 p1, 0xc

    const/4 v0, 0x3

    invoke-virtual {v2, p1, v0}, Lcom/crashlytics/android/c/e;->b(II)V

    invoke-direct {p0, v2, p2}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/e;Ljava/lang/String;)V

    invoke-static {v2, p3, p2}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/e;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-static {v2, p4}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/e;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const-string p1, "Error flushing session file stream"

    invoke-static {v2, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string p1, "Failed to close CLS file"

    invoke-static {v4, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v3

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v4, v3

    :goto_2
    :try_start_3
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p3

    const-string p4, "CrashlyticsCore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write session file for session ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p4, p2, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string p1, "Error flushing session file stream"

    invoke-static {v3, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/d;)V

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    move-object v2, v3

    :goto_4
    const-string p2, "Error flushing session file stream"

    invoke-static {v2, p2}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string p2, "Failed to close CLS file"

    invoke-static {v4, p2}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/io/InputStream;Lcom/crashlytics/android/c/e;I)V
    .locals 2

    new-array p2, p2, [B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/crashlytics/android/c/e;->a([B)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/c/h$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/crashlytics/android/c/h$c;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/crashlytics/android/c/h;->e:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, p1}, Lcom/crashlytics/android/c/am;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/crashlytics/android/a/b;

    invoke-static {v0}, La/a/a/a/c;->a(Ljava/lang/Class;)La/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/a/b;

    if-nez v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p0

    const-string p1, "CrashlyticsCore"

    const-string v0, "Answers is not available"

    invoke-interface {p0, p1, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, La/a/a/a/a/b/j$a;

    invoke-direct {v1, p0, p1}, La/a/a/a/a/b/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/b;->a(La/a/a/a/a/b/j$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$b;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/crashlytics/android/c/d;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/crashlytics/android/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v1}, Lcom/crashlytics/android/c/e;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/c/e;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p3, p1}, Lcom/crashlytics/android/c/h$b;->a(Lcom/crashlytics/android/c/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to flush to session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " file."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to close session "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " file."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p3

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p3

    goto :goto_0

    :catchall_2
    move-exception p3

    move-object v1, v0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to flush to session "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to close session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " file."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$d;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p3, v1}, Lcom/crashlytics/android/c/h$d;->a(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to close "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " file."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " file."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 11

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Crashlytics Android SDK/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v3}, Lcom/crashlytics/android/c/i;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string p2, "BeginSession"

    new-instance v3, Lcom/crashlytics/android/c/h$7;

    move-object v5, v3

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    move-wide v9, v1

    invoke-direct/range {v5 .. v10}, Lcom/crashlytics/android/c/h$7;-><init>(Lcom/crashlytics/android/c/h;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, p1, p2, v3}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$b;)V

    const-string p2, "BeginSession.json"

    new-instance v3, Lcom/crashlytics/android/c/h$8;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/crashlytics/android/c/h$8;-><init>(Lcom/crashlytics/android/c/h;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, p1, p2, v3}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$d;)V

    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string p3, "Tried to write a fatal exception while no session was open."

    invoke-interface {p1, p2, p3, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p1, "Failed to flush to session begin file."

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string p1, "Failed to close fatal exception file output stream."

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/crashlytics/android/c/h;->a(J)V

    new-instance v2, Lcom/crashlytics/android/c/d;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SessionCrash"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/crashlytics/android/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Lcom/crashlytics/android/c/e;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/c/e;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v9, "crash"

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p1, "Failed to flush to session begin file."

    invoke-static {v1, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v2, v0

    :goto_0
    :try_start_4
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p2

    const-string p3, "CrashlyticsCore"

    const-string v1, "An error occurred in the fatal exception logger"

    invoke-interface {p2, p3, v1, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string p1, "Failed to flush to session begin file."

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    :goto_1
    const-string p1, "Failed to close fatal exception file output stream."

    invoke-static {v2, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p1

    :goto_2
    const-string p2, "Failed to flush to session begin file."

    invoke-static {v0, p2}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string p2, "Failed to close fatal exception file output stream."

    invoke-static {v2, p2}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private a([Ljava/io/File;II)V
    .locals 6

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Closing open sessions."

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-object v0, p1, p2

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p3}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([Ljava/io/File;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/crashlytics/android/c/h;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting unknown file: "

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming session file: "

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(La/a/a/a/a/g/t;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, La/a/a/a/a/g/t;->d:La/a/a/a/a/g/m;

    iget-boolean p1, p1, La/a/a/a/a/g/m;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/crashlytics/android/c/h;->n:Lcom/crashlytics/android/c/ab;

    invoke-virtual {p1}, Lcom/crashlytics/android/c/ab;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/crashlytics/android/c/h;La/a/a/a/a/g/t;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->a(La/a/a/a/a/g/t;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/crashlytics/android/c/h;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->b([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;
    .locals 6

    array-length v0, p2

    if-le v0, p3, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p2

    const-string v0, "CrashlyticsCore"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Trimming down to %d logged exceptions."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;I)V

    new-instance p2, Lcom/crashlytics/android/c/h$c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/crashlytics/android/c/h$c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private b(I)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->n()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/crashlytics/android/c/h;->r:Lcom/crashlytics/android/c/u;

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/c/u;->a(Ljava/util/Set;)V

    new-instance p1, Lcom/crashlytics/android/c/h$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/crashlytics/android/c/h$a;-><init>(Lcom/crashlytics/android/c/h$1;)V

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/c/h;->a([Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method private b(La/a/a/a/a/g/t;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    const-string v1, "Cannot send reports. Settings are unavailable."

    invoke-interface {p1, v0, v1}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, La/a/a/a/a/g/t;->a:La/a/a/a/a/g/e;

    iget-object p1, p1, La/a/a/a/a/g/e;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->h(Ljava/lang/String;)Lcom/crashlytics/android/c/o;

    move-result-object p1

    new-instance v1, Lcom/crashlytics/android/c/af;

    iget-object v2, p0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    iget-object v2, v2, Lcom/crashlytics/android/c/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/c/h;->s:Lcom/crashlytics/android/c/af$c;

    iget-object v4, p0, Lcom/crashlytics/android/c/h;->t:Lcom/crashlytics/android/c/af$b;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/crashlytics/android/c/af;-><init>(Ljava/lang/String;Lcom/crashlytics/android/c/o;Lcom/crashlytics/android/c/af$c;Lcom/crashlytics/android/c/af$b;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->b()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    new-instance v5, Lcom/crashlytics/android/c/ah;

    sget-object v6, Lcom/crashlytics/android/c/h;->g:Ljava/util/Map;

    invoke-direct {v5, v4, v6}, Lcom/crashlytics/android/c/ah;-><init>(Ljava/io/File;Ljava/util/Map;)V

    iget-object v4, p0, Lcom/crashlytics/android/c/h;->k:Lcom/crashlytics/android/c/g;

    new-instance v6, Lcom/crashlytics/android/c/h$j;

    invoke-direct {v6, v0, v5, v1}, Lcom/crashlytics/android/c/h$j;-><init>(Landroid/content/Context;Lcom/crashlytics/android/c/ae;Lcom/crashlytics/android/c/af;)V

    invoke-virtual {v4, v6}, Lcom/crashlytics/android/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/crashlytics/android/c/a/a/d;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v1, "CrashlyticsCore"

    const-string v2, "Tried to write a native crash while no session was open."

    invoke-interface {p1, v1, v2, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p1, "Failed to flush to session begin file."

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string p1, "Failed to close fatal exception file output stream."

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "<native-crash [%s (%s)]>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/crashlytics/android/c/a/a/d;->b:Lcom/crashlytics/android/c/a/a/e;

    iget-object v5, v5, Lcom/crashlytics/android/c/a/a/e;->b:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/crashlytics/android/c/a/a/d;->b:Lcom/crashlytics/android/c/a/a/e;

    iget-object v5, v5, Lcom/crashlytics/android/c/a/a/e;->a:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/crashlytics/android/c/a/a/d;->d:[Lcom/crashlytics/android/c/a/a/a;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/crashlytics/android/c/a/a/d;->d:[Lcom/crashlytics/android/c/a/a/a;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    const-string v2, "SessionCrash"

    goto :goto_0

    :cond_2
    const-string v2, "SessionMissingBinaryImages"

    :goto_0
    new-instance v3, Lcom/crashlytics/android/c/d;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/crashlytics/android/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Lcom/crashlytics/android/c/e;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/c/e;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v0, Lcom/crashlytics/android/c/w;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/crashlytics/android/c/w;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/w;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v4, Lcom/crashlytics/android/c/u;

    iget-object v5, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v5}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/crashlytics/android/c/h;->q:Lcom/crashlytics/android/c/h$f;

    invoke-direct {v4, v5, v6, v1}, Lcom/crashlytics/android/c/u;-><init>(Landroid/content/Context;Lcom/crashlytics/android/c/u$a;Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v2}, Lcom/crashlytics/android/c/z;->a(Lcom/crashlytics/android/c/a/a/d;Lcom/crashlytics/android/c/u;Ljava/util/Map;Lcom/crashlytics/android/c/e;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p1, "Failed to flush to session begin file."

    invoke-static {v2, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v3, v0

    :goto_1
    :try_start_4
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v4, "An error occurred in the native crash logger"

    invoke-interface {v1, v2, v4, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string p1, "Failed to flush to session begin file."

    invoke-static {v0, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    :goto_2
    const-string p1, "Failed to close fatal exception file output stream."

    invoke-static {v3, p1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p1

    :goto_3
    const-string v1, "Failed to flush to session begin file."

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v3, v0}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/crashlytics/android/c/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->m()V

    return-void
.end method

.method static synthetic b(Lcom/crashlytics/android/c/h;La/a/a/a/a/g/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->b(La/a/a/a/a/g/t;)V

    return-void
.end method

.method private b(Ljava/io/File;)[Ljava/io/File;
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->b([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    new-instance v0, Lcom/crashlytics/android/c/h$k;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/c/h$k;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private b([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method static synthetic c(Lcom/crashlytics/android/c/h;)Lcom/crashlytics/android/c/a;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 14

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->m:La/a/a/a/a/b/p;

    invoke-virtual {v0}, La/a/a/a/a/b/p;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    iget-object v8, v1, Lcom/crashlytics/android/c/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    iget-object v9, v1, Lcom/crashlytics/android/c/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/c/h;->m:La/a/a/a/a/b/p;

    invoke-virtual {v1}, La/a/a/a/a/b/p;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    iget-object v1, v1, Lcom/crashlytics/android/c/a;->c:Ljava/lang/String;

    invoke-static {v1}, La/a/a/a/a/b/l;->a(Ljava/lang/String;)La/a/a/a/a/b/l;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/b/l;->a()I

    move-result v11

    const-string v12, "SessionApp"

    new-instance v13, Lcom/crashlytics/android/c/h$9;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/c/h$9;-><init>(Lcom/crashlytics/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v12, v13}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$b;)V

    const-string v12, "SessionApp.json"

    new-instance v13, Lcom/crashlytics/android/c/h$11;

    move-object v1, v13

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/c/h$11;-><init>(Lcom/crashlytics/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v12, v13}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$d;)V

    return-void
.end method

.method static synthetic d(Lcom/crashlytics/android/c/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/crashlytics/android/c/h;->w:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b/i;->g(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SessionOS"

    new-instance v2, Lcom/crashlytics/android/c/h$12;

    invoke-direct {v2, p0, v0}, Lcom/crashlytics/android/c/h$12;-><init>(Lcom/crashlytics/android/c/h;Z)V

    invoke-direct {p0, p1, v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$b;)V

    const-string v1, "SessionOS.json"

    new-instance v2, Lcom/crashlytics/android/c/h$13;

    invoke-direct {v2, p0, v0}, Lcom/crashlytics/android/c/h$13;-><init>(Lcom/crashlytics/android/c/h;Z)V

    invoke-direct {p0, p1, v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$d;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/a/b/i;->a()I

    move-result v13

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v14

    invoke-static {}, La/a/a/a/a/b/i;->b()J

    move-result-wide v15

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long v17, v2, v4

    invoke-static {v0}, La/a/a/a/a/b/i;->f(Landroid/content/Context;)Z

    move-result v19

    iget-object v1, v11, Lcom/crashlytics/android/c/h;->m:La/a/a/a/a/b/p;

    invoke-virtual {v1}, La/a/a/a/a/b/p;->h()Ljava/util/Map;

    move-result-object v20

    invoke-static {v0}, La/a/a/a/a/b/i;->h(Landroid/content/Context;)I

    move-result v21

    const-string v10, "SessionDevice"

    new-instance v9, Lcom/crashlytics/android/c/h$14;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v13

    move v3, v14

    move-wide v4, v15

    move-wide/from16 v6, v17

    move/from16 v8, v19

    move-wide/from16 v22, v15

    move-object v15, v9

    move-object/from16 v9, v20

    move/from16 v24, v14

    move-object v14, v10

    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/c/h$14;-><init>(Lcom/crashlytics/android/c/h;IIJJZLjava/util/Map;I)V

    invoke-direct {v11, v12, v14, v15}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$b;)V

    const-string v14, "SessionDevice.json"

    new-instance v15, Lcom/crashlytics/android/c/h$15;

    move-object v0, v15

    move/from16 v3, v24

    move-wide/from16 v4, v22

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/c/h$15;-><init>(Lcom/crashlytics/android/c/h;IIJJZLjava/util/Map;I)V

    invoke-direct {v11, v12, v14, v15}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$d;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h;->g(Ljava/lang/String;)Lcom/crashlytics/android/c/al;

    move-result-object v0

    const-string v1, "SessionUser"

    new-instance v2, Lcom/crashlytics/android/c/h$16;

    invoke-direct {v2, p0, v0}, Lcom/crashlytics/android/c/h$16;-><init>(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/al;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/c/h$b;)V

    return-void
.end method

.method private g(Ljava/lang/String;)Lcom/crashlytics/android/c/al;
    .locals 3

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/crashlytics/android/c/al;

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/i;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v1}, Lcom/crashlytics/android/c/i;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v2}, Lcom/crashlytics/android/c/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/crashlytics/android/c/al;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/crashlytics/android/c/w;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/c/w;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/c/w;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/al;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private h(Ljava/lang/String;)Lcom/crashlytics/android/c/o;
    .locals 4

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/i;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/c/p;

    iget-object v2, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    iget-object v3, p0, Lcom/crashlytics/android/c/h;->l:La/a/a/a/a/e/e;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/crashlytics/android/c/p;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;)V

    return-object v1
.end method

.method static synthetic j()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/crashlytics/android/c/h;->f:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->n()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->n()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private m()V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Lcom/crashlytics/android/c/c;

    iget-object v2, p0, Lcom/crashlytics/android/c/h;->m:La/a/a/a/a/b/p;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/c/c;-><init>(La/a/a/a/a/b/p;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening a new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/String;Ljava/util/Date;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/c/h;->c(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/c/h;->d(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/c/h;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->r:Lcom/crashlytics/android/c/u;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method private n()[Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->c()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/c/h;->d:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private o()V
    .locals 6

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->i()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/crashlytics/android/c/h$e;

    invoke-direct {v1}, Lcom/crashlytics/android/c/h$e;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/h;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/c/h;->a([Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method private p()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->k:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/h$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/h$2;-><init>(Lcom/crashlytics/android/c/h;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(FLa/a/a/a/a/g/t;)V
    .locals 5

    if-nez p2, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "Could not send reports. Settings are not available."

    invoke-interface {p1, p2, v0}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p2, La/a/a/a/a/g/t;->a:La/a/a/a/a/g/e;

    iget-object v0, v0, La/a/a/a/a/g/e;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/h;->h(Ljava/lang/String;)Lcom/crashlytics/android/c/o;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/crashlytics/android/c/h;->a(La/a/a/a/a/g/t;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/crashlytics/android/c/h$g;

    iget-object v2, p0, Lcom/crashlytics/android/c/h;->j:Lcom/crashlytics/android/c/i;

    iget-object v3, p0, Lcom/crashlytics/android/c/h;->n:Lcom/crashlytics/android/c/ab;

    iget-object p2, p2, La/a/a/a/a/g/t;->c:La/a/a/a/a/g/o;

    invoke-direct {v1, v2, v3, p2}, Lcom/crashlytics/android/c/h$g;-><init>(La/a/a/a/i;Lcom/crashlytics/android/c/ab;La/a/a/a/a/g/o;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/crashlytics/android/c/af$a;

    invoke-direct {v1}, Lcom/crashlytics/android/c/af$a;-><init>()V

    :goto_0
    new-instance p2, Lcom/crashlytics/android/c/af;

    iget-object v2, p0, Lcom/crashlytics/android/c/h;->p:Lcom/crashlytics/android/c/a;

    iget-object v2, v2, Lcom/crashlytics/android/c/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/c/h;->s:Lcom/crashlytics/android/c/af$c;

    iget-object v4, p0, Lcom/crashlytics/android/c/h;->t:Lcom/crashlytics/android/c/af$b;

    invoke-direct {p2, v2, v0, v3, v4}, Lcom/crashlytics/android/c/af;-><init>(Ljava/lang/String;Lcom/crashlytics/android/c/o;Lcom/crashlytics/android/c/af$c;Lcom/crashlytics/android/c/af$b;)V

    invoke-virtual {p2, p1, v1}, Lcom/crashlytics/android/c/af;->a(FLcom/crashlytics/android/c/af$d;)V

    return-void
.end method

.method a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->g()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/c/h;->e:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/crashlytics/android/c/am;->a(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->h()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/c/h;->e:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/crashlytics/android/c/am;->a(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/c/h;->b:Ljava/io/FilenameFilter;

    sget-object v2, Lcom/crashlytics/android/c/h;->e:Ljava/util/Comparator;

    invoke-static {v0, v1, p1, v2}, Lcom/crashlytics/android/c/am;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method a(Lcom/crashlytics/android/c/a/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->k:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/h$6;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/c/h$6;-><init>(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/a/a/d;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->a()V

    new-instance v0, Lcom/crashlytics/android/c/h$20;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/c/h$20;-><init>(Lcom/crashlytics/android/c/h;)V

    new-instance v1, Lcom/crashlytics/android/c/m;

    invoke-direct {v1, v0, p1}, Lcom/crashlytics/android/c/m;-><init>(Lcom/crashlytics/android/c/m$a;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v1, p0, Lcom/crashlytics/android/c/h;->z:Lcom/crashlytics/android/c/m;

    iget-object p1, p0, Lcom/crashlytics/android/c/h;->z:Lcom/crashlytics/android/c/m;

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method declared-synchronized a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->u:Lcom/crashlytics/android/c/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/q;->b()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/c/h;->k:Lcom/crashlytics/android/c/g;

    new-instance v2, Lcom/crashlytics/android/c/h$21;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/crashlytics/android/c/h$21;-><init>(Lcom/crashlytics/android/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a([Ljava/io/File;)V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found invalid session part file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->i()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v1, Lcom/crashlytics/android/c/h$5;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/c/h$5;-><init>(Lcom/crashlytics/android/c/h;Ljava/util/Set;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving session file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not move session file. Deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/crashlytics/android/c/h;->o()V

    return-void
.end method

.method a(La/a/a/a/a/g/p;)Z
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->k:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/h$3;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/c/h$3;-><init>(Lcom/crashlytics/android/c/h;La/a/a/a/a/g/p;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method b(La/a/a/a/a/g/p;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/c/h;->a(La/a/a/a/a/g/p;Z)V

    return-void
.end method

.method b()[Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->g()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/crashlytics/android/c/h;->b:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->h()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/crashlytics/android/c/h;->b:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/crashlytics/android/c/h;->b:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/c/h;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method c()[Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/crashlytics/android/c/h;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->k:Lcom/crashlytics/android/c/g;

    new-instance v1, Lcom/crashlytics/android/c/h$4;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/h$4;-><init>(Lcom/crashlytics/android/c/h;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->z:Lcom/crashlytics/android/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->z:Lcom/crashlytics/android/c/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/h;->o:La/a/a/a/a/f/a;

    invoke-interface {v0}, La/a/a/a/a/f/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "fatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method h()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "nonfatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method i()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/h;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
