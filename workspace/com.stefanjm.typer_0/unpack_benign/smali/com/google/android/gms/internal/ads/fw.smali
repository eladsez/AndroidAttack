.class public final Lcom/google/android/gms/internal/ads/fw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/bcz;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/bda;

.field private final c:Lcom/google/android/gms/ads/internal/ay;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hl;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/hd;

.field private final f:Lcom/google/android/gms/ads/internal/gmsg/k;

.field private final g:Lcom/google/android/gms/internal/ads/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bcz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fw;->a:Lcom/google/android/gms/internal/ads/bcz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/ay;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/hd;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/internal/ads/ap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fw;->b:Lcom/google/android/gms/internal/ads/bda;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fw;->e:Lcom/google/android/gms/internal/ads/hd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fw;->f:Lcom/google/android/gms/ads/internal/gmsg/k;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/fw;->g:Lcom/google/android/gms/internal/ads/ap;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/is;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/gmsg/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->f:Lcom/google/android/gms/ads/internal/gmsg/k;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hl;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hl;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fw;->b:Lcom/google/android/gms/internal/ads/bda;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/fw;->a:Lcom/google/android/gms/internal/ads/bcz;

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/hl;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/bda;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fw;->e:Lcom/google/android/gms/internal/ads/hd;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/hl;-><init>(Lcom/google/android/gms/internal/ads/bdd;Lcom/google/android/gms/internal/ads/hd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/hq;)Lcom/google/android/gms/internal/ads/hq;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bck;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/hq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bck;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/is;->r:Lcom/google/android/gms/internal/ads/bck;

    iget v1, v1, Lcom/google/android/gms/internal/ads/bck;->l:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/hq;-><init>(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bcj;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/ay;->E:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hq;)V

    :cond_1
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hl;

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/bdd;->a(Lcom/google/android/gms/b/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to call Adapter.onContextChanged."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/fw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/bdd;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bdd;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->g:Lcom/google/android/gms/internal/ads/ap;

    return-object v0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/ay;->I:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->d()Lcom/google/android/gms/internal/ads/ao;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ay;->k:Lcom/google/android/gms/internal/ads/it;

    new-instance v3, Lcom/google/android/gms/internal/ads/hg;

    invoke-direct {v3, v1, v2, p0}, Lcom/google/android/gms/internal/ads/hg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/fw;)V

    const-string v1, "AdRenderer: "

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/kp;->c()Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/ay;->h:Lcom/google/android/gms/internal/ads/kp;

    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bdd;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bdd;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fw;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/bdd;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bcj;->l:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->x()Lcom/google/android/gms/internal/ads/bct;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->e:Lcom/google/android/gms/internal/ads/mv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/ay;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw;->c:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->j:Lcom/google/android/gms/internal/ads/is;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bcj;->n:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bct;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/is;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method
