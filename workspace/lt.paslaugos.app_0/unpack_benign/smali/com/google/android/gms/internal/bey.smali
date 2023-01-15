.class public final Lcom/google/android/gms/internal/bey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bem;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/bem<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/beo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/beo<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/beq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/beq<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/ads/internal/js/z;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/z;Ljava/lang/String;Lcom/google/android/gms/internal/beq;Lcom/google/android/gms/internal/beo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/js/z;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/beq<",
            "TI;>;",
            "Lcom/google/android/gms/internal/beo<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bey;->c:Lcom/google/android/gms/ads/internal/js/z;

    iput-object p2, p0, Lcom/google/android/gms/internal/bey;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bey;->b:Lcom/google/android/gms/internal/beq;

    iput-object p4, p0, Lcom/google/android/gms/internal/bey;->a:Lcom/google/android/gms/internal/beo;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bey;)Lcom/google/android/gms/internal/beo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bey;->a:Lcom/google/android/gms/internal/beo;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/ads/internal/js/b;Lcom/google/android/gms/ads/internal/js/k;Ljava/lang/Object;Lcom/google/android/gms/internal/lq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/js/b;",
            "Lcom/google/android/gms/ads/internal/js/k;",
            "TI;",
            "Lcom/google/android/gms/internal/lq<",
            "TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    invoke-static {}, Lcom/google/android/gms/internal/hs;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/k;->o:Lcom/google/android/gms/ads/internal/gmsg/e;

    new-instance v2, Lcom/google/android/gms/internal/bfb;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/bfb;-><init>(Lcom/google/android/gms/internal/bey;Lcom/google/android/gms/ads/internal/js/b;Lcom/google/android/gms/internal/lq;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/gmsg/e;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/f;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/bey;->b:Lcom/google/android/gms/internal/beq;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/beq;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/bey;->d:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/ads/internal/js/k;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/Throwable;)V

    const-string p3, "Unable to invokeJavaScript"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/b;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/b;->a()V

    throw p2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bey;Lcom/google/android/gms/ads/internal/js/b;Lcom/google/android/gms/ads/internal/js/k;Ljava/lang/Object;Lcom/google/android/gms/internal/lq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bey;->a(Lcom/google/android/gms/ads/internal/js/b;Lcom/google/android/gms/ads/internal/js/k;Ljava/lang/Object;Lcom/google/android/gms/internal/lq;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/lf<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bey;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/lf<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lq;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/bey;->c:Lcom/google/android/gms/ads/internal/js/z;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/js/z;->b(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/b;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bez;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/bez;-><init>(Lcom/google/android/gms/internal/bey;Lcom/google/android/gms/ads/internal/js/b;Ljava/lang/Object;Lcom/google/android/gms/internal/lq;)V

    new-instance p1, Lcom/google/android/gms/internal/bfa;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/bfa;-><init>(Lcom/google/android/gms/internal/bey;Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/ads/internal/js/b;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lv;Lcom/google/android/gms/internal/lt;)V

    return-object v0
.end method
