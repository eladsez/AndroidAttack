.class public final Lcom/google/android/gms/internal/ads/xf;
.super Lcom/google/android/gms/internal/ads/abq;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/xf$a;,
        Lcom/google/android/gms/internal/ads/xf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq<",
        "Lcom/google/android/gms/internal/ads/xf;",
        "Lcom/google/android/gms/internal/ads/xf$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/adj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/adj<",
            "Lcom/google/android/gms/internal/ads/xf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdkv:Lcom/google/android/gms/internal/ads/xf;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdkt:Lcom/google/android/gms/internal/ads/aai;

.field private zzdku:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/xf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    const-class v0, Lcom/google/android/gms/internal/ads/xf;

    sget-object v1, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abq;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abq;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xf;->zzdks:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xf;->zzdkt:Lcom/google/android/gms/internal/ads/aai;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/aai;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xf;->zzdkt:Lcom/google/android/gms/internal/ads/aai;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/xf$b;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xf$b;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xf;->zzdku:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xf;Lcom/google/android/gms/internal/ads/aai;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Lcom/google/android/gms/internal/ads/aai;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xf;Lcom/google/android/gms/internal/ads/xf$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Lcom/google/android/gms/internal/ads/xf$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xf;->zzdks:Ljava/lang/String;

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/xf$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    sget v1, Lcom/google/android/gms/internal/ads/abq$e;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abq;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abq$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/xf$a;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/ads/xf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/internal/ads/xf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/xg;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/xf;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/xf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/xf;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abq$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abq$b;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/xf;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdks"

    aput-object v0, p1, p2

    const-string p2, "zzdkt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdku"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/xf;->zzdkv:Lcom/google/android/gms/internal/ads/xf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/xf;->a(Lcom/google/android/gms/internal/ads/acx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/xf$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/xf$a;-><init>(Lcom/google/android/gms/internal/ads/xg;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/xf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/xf;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xf;->zzdks:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/aai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xf;->zzdkt:Lcom/google/android/gms/internal/ads/aai;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/xf$b;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xf;->zzdku:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xf$b;->a(I)Lcom/google/android/gms/internal/ads/xf$b;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/xf$b;->f:Lcom/google/android/gms/internal/ads/xf$b;

    :cond_0
    return-object v0
.end method
