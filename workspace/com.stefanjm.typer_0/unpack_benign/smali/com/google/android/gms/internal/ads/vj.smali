.class public final Lcom/google/android/gms/internal/ads/vj;
.super Lcom/google/android/gms/internal/ads/abq;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/vj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq<",
        "Lcom/google/android/gms/internal/ads/vj;",
        "Lcom/google/android/gms/internal/ads/vj$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/adj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/adj<",
            "Lcom/google/android/gms/internal/ads/vj;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdik:Lcom/google/android/gms/internal/ads/vj;


# instance fields
.field private zzdih:I

.field private zzdii:Lcom/google/android/gms/internal/ads/vn;

.field private zzdij:Lcom/google/android/gms/internal/ads/wz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    const-class v0, Lcom/google/android/gms/internal/ads/vj;

    sget-object v1, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abq;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abq;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/vj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/abq;->a(Lcom/google/android/gms/internal/ads/abq;Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/abq;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/vj;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/vj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vj;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/vj;Lcom/google/android/gms/internal/ads/vn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/vn;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/vj;Lcom/google/android/gms/internal/ads/wz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/wz;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/vn;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj;->zzdii:Lcom/google/android/gms/internal/ads/vn;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/wz;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj;->zzdij:Lcom/google/android/gms/internal/ads/wz;

    return-void
.end method

.method private final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/vj;->zzdih:I

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/vj$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    sget v1, Lcom/google/android/gms/internal/ads/abq$e;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abq;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abq$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/vj$a;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/vj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdih:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/vk;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/vj;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/vj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/vj;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abq$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abq$b;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/vj;->zzakh:Lcom/google/android/gms/internal/ads/adj;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdih"

    aput-object v0, p1, p2

    const-string p2, "zzdii"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdij"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    sget-object p3, Lcom/google/android/gms/internal/ads/vj;->zzdik:Lcom/google/android/gms/internal/ads/vj;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/acx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/vj$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vj$a;-><init>(Lcom/google/android/gms/internal/ads/vk;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

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

.method public final b()Lcom/google/android/gms/internal/ads/vn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdii:Lcom/google/android/gms/internal/ads/vn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vn;->e()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdii:Lcom/google/android/gms/internal/ads/vn;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/wz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdij:Lcom/google/android/gms/internal/ads/wz;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wz;->e()Lcom/google/android/gms/internal/ads/wz;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj;->zzdij:Lcom/google/android/gms/internal/ads/wz;

    return-object v0
.end method
