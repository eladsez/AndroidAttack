.class public final Lcom/google/android/gms/internal/ads/bcc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/bbr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bbr<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bbt<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/bbu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bbu<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/baq;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/bbt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/baq;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bbu<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/bbt<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcc;->c:Lcom/google/android/gms/internal/ads/baq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcc;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bcc;->b:Lcom/google/android/gms/internal/ads/bbu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bcc;->a:Lcom/google/android/gms/internal/ads/bbt;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bcc;)Lcom/google/android/gms/internal/ads/bbt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bcc;->a:Lcom/google/android/gms/internal/ads/bbt;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/bbn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bbd;",
            "Lcom/google/android/gms/internal/ads/bbn;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/nz<",
            "TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/jw;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/o;->o:Lcom/google/android/gms/ads/internal/gmsg/g;

    new-instance v2, Lcom/google/android/gms/internal/ads/bcf;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/bcf;-><init>(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/nz;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/gmsg/g;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/h;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcc;->b:Lcom/google/android/gms/internal/ads/bbu;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/bbu;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bcc;->d:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/bbn;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/nz;->a(Ljava/lang/Throwable;)V

    const-string p3, "Unable to invokeJavaScript"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    throw p2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/bbn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bcc;->a(Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/bbn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/nz;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/no<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/bcc;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/no<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/nz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nz;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcc;->c:Lcom/google/android/gms/internal/ads/baq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/baq;->b(Lcom/google/android/gms/internal/ads/ahi;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bcd;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/bcd;-><init>(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/bbd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/nz;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/bce;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/bce;-><init>(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/bbd;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    return-object v0
.end method
