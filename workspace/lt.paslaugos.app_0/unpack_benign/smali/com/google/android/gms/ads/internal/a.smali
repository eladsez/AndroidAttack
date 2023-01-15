.class public abstract Lcom/google/android/gms/ads/internal/a;
.super Lcom/google/android/gms/internal/avk;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/i;
.implements Lcom/google/android/gms/ads/internal/overlay/t;
.implements Lcom/google/android/gms/internal/am;
.implements Lcom/google/android/gms/internal/aty;
.implements Lcom/google/android/gms/internal/bix;
.implements Lcom/google/android/gms/internal/gv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ayg;

.field protected b:Lcom/google/android/gms/internal/aye;

.field protected c:Z

.field protected final d:Lcom/google/android/gms/ads/internal/al;

.field protected final e:Lcom/google/android/gms/ads/internal/aw;

.field protected transient f:Lcom/google/android/gms/internal/aud;

.field protected final g:Lcom/google/android/gms/internal/apf;

.field protected final h:Lcom/google/android/gms/ads/internal/br;

.field private i:Lcom/google/android/gms/internal/aye;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/aw;Lcom/google/android/gms/ads/internal/al;Lcom/google/android/gms/ads/internal/br;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/avk;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    new-instance p1, Lcom/google/android/gms/ads/internal/al;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/al;-><init>(Lcom/google/android/gms/ads/internal/a;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->d:Lcom/google/android/gms/ads/internal/al;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/ads/internal/br;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/hs;->b(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/hs;->c(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/hc;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->B()Lcom/google/android/gms/ads/internal/js/n;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/js/n;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/km;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->k()Lcom/google/android/gms/internal/arw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/arw;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gq;->g()Lcom/google/android/gms/internal/apf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/apf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->h()Lcom/google/android/gms/internal/aqy;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/aqy;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->D()Lcom/google/android/gms/internal/jv;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/jv;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/axt;->cd:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    sget-object p2, Lcom/google/android/gms/internal/axt;->cf:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/ads/internal/ab;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/ab;-><init>(Lcom/google/android/gms/ads/internal/a;Ljava/util/concurrent/CountDownLatch;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    sget-object p1, Lcom/google/android/gms/internal/axt;->ce:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method protected static a(Lcom/google/android/gms/internal/aud;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/aud;->m:Landroid/os/Bundle;

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "gw"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 3

    const-string v0, "ufe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string p0, "Cannot find valid format of Url fetch time in CSI latency info."

    goto :goto_0

    :catch_1
    const-string p0, "Invalid index for Url fetch time in CSI latency info."

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method protected final A()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ej;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoCompleted()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final B()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/gl;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/gl;->F:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->o()Lcom/google/android/gms/internal/is;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/is;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Sending troubleshooting signals to the server."

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->o()Lcom/google/android/gms/internal/is;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v3, v3, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/gl;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/is;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/gl;->F:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/internal/avo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->o:Lcom/google/android/gms/internal/avo;

    return-object v0
.end method

.method public final E()Lcom/google/android/gms/internal/auy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    return-object v0
.end method

.method protected final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(IZ)V

    return-void
.end method

.method protected a(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/auy;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ej;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad()."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hy;->d()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/ax;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/auh;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget v0, v0, Lcom/google/android/gms/ads/internal/aw;->G:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-static {p1}, Lcom/google/android/gms/internal/pr;->a(Lcom/google/android/gms/internal/auh;)Lcom/google/android/gms/internal/pr;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/pr;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ax;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ax;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget v1, p1, Lcom/google/android/gms/internal/auh;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ax;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    iget p1, p1, Lcom/google/android/gms/internal/auh;->c:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/ax;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ax;->requestLayout()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/auv;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->m:Lcom/google/android/gms/internal/auv;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/auy;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/avo;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->o:Lcom/google/android/gms/internal/avo;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/avv;)V
    .locals 1

    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->p:Lcom/google/android/gms/internal/avv;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/awj;)V
    .locals 1

    const-string v0, "setIconAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->x:Lcom/google/android/gms/internal/awj;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/axc;)V
    .locals 1

    const-string v0, "setVideoOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->w:Lcom/google/android/gms/internal/axc;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aye;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ayg;

    sget-object v1, Lcom/google/android/gms/internal/axt;->J:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "load_ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-object v3, v3, Lcom/google/android/gms/internal/auh;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ayg;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    new-instance v0, Lcom/google/android/gms/internal/aye;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/aye;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/aye;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->i:Lcom/google/android/gms/internal/aye;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/aye;

    invoke-direct {p1, v1, v2, v3, v3}, Lcom/google/android/gms/internal/aye;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/aye;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/aye;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/aye;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aye;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aye;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aye;->c()Lcom/google/android/gms/internal/aye;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/aye;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/aye;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/aye;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ayn;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setOnCustomRenderedAdLoadedListener is not supported for current ad type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/google/android/gms/internal/big;)V
    .locals 0

    const-string p1, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bin;Ljava/lang/String;)V
    .locals 0

    const-string p1, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ej;)V
    .locals 1

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gm;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v0, v0, Lcom/google/android/gms/internal/bn;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    iget-object v3, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/bn;->m:J

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ayg;->a(J)Lcom/google/android/gms/internal/aye;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    const-string v2, "stc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ayg;->a(Lcom/google/android/gms/internal/aye;[Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    iget-object v1, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v1, v1, Lcom/google/android/gms/internal/bn;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/aye;

    const-string v2, "arf"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ayg;->a(Lcom/google/android/gms/internal/aye;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayg;->a()Lcom/google/android/gms/internal/aye;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->i:Lcom/google/android/gms/internal/aye;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    const-string v1, "gqi"

    iget-object v2, p1, Lcom/google/android/gms/internal/gm;->b:Lcom/google/android/gms/internal/bn;

    iget-object v2, v2, Lcom/google/android/gms/internal/bn;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->g:Lcom/google/android/gms/internal/ha;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->k:Lcom/google/android/gms/internal/gm;

    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    new-instance v1, Lcom/google/android/gms/ads/internal/ay;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/ay;-><init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asm;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gm;->i:Lcom/google/android/gms/internal/asl;

    sget-object v1, Lcom/google/android/gms/internal/asn$a$b;->b:Lcom/google/android/gms/internal/asn$a$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asn$a$b;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/ayg;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/ayg;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setUserId must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->C:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->o:Lcom/google/android/gms/internal/avo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->o:Lcom/google/android/gms/internal/avo;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/avo;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call the AppEventListener."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/gn;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/aw;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ayg;)Z
.end method

.method a(Lcom/google/android/gms/internal/gl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z
.end method

.method protected final b(Lcom/google/android/gms/internal/fk;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/fk;->a:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/gms/internal/fk;->b:I

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    new-instance v2, Lcom/google/android/gms/internal/dv;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ea;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call RewardedVideoAdListener.onRewarded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/gl;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->i:Lcom/google/android/gms/internal/aye;

    const-string v2, "awr"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ayg;->a(Lcom/google/android/gms/internal/aye;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    iget v0, p1, Lcom/google/android/gms/internal/gl;->d:I

    const/4 v1, 0x3

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/gl;->d:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->a()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->j()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/aw;->a()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gy;->a(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/gl;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/gl;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/gl;->d:I

    if-eq v0, v2, :cond_4

    iget v0, p1, Lcom/google/android/gms/internal/gl;->d:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->H:Lcom/google/android/gms/internal/asl;

    sget-object v1, Lcom/google/android/gms/internal/asn$a$b;->d:Lcom/google/android/gms/internal/asn$a$b;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/asl;->a(Lcom/google/android/gms/internal/asn$a$b;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->H:Lcom/google/android/gms/internal/asl;

    sget-object v1, Lcom/google/android/gms/internal/asn$a$b;->c:Lcom/google/android/gms/internal/asn$a$b;

    goto :goto_0

    :goto_1
    iget p1, p1, Lcom/google/android/gms/internal/gl;->d:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->E:Lcom/google/android/gms/internal/gx;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    new-instance v1, Lcom/google/android/gms/internal/gx;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->E:Lcom/google/android/gms/internal/gx;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ax;->a()Lcom/google/android/gms/internal/im;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gl;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/im;->d(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/apf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/apf;->a(Lcom/google/android/gms/internal/gl;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/gl;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-wide v2, v2, Lcom/google/android/gms/internal/gl;->x:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gn;->a(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-wide v2, v2, Lcom/google/android/gms/internal/gl;->y:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gn;->b(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/gl;->m:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gn;->b(Z)V

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/auh;->d:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gn;->a(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    const-string v1, "is_mraid"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gl;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "1"

    goto :goto_2

    :cond_9
    const-string v2, "0"

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    const-string v1, "is_mediation"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/gl;->m:Z

    if-eqz v2, :cond_a

    const-string v2, "1"

    goto :goto_3

    :cond_a
    const-string v2, "0"

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    const-string v1, "is_delay_pl"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v2, v2, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->u()Lcom/google/android/gms/internal/pk;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/pk;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "1"

    goto :goto_4

    :cond_b
    const-string v2, "0"

    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ayg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/aye;

    const-string v2, "ttc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ayg;->a(Lcom/google/android/gms/internal/aye;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gq;->b()Lcom/google/android/gms/internal/axw;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gq;->b()Lcom/google/android/gms/internal/axw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/axw;->a(Lcom/google/android/gms/internal/ayg;)Z

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->B()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->w()V

    :cond_e
    iget-object v0, p1, Lcom/google/android/gms/internal/gl;->G:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/gl;->G:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method public b(Z)V
    .locals 0

    const-string p1, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/aud;)Z
    .locals 3

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->k()Lcom/google/android/gms/internal/arw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/arw;->a()V

    sget-object v0, Lcom/google/android/gms/internal/axt;->aG:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aud;->a()Lcom/google/android/gms/internal/aud;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/axt;->aH:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/aud;->c:Landroid/os/Bundle;

    const-string v1, "_newBundle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/h;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/aud;->k:Landroid/location/Location;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/aue;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/aue;-><init>(Lcom/google/android/gms/internal/aud;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aue;->a(Landroid/location/Location;)Lcom/google/android/gms/internal/aue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aue;->a()Lcom/google/android/gms/internal/aud;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->g:Lcom/google/android/gms/internal/ha;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/aye;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ayg;->a()Lcom/google/android/gms/internal/aye;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/aye;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/aud;->f:Z

    if-eqz v0, :cond_3

    const-string v0, "This request is sent from a test device."

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/jz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to get test ads on this device."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/al;->a(Lcom/google/android/gms/internal/aud;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ayg;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ayg;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    return p1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/internal/aud;

    if-eqz v0, :cond_5

    const-string v0, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v0, "Loading already in progress, saving this object for future refreshes."

    goto :goto_3

    :goto_4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/internal/aud;

    const/4 p1, 0x0

    return p1
.end method

.method public c(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onImmersiveModeUpdated is not supported for current ad type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c(Lcom/google/android/gms/internal/aud;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ax;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/hs;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected d(Z)V
    .locals 1

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/auy;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call AdListener.onAdLoaded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ej;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->l:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->b()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/internal/gl;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v1, v1, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v2, v2, Lcom/google/android/gms/internal/gl;->c:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->m:Lcom/google/android/gms/internal/auv;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->m:Lcom/google/android/gms/internal/auv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auv;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdClicked event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->u()V

    return-void
.end method

.method public final i()Lcom/google/android/gms/ads/internal/br;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/ads/internal/br;

    return-object v0
.end method

.method public j()V
    .locals 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/al;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/apf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/apf;->b(Lcom/google/android/gms/internal/gl;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ax;->b()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->o:Lcom/google/android/gms/internal/avo;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->A:Lcom/google/android/gms/internal/ayn;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->p:Lcom/google/android/gms/internal/avv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/aw;->a(Z)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ax;->removeAllViews()V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->b()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aw;->c()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    return-void
.end method

.method public final k()Lcom/google/android/gms/b/a;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->f:Lcom/google/android/gms/ads/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/auh;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/axa;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->i:Lcom/google/android/gms/internal/auh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/axa;-><init>(Lcom/google/android/gms/internal/auh;)V

    return-object v0
.end method

.method public final m()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->g:Lcom/google/android/gms/internal/ha;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->h:Lcom/google/android/gms/internal/il;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 3

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gl;->E:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v1, v1, Lcom/google/android/gms/internal/bff;->h:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    iget-object v1, v1, Lcom/google/android/gms/internal/gl;->n:Lcom/google/android/gms/internal/bff;

    iget-object v1, v1, Lcom/google/android/gms/internal/bff;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/aw;->e:Lcom/google/android/gms/internal/km;

    iget-object v2, v2, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->j:Lcom/google/android/gms/internal/gl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/gl;->E:Z

    :cond_4
    return-void
.end method

.method public o()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/aw;->a(Z)V

    return-void
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Z

    return v0
.end method

.method public s()Lcom/google/android/gms/internal/awd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected t()V
    .locals 2

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ej;->d()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final u()V
    .locals 2

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ej;->e()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final v()V
    .locals 2

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ej;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected w()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->d(Z)V

    return-void
.end method

.method public final x()V
    .locals 2

    const-string v0, "Ad impression."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdImpression()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 2

    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->n:Lcom/google/android/gms/internal/auy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auy;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClicked()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected final z()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->B:Lcom/google/android/gms/internal/ej;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ej;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onVideoStarted()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
