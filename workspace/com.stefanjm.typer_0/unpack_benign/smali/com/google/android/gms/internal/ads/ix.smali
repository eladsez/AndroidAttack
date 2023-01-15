.class public final Lcom/google/android/gms/internal/ads/ix;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/jt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/aju;

.field private final c:Lcom/google/android/gms/internal/ads/je;

.field private final d:Lcom/google/android/gms/internal/ads/jp;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/internal/ads/mv;

.field private h:Lcom/google/android/gms/internal/ads/asu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/ads/alo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/ads/alj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final n:Lcom/google/android/gms/internal/ads/ja;

.field private final o:Ljava/lang/Object;

.field private p:Lcom/google/android/gms/internal/ads/no;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/no<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/je;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->c:Lcom/google/android/gms/internal/ads/je;

    new-instance v0, Lcom/google/android/gms/internal/ads/jp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->d:Lcom/google/android/gms/internal/ads/jp;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ix;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->h:Lcom/google/android/gms/internal/ads/asu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->i:Lcom/google/android/gms/internal/ads/alo;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->j:Lcom/google/android/gms/internal/ads/alj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->k:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ix;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/internal/ads/ja;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ja;-><init>(Lcom/google/android/gms/internal/ads/iz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->n:Lcom/google/android/gms/internal/ads/ja;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->o:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ix;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    return-object p0
.end method

.method private final a(Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/alo;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->Q:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->Y:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->W:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    return-object v1

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_7

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ix;->j:Lcom/google/android/gms/internal/ads/alj;

    if-nez p3, :cond_5

    new-instance p3, Lcom/google/android/gms/internal/ads/alj;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/alj;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ix;->j:Lcom/google/android/gms/internal/ads/alj;

    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ix;->i:Lcom/google/android/gms/internal/ads/alo;

    if-nez p3, :cond_6

    new-instance p3, Lcom/google/android/gms/internal/ads/alo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->j:Lcom/google/android/gms/internal/ads/alj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/cg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)Lcom/google/android/gms/internal/ads/ck;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/google/android/gms/internal/ads/alo;-><init>(Lcom/google/android/gms/internal/ads/alj;Lcom/google/android/gms/internal/ads/ck;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ix;->i:Lcom/google/android/gms/internal/ads/alo;

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ix;->i:Lcom/google/android/gms/internal/ads/alo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alo;->a()V

    const-string p1, "start fetching content..."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ix;->i:Lcom/google/android/gms/internal/ads/alo;

    monitor-exit p2

    return-object p1

    :cond_7
    :goto_0
    monitor-exit p2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/mv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ix;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/asu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ix;->h:Lcom/google/android/gms/internal/ads/asu;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/alo;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->d:Lcom/google/android/gms/internal/ads/jp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jp;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->d:Lcom/google/android/gms/internal/ads/jp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jp;->d()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ix;->a(Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/alo;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/google/android/gms/internal/ads/je;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->c:Lcom/google/android/gms/internal/ads/je;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ix;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->h()Lcom/google/android/gms/internal/ads/alk;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->j()Lcom/google/android/gms/internal/ads/jg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/alk;->a(Lcom/google/android/gms/internal/ads/aln;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->d:Lcom/google/android/gms/internal/ads/jp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/jp;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->d:Lcom/google/android/gms/internal/ads/jp;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/jp;->a(Lcom/google/android/gms/internal/ads/jt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/cg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)Lcom/google/android/gms/internal/ads/ck;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/jw;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ix;->l:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/aju;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/ads/aju;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ix;->b:Lcom/google/android/gms/internal/ads/aju;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->n()Lcom/google/android/gms/internal/ads/asw;

    sget-object p1, Lcom/google/android/gms/internal/ads/asr;->N:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/asu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/asu;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ix;->h:Lcom/google/android/gms/internal/ads/asu;

    new-instance p1, Lcom/google/android/gms/internal/ads/iz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/iz;-><init>(Lcom/google/android/gms/internal/ads/ix;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ji;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/no;

    const-string p2, "AppState.registerCsiReporter"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/nb;->a(Lcom/google/android/gms/internal/ads/no;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ix;->e:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ix;->n()Lcom/google/android/gms/internal/ads/no;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content_vertical_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    const-string v1, "content_url_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "content_vertical_opted_out"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/ix;->a(Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/alo;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ix;->k:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)Lcom/google/android/gms/internal/ads/ck;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->n:Lcom/google/android/gms/internal/ads/ja;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ja;->a(Z)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/asu;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->h:Lcom/google/android/gms/internal/ads/asu;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)Lcom/google/android/gms/internal/ads/ck;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/asr;->f:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->k:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->n:Lcom/google/android/gms/internal/ads/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ja;->a()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->n:Lcom/google/android/gms/internal/ads/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ja;->b()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->n:Lcom/google/android/gms/internal/ads/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ja;->c()V

    return-void
.end method

.method public final g()Lcom/google/android/gms/internal/ads/aju;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->b:Lcom/google/android/gms/internal/ads/aju;

    return-object v0
.end method

.method public final h()Landroid/content/res/Resources;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->g:Lcom/google/android/gms/internal/ads/mv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/mv;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/jp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->d:Lcom/google/android/gms/internal/ads/jp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/no;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/no<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/o;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->bH:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->p:Lcom/google/android/gms/internal/ads/no;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->p:Lcom/google/android/gms/internal/ads/no;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/iy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/iy;-><init>(Lcom/google/android/gms/internal/ads/ix;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/no;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ix;->p:Lcom/google/android/gms/internal/ads/no;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    return-object v0
.end method

.method final synthetic o()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ix;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ix;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
