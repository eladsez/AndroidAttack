.class final Lcom/google/android/gms/internal/alp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aml;


# static fields
.field private static final b:Lcom/google/android/gms/internal/alw;


# instance fields
.field private final a:Lcom/google/android/gms/internal/alw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/alq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/alq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/alp;->b:Lcom/google/android/gms/internal/alw;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/alr;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/alw;

    invoke-static {}, Lcom/google/android/gms/internal/akx;->a()Lcom/google/android/gms/internal/akx;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/alp;->a()Lcom/google/android/gms/internal/alw;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/alr;-><init>([Lcom/google/android/gms/internal/alw;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/alp;-><init>(Lcom/google/android/gms/internal/alw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/alw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ala;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/alw;

    iput-object p1, p0, Lcom/google/android/gms/internal/alp;->a:Lcom/google/android/gms/internal/alw;

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/alw;
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

    check-cast v0, Lcom/google/android/gms/internal/alw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/alp;->b:Lcom/google/android/gms/internal/alw;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/alv;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/alv;->a()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/aky$g;->k:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/amk;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/amk<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/amm;->a(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/alp;->a:Lcom/google/android/gms/internal/alw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/alw;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/alv;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/alv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/aky;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/amm;->c()Lcom/google/android/gms/internal/ana;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/akt;->a()Lcom/google/android/gms/internal/akr;

    move-result-object v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/alv;->c()Lcom/google/android/gms/internal/alx;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/amc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/amc;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/amm;->a()Lcom/google/android/gms/internal/ana;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/akt;->b()Lcom/google/android/gms/internal/akr;

    move-result-object v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/alv;->c()Lcom/google/android/gms/internal/alx;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/amc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/amc;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/aky;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/alp;->a(Lcom/google/android/gms/internal/alv;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/amf;->b()Lcom/google/android/gms/internal/amd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/all;->b()Lcom/google/android/gms/internal/all;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/amm;->c()Lcom/google/android/gms/internal/ana;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/akt;->a()Lcom/google/android/gms/internal/akr;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/alu;->b()Lcom/google/android/gms/internal/als;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/amb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/alv;Lcom/google/android/gms/internal/amd;Lcom/google/android/gms/internal/all;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/als;)Lcom/google/android/gms/internal/amb;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/amf;->b()Lcom/google/android/gms/internal/amd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/all;->b()Lcom/google/android/gms/internal/all;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/amm;->c()Lcom/google/android/gms/internal/ana;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/alu;->b()Lcom/google/android/gms/internal/als;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/amb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/alv;Lcom/google/android/gms/internal/amd;Lcom/google/android/gms/internal/all;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/als;)Lcom/google/android/gms/internal/amb;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/alp;->a(Lcom/google/android/gms/internal/alv;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/amf;->a()Lcom/google/android/gms/internal/amd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/all;->a()Lcom/google/android/gms/internal/all;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/amm;->a()Lcom/google/android/gms/internal/ana;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/akt;->b()Lcom/google/android/gms/internal/akr;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/alu;->a()Lcom/google/android/gms/internal/als;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/amb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/alv;Lcom/google/android/gms/internal/amd;Lcom/google/android/gms/internal/all;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/als;)Lcom/google/android/gms/internal/amb;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/amf;->a()Lcom/google/android/gms/internal/amd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/all;->a()Lcom/google/android/gms/internal/all;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/amm;->b()Lcom/google/android/gms/internal/ana;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/alu;->a()Lcom/google/android/gms/internal/als;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/amb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/alv;Lcom/google/android/gms/internal/amd;Lcom/google/android/gms/internal/all;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/als;)Lcom/google/android/gms/internal/amb;

    move-result-object p1

    return-object p1
.end method
