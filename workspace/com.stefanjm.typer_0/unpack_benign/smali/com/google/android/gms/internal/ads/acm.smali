.class final Lcom/google/android/gms/internal/ads/acm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/adr;


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/acw;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/acw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/acn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/acn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/acm;->b:Lcom/google/android/gms/internal/ads/acw;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/aco;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/acw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/abp;->a()Lcom/google/android/gms/internal/ads/abp;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/acm;->a()Lcom/google/android/gms/internal/ads/acw;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aco;-><init>([Lcom/google/android/gms/internal/ads/acw;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/acm;-><init>(Lcom/google/android/gms/internal/ads/acw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/acw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/abs;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/acw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acm;->a:Lcom/google/android/gms/internal/ads/acw;

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/ads/acw;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/acw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/acm;->b:Lcom/google/android/gms/internal/ads/acw;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/acv;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/acv;->a()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/ads/abq$e;->h:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/adq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/adq<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acm;->a:Lcom/google/android/gms/internal/ads/acw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/acw;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/acv;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/acv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/ads/abq;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->c()Lcom/google/android/gms/internal/ads/aej;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/abh;->a()Lcom/google/android/gms/internal/ads/abf;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/acv;->c()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ade;->a(Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/ade;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->a()Lcom/google/android/gms/internal/ads/aej;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/abh;->b()Lcom/google/android/gms/internal/ads/abf;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/acv;->c()Lcom/google/android/gms/internal/ads/acx;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ade;->a(Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/ade;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/ads/abq;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/acm;->a(Lcom/google/android/gms/internal/ads/acv;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/adi;->b()Lcom/google/android/gms/internal/ads/adg;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->b()Lcom/google/android/gms/internal/ads/ach;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->c()Lcom/google/android/gms/internal/ads/aej;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/abh;->a()Lcom/google/android/gms/internal/ads/abf;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/acu;->b()Lcom/google/android/gms/internal/ads/acs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/acv;Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/ach;Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acs;)Lcom/google/android/gms/internal/ads/adb;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/adi;->b()Lcom/google/android/gms/internal/ads/adg;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->b()Lcom/google/android/gms/internal/ads/ach;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->c()Lcom/google/android/gms/internal/ads/aej;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/acu;->b()Lcom/google/android/gms/internal/ads/acs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/acv;Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/ach;Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acs;)Lcom/google/android/gms/internal/ads/adb;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/acm;->a(Lcom/google/android/gms/internal/ads/acv;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/ads/adi;->a()Lcom/google/android/gms/internal/ads/adg;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->a()Lcom/google/android/gms/internal/ads/ach;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->a()Lcom/google/android/gms/internal/ads/aej;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/abh;->b()Lcom/google/android/gms/internal/ads/abf;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/acu;->a()Lcom/google/android/gms/internal/ads/acs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/acv;Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/ach;Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acs;)Lcom/google/android/gms/internal/ads/adb;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/adi;->a()Lcom/google/android/gms/internal/ads/adg;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->a()Lcom/google/android/gms/internal/ads/ach;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->b()Lcom/google/android/gms/internal/ads/aej;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/acu;->a()Lcom/google/android/gms/internal/ads/acs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/adb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/acv;Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/ach;Lcom/google/android/gms/internal/ads/aej;Lcom/google/android/gms/internal/ads/abf;Lcom/google/android/gms/internal/ads/acs;)Lcom/google/android/gms/internal/ads/adb;

    move-result-object p1

    return-object p1
.end method
