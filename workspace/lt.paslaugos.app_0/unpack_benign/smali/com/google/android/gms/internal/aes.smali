.class public final Lcom/google/android/gms/internal/aes;
.super Lcom/google/android/gms/internal/aky;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aes$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aky<",
        "Lcom/google/android/gms/internal/aes;",
        "Lcom/google/android/gms/internal/aes$a;",
        ">;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# static fields
.field private static final f:Lcom/google/android/gms/internal/aes;

.field private static volatile g:Lcom/google/android/gms/internal/amg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/amg<",
            "Lcom/google/android/gms/internal/aes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/aes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aes;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aes;->f:Lcom/google/android/gms/internal/aes;

    sget v1, Lcom/google/android/gms/internal/aky$g;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/aky;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/aky;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/anb;->c()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aky;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/aes;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aes;->f:Lcom/google/android/gms/internal/aes;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/aes;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aes;->f:Lcom/google/android/gms/internal/aes;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ael;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aes;->d:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ael;->a(I)Lcom/google/android/gms/internal/ael;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ael;->e:Lcom/google/android/gms/internal/ael;

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/aet;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/aes;->g:Lcom/google/android/gms/internal/amg;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/aes;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/aes;->g:Lcom/google/android/gms/internal/amg;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/aky$b;

    sget-object p3, Lcom/google/android/gms/internal/aes;->f:Lcom/google/android/gms/internal/aes;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/aky$b;-><init>(Lcom/google/android/gms/internal/aky;)V

    sput-object p2, Lcom/google/android/gms/internal/aes;->g:Lcom/google/android/gms/internal/amg;

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
    sget-object p1, Lcom/google/android/gms/internal/aes;->g:Lcom/google/android/gms/internal/amg;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/akj;

    check-cast p3, Lcom/google/android/gms/internal/akq;

    if-eqz p3, :cond_7

    :cond_2
    :goto_1
    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/akj;->a()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/aky;->a(ILcom/google/android/gms/internal/akj;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/akj;->h()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aes;->e:I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/akj;->i()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aes;->d:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ale; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
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

    :cond_6
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/aes;->f:Lcom/google/android/gms/internal/aes;

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/aky$h;

    check-cast p3, Lcom/google/android/gms/internal/aes;

    iget p1, p0, Lcom/google/android/gms/internal/aes;->d:I

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    iget v0, p0, Lcom/google/android/gms/internal/aes;->d:I

    iget v3, p3, Lcom/google/android/gms/internal/aes;->d:I

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    iget v4, p3, Lcom/google/android/gms/internal/aes;->d:I

    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/aky$h;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aes;->d:I

    iget p1, p0, Lcom/google/android/gms/internal/aes;->e:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    :goto_6
    iget v0, p0, Lcom/google/android/gms/internal/aes;->e:I

    iget v3, p3, Lcom/google/android/gms/internal/aes;->e:I

    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    iget p3, p3, Lcom/google/android/gms/internal/aes;->e:I

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/android/gms/internal/aky$h;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aes;->e:I

    return-object p0

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/aes$a;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/aes$a;-><init>(Lcom/google/android/gms/internal/aet;)V

    return-object p1

    :pswitch_7
    return-object v0

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/aes;->f:Lcom/google/android/gms/internal/aes;

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/aes;

    invoke-direct {p1}, Lcom/google/android/gms/internal/aes;-><init>()V

    return-object p1

    nop

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

.method public final a(Lcom/google/android/gms/internal/akm;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/aes;->d:I

    sget-object v1, Lcom/google/android/gms/internal/ael;->a:Lcom/google/android/gms/internal/ael;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ael;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/aes;->d:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/akm;->b(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/aes;->e:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/aes;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/akm;->c(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/anb;->a(Lcom/google/android/gms/internal/akm;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aes;->e:I

    return v0
.end method

.method public final d()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/aes;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/aes;->d:I

    sget-object v1, Lcom/google/android/gms/internal/ael;->a:Lcom/google/android/gms/internal/ael;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ael;->a()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/aes;->d:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/akm;->g(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/aes;->e:I

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/aes;->e:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/akm;->e(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->b:Lcom/google/android/gms/internal/anb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/anb;->e()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/aes;->c:I

    return v2
.end method
