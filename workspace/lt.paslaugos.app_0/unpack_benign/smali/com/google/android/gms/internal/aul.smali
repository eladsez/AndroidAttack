.class public Lcom/google/android/gms/internal/aul;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aul$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/avs;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/auc;

.field private final d:Lcom/google/android/gms/internal/aub;

.field private final e:Lcom/google/android/gms/internal/awr;

.field private final f:Lcom/google/android/gms/internal/bcd;

.field private final g:Lcom/google/android/gms/internal/en;

.field private final h:Lcom/google/android/gms/internal/bhy;

.field private final i:Lcom/google/android/gms/internal/bce;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auc;Lcom/google/android/gms/internal/aub;Lcom/google/android/gms/internal/awr;Lcom/google/android/gms/internal/bcd;Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/bhy;Lcom/google/android/gms/internal/bce;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aul;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/aul;->c:Lcom/google/android/gms/internal/auc;

    iput-object p2, p0, Lcom/google/android/gms/internal/aul;->d:Lcom/google/android/gms/internal/aub;

    iput-object p3, p0, Lcom/google/android/gms/internal/aul;->e:Lcom/google/android/gms/internal/awr;

    iput-object p4, p0, Lcom/google/android/gms/internal/aul;->f:Lcom/google/android/gms/internal/bcd;

    iput-object p5, p0, Lcom/google/android/gms/internal/aul;->g:Lcom/google/android/gms/internal/en;

    iput-object p6, p0, Lcom/google/android/gms/internal/aul;->h:Lcom/google/android/gms/internal/bhy;

    iput-object p7, p0, Lcom/google/android/gms/internal/aul;->i:Lcom/google/android/gms/internal/bce;

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/avs;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/android/gms/internal/aul;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v1, "ClientApi class is not an instance of IBinder"

    invoke-static {v1}, Lcom/google/android/gms/internal/kj;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/avt;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/avs;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aul;)Lcom/google/android/gms/internal/avs;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aul;->b()Lcom/google/android/gms/internal/avs;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;ZLcom/google/android/gms/internal/aul$a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/internal/aul$a<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    invoke-static {p0}, Lcom/google/android/gms/internal/jz;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Google Play Services is not available"

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    invoke-static {p0}, Lcom/google/android/gms/internal/jz;->e(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    invoke-static {p0}, Lcom/google/android/gms/internal/jz;->d(Landroid/content/Context;)I

    move-result p0

    if-le v1, p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aul$a;->b()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aul$a;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/aul$a;->c()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aul$a;->b()Ljava/lang/Object;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    move-result-object v0

    const-string v3, "gmob-apps"

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aul;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/aul;)Lcom/google/android/gms/internal/auc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/aul;->c:Lcom/google/android/gms/internal/auc;

    return-object p0
.end method

.method private final b()Lcom/google/android/gms/internal/avs;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aul;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aul;->a:Lcom/google/android/gms/internal/avs;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/aul;->a()Lcom/google/android/gms/internal/avs;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/aul;->a:Lcom/google/android/gms/internal/avs;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aul;->a:Lcom/google/android/gms/internal/avs;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/aul;)Lcom/google/android/gms/internal/aub;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/aul;->d:Lcom/google/android/gms/internal/aub;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/aul;)Lcom/google/android/gms/internal/bhy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/aul;->h:Lcom/google/android/gms/internal/bhy;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;)Lcom/google/android/gms/internal/ave;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aup;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/aup;-><init>(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/aul;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/aul$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ave;

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)Lcom/google/android/gms/internal/bhz;
    .locals 4

    const-string v0, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v0, "useClientJar flag not found in activity intent extras."

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/aur;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/aur;-><init>(Lcom/google/android/gms/internal/aul;Landroid/app/Activity;)V

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/aul;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/aul$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bhz;

    return-object p1
.end method
