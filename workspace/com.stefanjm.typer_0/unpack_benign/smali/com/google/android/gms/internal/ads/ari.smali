.class public final Lcom/google/android/gms/internal/ads/ari;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcz;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/aot;

.field private d:Lcom/google/android/gms/ads/a;

.field private e:Lcom/google/android/gms/internal/ads/aok;

.field private f:Lcom/google/android/gms/internal/ads/apy;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/ads/reward/d;

.field private i:Lcom/google/android/gms/ads/a/a;

.field private j:Lcom/google/android/gms/ads/a/c;

.field private k:Lcom/google/android/gms/ads/f;

.field private l:Lcom/google/android/gms/ads/reward/c;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/aot;->a:Lcom/google/android/gms/internal/ads/aot;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ari;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aot;Lcom/google/android/gms/ads/a/e;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aot;Lcom/google/android/gms/ads/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/google/android/gms/internal/ads/bcz;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/bcz;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ari;->a:Lcom/google/android/gms/internal/ads/bcz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ari;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ari;->c:Lcom/google/android/gms/internal/ads/aot;

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is called."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/apy;->q()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ari;->d:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/aom;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/aom;-><init>(Lcom/google/android/gms/ads/a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/apn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/c;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ari;->l:Lcom/google/android/gms/ads/reward/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/gs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/gs;-><init>(Lcom/google/android/gms/ads/reward/c;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/gn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/d;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ari;->h:Lcom/google/android/gms/ads/reward/d;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/aop;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/aop;-><init>(Lcom/google/android/gms/ads/reward/d;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/aqd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aok;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ari;->e:Lcom/google/android/gms/internal/ads/aok;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/aol;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/aol;-><init>(Lcom/google/android/gms/internal/ads/aok;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/apk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ard;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-nez v0, :cond_9

    const-string v0, "loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ari;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ari;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ari;->m:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aou;->a()Lcom/google/android/gms/internal/ads/aou;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/aou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aou;-><init>()V

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->b()Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ari;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ari;->a:Lcom/google/android/gms/internal/ads/bcz;

    new-instance v7, Lcom/google/android/gms/internal/ads/apb;

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/apb;-><init>(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/ads/aoy;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/aoy$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->d:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    new-instance v1, Lcom/google/android/gms/internal/ads/aom;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ari;->d:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/aom;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/apn;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->e:Lcom/google/android/gms/internal/ads/aok;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    new-instance v1, Lcom/google/android/gms/internal/ads/aol;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ari;->e:Lcom/google/android/gms/internal/ads/aok;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/aol;-><init>(Lcom/google/android/gms/internal/ads/aok;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/apk;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->h:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    new-instance v1, Lcom/google/android/gms/internal/ads/aop;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ari;->h:Lcom/google/android/gms/ads/reward/d;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/aop;-><init>(Lcom/google/android/gms/ads/reward/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/aqd;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->i:Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    new-instance v1, Lcom/google/android/gms/internal/ads/aow;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ari;->i:Lcom/google/android/gms/ads/a/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/aow;-><init>(Lcom/google/android/gms/ads/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/aqh;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->j:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    new-instance v1, Lcom/google/android/gms/internal/ads/ato;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ari;->j:Lcom/google/android/gms/ads/a/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ato;-><init>(Lcom/google/android/gms/ads/a/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/atl;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->k:Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ari;->k:Lcom/google/android/gms/ads/f;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->a()Lcom/google/android/gms/internal/ads/api;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/aqn;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->l:Lcom/google/android/gms/ads/reward/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    new-instance v1, Lcom/google/android/gms/internal/ads/gs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ari;->l:Lcom/google/android/gms/ads/reward/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/gs;-><init>(Lcom/google/android/gms/ads/reward/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->a(Lcom/google/android/gms/internal/ads/gn;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ari;->n:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->c(Z)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ari;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/aot;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ard;)Lcom/google/android/gms/internal/ads/aoq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apy;->b(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->a:Lcom/google/android/gms/internal/ads/bcz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ard;->j()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcz;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ari;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ari;->m:Z

    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ari;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/apy;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ari;->n:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ari;->f:Lcom/google/android/gms/internal/ads/apy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/apy;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
