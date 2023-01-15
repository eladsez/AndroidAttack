.class public abstract Lcom/google/android/gms/internal/aky;
.super Lcom/google/android/gms/internal/aju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aky$f;,
        Lcom/google/android/gms/internal/aky$e;,
        Lcom/google/android/gms/internal/aky$c;,
        Lcom/google/android/gms/internal/aky$h;,
        Lcom/google/android/gms/internal/aky$b;,
        Lcom/google/android/gms/internal/aky$d;,
        Lcom/google/android/gms/internal/aky$a;,
        Lcom/google/android/gms/internal/aky$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/aky<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/aky$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/aju<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/aky<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lcom/google/android/gms/internal/anb;

.field protected c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aky;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aju;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/anb;->a()Lcom/google/android/gms/internal/anb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aky;->c:I

    return-void
.end method

.method protected static a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aky;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/aky<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/aka;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/akq;->a()Lcom/google/android/gms/internal/akq;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/aky;->a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/aka;Lcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/aky$g;->c:I

    invoke-virtual {p0, v3, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    sget v3, Lcom/google/android/gms/internal/aky$g;->a:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_4

    sget v2, Lcom/google/android/gms/internal/aky$g;->d:I

    if-eqz v3, :cond_3

    move-object v4, p0

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    invoke-virtual {p0, v2, v4, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/amz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/amz;-><init>(Lcom/google/android/gms/internal/alx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/amz;->a()Lcom/google/android/gms/internal/ale;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ale;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/ale;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    if-eqz p0, :cond_d

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/aky$g;->c:I

    invoke-virtual {p0, v3, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_7

    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    sget v3, Lcom/google/android/gms/internal/aky$g;->a:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 p1, 0x1

    :cond_9
    if-eqz v2, :cond_b

    sget v0, Lcom/google/android/gms/internal/aky$g;->d:I

    if-eqz p1, :cond_a

    move-object v2, p0

    goto :goto_4

    :cond_a
    move-object v2, v1

    :goto_4
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/amz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/amz;-><init>(Lcom/google/android/gms/internal/alx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/amz;->a()Lcom/google/android/gms/internal/ale;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ale;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/ale;

    move-result-object p0

    throw p0

    :cond_d
    :goto_6
    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/aka;Lcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/aky<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/aka;",
            "Lcom/google/android/gms/internal/akq;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->d()Lcom/google/android/gms/internal/akj;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aky;->a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/akj;Lcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/akj;->a(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ale; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ale;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/ale;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ale; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method static a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/akj;Lcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/aky<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/akj;",
            "Lcom/google/android/gms/internal/akq;",
            ")TT;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/aky$g;->g:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/aky;

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/aky$g;->e:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/google/android/gms/internal/aky$g;->f:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/anb;->c()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ale;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ale;

    throw p0

    :cond_0
    throw p0
.end method

.method protected static a(Lcom/google/android/gms/internal/aky;[B)Lcom/google/android/gms/internal/aky;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/aky<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/akq;->a()Lcom/google/android/gms/internal/akq;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/aky;->a(Lcom/google/android/gms/internal/aky;[BLcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/google/android/gms/internal/aky$g;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Lcom/google/android/gms/internal/aky$g;->a:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz p1, :cond_4

    sget p1, Lcom/google/android/gms/internal/aky$g;->d:I

    if-eqz v2, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/amz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/amz;-><init>(Lcom/google/android/gms/internal/alx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/amz;->a()Lcom/google/android/gms/internal/ale;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ale;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/ale;

    move-result-object p0

    throw p0

    :cond_6
    :goto_2
    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/aky;[BLcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/aky<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/akq;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/akj;->a([B)Lcom/google/android/gms/internal/akj;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aky;->a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/akj;Lcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/akj;->a(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ale; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ale;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/ale;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ale; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static l()Lcom/google/android/gms/internal/ald;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ald<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ami;->d()Lcom/google/android/gms/internal/ami;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public a(Lcom/google/android/gms/internal/akm;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/amh;->a()Lcom/google/android/gms/internal/amh;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/amh;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/amk;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ako;->a(Lcom/google/android/gms/internal/akm;)Lcom/google/android/gms/internal/ako;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/amk;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/anr;)V

    return-void
.end method

.method protected final a(ILcom/google/android/gms/internal/akj;)Z
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-static {}, Lcom/google/android/gms/internal/anb;->a()Lcom/google/android/gms/internal/anb;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/anb;->b()Lcom/google/android/gms/internal/anb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/anb;->a(ILcom/google/android/gms/internal/akj;)Z

    move-result p1

    return p1
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/aky;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/amh;->a()Lcom/google/android/gms/internal/amh;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/amh;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/amk;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/amk;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aky;->c:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/aky;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/google/android/gms/internal/aky$g;->i:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aky;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/aky$c;->a:Lcom/google/android/gms/internal/aky$c;

    check-cast p1, Lcom/google/android/gms/internal/aky;

    sget v3, Lcom/google/android/gms/internal/aky$g;->b:I

    invoke-virtual {p0, v3, v1, p1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    iget-object p1, p1, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-interface {v1, v3, p1}, Lcom/google/android/gms/internal/aky$h;->a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;
    :try_end_0
    .catch Lcom/google/android/gms/internal/akz; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/aky;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/aky;->a:I

    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/aky$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aky$e;-><init>()V

    sget v1, Lcom/google/android/gms/internal/aky$g;->b:I

    invoke-virtual {p0, v1, v0, p0}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    iget-object v2, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/aky$h;->a(Lcom/google/android/gms/internal/anb;Lcom/google/android/gms/internal/anb;)Lcom/google/android/gms/internal/anb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    iget v0, v0, Lcom/google/android/gms/internal/aky$e;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/aky;->a:I

    iget v0, p0, Lcom/google/android/gms/internal/aky;->a:I

    return v0
.end method

.method public final synthetic m()Lcom/google/android/gms/internal/aly;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/aky$g;->h:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    return-object v0
.end method

.method public final synthetic n()Lcom/google/android/gms/internal/alx;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/aky$g;->i:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ama;->a(Lcom/google/android/gms/internal/alx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
