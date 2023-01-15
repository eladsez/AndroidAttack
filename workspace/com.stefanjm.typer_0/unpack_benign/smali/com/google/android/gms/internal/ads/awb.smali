.class public final Lcom/google/android/gms/internal/ads/awb;
.super Lcom/google/android/gms/ads/b/h;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/avy;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/avi;

.field private final d:Lcom/google/android/gms/ads/j;

.field private final e:Lcom/google/android/gms/ads/b/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/avy;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/b/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->b:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/ads/j;

    invoke-direct {v0}, Lcom/google/android/gms/ads/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->d:Lcom/google/android/gms/ads/j;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_2

    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/avf;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/ads/avf;

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/avh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/avh;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/awb;->b:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/avi;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/avi;-><init>(Lcom/google/android/gms/internal/ads/avf;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->f()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/ads/avi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/avi;-><init>(Lcom/google/android/gms/internal/ads/avf;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v1, p1

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/awb;->c:Lcom/google/android/gms/internal/ads/avi;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->p()Lcom/google/android/gms/internal/ads/avb;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/ave;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/avy;->p()Lcom/google/android/gms/internal/ads/avb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ave;-><init>(Lcom/google/android/gms/internal/ads/avb;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awb;->e:Lcom/google/android/gms/ads/b/c$a;

    return-void
.end method

.method private final i()Lcom/google/android/gms/b/a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->j()Lcom/google/android/gms/b/a;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/awb;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/ads/b/c$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->c:Lcom/google/android/gms/internal/ads/avi;

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->g()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/j;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/avy;->i()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->d:Lcom/google/android/gms/ads/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awb;->a:Lcom/google/android/gms/internal/ads/avy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/avy;->i()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/internal/ads/aqv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awb;->d:Lcom/google/android/gms/ads/j;

    return-object v0
.end method
