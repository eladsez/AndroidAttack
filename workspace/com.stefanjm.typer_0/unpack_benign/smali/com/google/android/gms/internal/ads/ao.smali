.class public final Lcom/google/android/gms/internal/ads/ao;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/kp;
    .locals 8

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/dp;->g:Z

    if-eqz v4, :cond_0

    new-instance v7, Lcom/google/android/gms/internal/ads/au;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/au;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/internal/ads/qo;)V

    goto :goto_1

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/dp;->s:Z

    if-nez v4, :cond_3

    instance-of v4, p1, Lcom/google/android/gms/ads/internal/ae;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->ah:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/o;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/o;->j()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/qo;->t()Lcom/google/android/gms/internal/ads/sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sc;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v7, Lcom/google/android/gms/internal/ads/at;

    invoke-direct {v7, p0, p2, p4, p6}, Lcom/google/android/gms/internal/ads/at;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/ap;)V

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/ads/aq;

    invoke-direct {v7, p0, p2, p4, p6}, Lcom/google/android/gms/internal/ads/aq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/ap;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dp;->s:Z

    if-eqz v2, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/ads/internal/ae;

    if-eqz v2, :cond_4

    new-instance v7, Lcom/google/android/gms/internal/ads/aw;

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/ads/internal/ae;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ae;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/ap;Lcom/google/android/gms/internal/ads/ate;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/google/android/gms/internal/ads/ar;

    invoke-direct {v7, p2, p6}, Lcom/google/android/gms/internal/ads/ar;-><init>(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ap;)V

    :goto_1
    const-string v0, "AdRenderer: "

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/kp;->c()Ljava/lang/Object;

    return-object v7
.end method
