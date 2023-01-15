.class public final Lcom/google/android/gms/internal/ads/bag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/azy;
.implements Lcom/google/android/gms/internal/ads/bae;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qo;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/ads/internal/bu;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bag;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->f()Lcom/google/android/gms/internal/ads/qv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/sc;->a()Lcom/google/android/gms/internal/ads/sc;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Lcom/google/android/gms/internal/ads/amx;->a()Lcom/google/android/gms/internal/ads/amx;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/qv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sc;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/ate;Lcom/google/android/gms/ads/internal/aq;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/amx;)Lcom/google/android/gms/internal/ads/qo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bag;)Lcom/google/android/gms/internal/ads/qo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    return-object p0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/jw;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->destroy()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/baf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/baj;->a(Lcom/google/android/gms/internal/ads/baf;)Lcom/google/android/gms/internal/ads/ry;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/ry;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/bal;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bal;-><init>(Lcom/google/android/gms/internal/ads/bag;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bag;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    new-instance v1, Lcom/google/android/gms/internal/ads/bao;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/bao;-><init>(Lcom/google/android/gms/internal/ads/bag;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->a(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->a(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->b(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/bbo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bbp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bbp;-><init>(Lcom/google/android/gms/internal/ads/bbn;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bah;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bah;-><init>(Lcom/google/android/gms/internal/ads/bag;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bag;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    new-instance v1, Lcom/google/android/gms/internal/ads/bai;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/bai;-><init>(Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/azz;->a(Lcom/google/android/gms/internal/ads/azy;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bam;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bam;-><init>(Lcom/google/android/gms/internal/ads/bag;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bag;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ban;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ban;-><init>(Lcom/google/android/gms/internal/ads/bag;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bag;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;)V

    return-void
.end method
