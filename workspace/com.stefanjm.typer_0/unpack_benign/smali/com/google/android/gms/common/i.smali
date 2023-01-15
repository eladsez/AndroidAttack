.class final Lcom/google/android/gms/common/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/i$a;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/common/internal/z;

.field private static final b:Ljava/lang/Object;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/i;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/i$a;Z)Lcom/google/android/gms/common/y;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/i;->a()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Lcom/google/android/gms/common/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/j;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/i$a;Z)V

    :try_start_1
    sget-object v1, Lcom/google/android/gms/common/i;->a:Lcom/google/android/gms/common/internal/z;

    sget-object v2, Lcom/google/android/gms/common/i;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/internal/z;->a(Lcom/google/android/gms/common/j;Lcom/google/android/gms/b/a;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/y;->a()Lcom/google/android/gms/common/y;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/i;->a(Ljava/lang/String;Lcom/google/android/gms/common/i$a;Z)Lcom/google/android/gms/common/y;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/y;->a:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/y;->a(Ljava/lang/String;Lcom/google/android/gms/common/i$a;ZZ)Lcom/google/android/gms/common/y;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    :goto_1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/y;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "module init"

    goto :goto_1
.end method

.method private static a()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/i;->a:Lcom/google/android/gms/common/internal/z;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/i;->a:Lcom/google/android/gms/common/internal/z;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/i;->c:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->d:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/z$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/z;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/i;->a:Lcom/google/android/gms/common/internal/z;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/i;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/i;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
