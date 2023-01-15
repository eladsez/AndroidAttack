.class public final Lcom/google/android/gms/internal/aeu;
.super Lcom/google/android/gms/internal/aky;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aeu$a;,
        Lcom/google/android/gms/internal/aeu$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aky<",
        "Lcom/google/android/gms/internal/aeu;",
        "Lcom/google/android/gms/internal/aeu$a;",
        ">;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# static fields
.field private static final g:Lcom/google/android/gms/internal/aeu;

.field private static volatile h:Lcom/google/android/gms/internal/amg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/amg<",
            "Lcom/google/android/gms/internal/aeu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/aka;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/aeu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aeu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aeu;->g:Lcom/google/android/gms/internal/aeu;

    sget v1, Lcom/google/android/gms/internal/aky$g;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/anb;->c()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aky;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aka;->a:Lcom/google/android/gms/internal/aka;

    iput-object v0, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/aeu$b;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aeu$b;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aeu;->f:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aeu;Lcom/google/android/gms/internal/aeu$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aeu;->a(Lcom/google/android/gms/internal/aeu$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aeu;Lcom/google/android/gms/internal/aka;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aeu;->a(Lcom/google/android/gms/internal/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aeu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aeu;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/aka;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static e()Lcom/google/android/gms/internal/aeu$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/aeu;->g:Lcom/google/android/gms/internal/aeu;

    sget v1, Lcom/google/android/gms/internal/aky$g;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky$a;

    check-cast v0, Lcom/google/android/gms/internal/aeu$a;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/aeu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aeu;->g:Lcom/google/android/gms/internal/aeu;

    return-object v0
.end method

.method static synthetic g()Lcom/google/android/gms/internal/aeu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aeu;->g:Lcom/google/android/gms/internal/aeu;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/aev;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/aeu;->h:Lcom/google/android/gms/internal/amg;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/aeu;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/aeu;->h:Lcom/google/android/gms/internal/amg;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/aky$b;

    sget-object p3, Lcom/google/android/gms/internal/aeu;->g:Lcom/google/android/gms/internal/aeu;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/aky$b;-><init>(Lcom/google/android/gms/internal/aky;)V

    sput-object p2, Lcom/google/android/gms/internal/aeu;->h:Lcom/google/android/gms/internal/amg;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/aeu;->h:Lcom/google/android/gms/internal/amg;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/akj;

    check-cast p3, Lcom/google/android/gms/internal/akq;

    if-eqz p3, :cond_8

    :cond_2
    :goto_1
    if-nez v2, :cond_7

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/akj;->a()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0xa

    if-eq p1, p3, :cond_5

    const/16 p3, 0x12

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/aky;->a(ILcom/google/android/gms/internal/akj;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/akj;->i()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aeu;->f:I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/akj;->g()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/akj;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ale; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/android/gms/internal/ale;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ale;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/ale;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ale;->a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/ale;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    throw p1

    :cond_7
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/aeu;->g:Lcom/google/android/gms/internal/aeu;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/aky$h;

    check-cast p3, Lcom/google/android/gms/internal/aeu;

    iget-object p1, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    iget-object v3, p3, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    iget-object v4, p3, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/aky$h;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    sget-object v0, Lcom/google/android/gms/internal/aka;->a:Lcom/google/android/gms/internal/aka;

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    iget-object v3, p3, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    sget-object v4, Lcom/google/android/gms/internal/aka;->a:Lcom/google/android/gms/internal/aka;

    if-eq v3, v4, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    iget-object v4, p3, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/aky$h;->a(ZLcom/google/android/gms/internal/aka;ZLcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    iget p1, p0, Lcom/google/android/gms/internal/aeu;->f:I

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    :goto_6
    iget v0, p0, Lcom/google/android/gms/internal/aeu;->f:I

    iget v3, p3, Lcom/google/android/gms/internal/aeu;->f:I

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    iget p3, p3, Lcom/google/android/gms/internal/aeu;->f:I

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/android/gms/internal/aky$h;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aeu;->f:I

    return-object p0

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/aeu$a;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/aeu$a;-><init>(Lcom/google/android/gms/internal/aev;)V

    return-object p1

    :pswitch_7
    return-object v0

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/aeu;->g:Lcom/google/android/gms/internal/aeu;

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/aeu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/aeu;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/akm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/akm;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/akm;->a(ILcom/google/android/gms/internal/aka;)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/aeu;->f:I

    sget-object v1, Lcom/google/android/gms/internal/aeu$b;->a:Lcom/google/android/gms/internal/aeu$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeu$b;->a()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/aeu;->f:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/akm;->b(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/anb;->a(Lcom/google/android/gms/internal/akm;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/aka;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/aeu$b;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aeu;->f:I

    invoke-static {v0}, Lcom/google/android/gms/internal/aeu$b;->a(I)Lcom/google/android/gms/internal/aeu$b;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/aeu$b;->f:Lcom/google/android/gms/internal/aeu$b;

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/aeu;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/aeu;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/akm;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/aeu;->e:Lcom/google/android/gms/internal/aka;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/akm;->c(ILcom/google/android/gms/internal/aka;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/aeu;->f:I

    sget-object v2, Lcom/google/android/gms/internal/aeu$b;->a:Lcom/google/android/gms/internal/aeu$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aeu$b;->a()I

    move-result v2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/aeu;->f:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/akm;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aeu;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/anb;->e()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/aeu;->c:I

    return v1
.end method
