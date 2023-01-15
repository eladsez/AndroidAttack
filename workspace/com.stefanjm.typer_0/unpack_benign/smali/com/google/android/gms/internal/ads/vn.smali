.class public final Lcom/google/android/gms/internal/ads/vn;
.super Lcom/google/android/gms/internal/ads/abq;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/vn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq<",
        "Lcom/google/android/gms/internal/ads/vn;",
        "Lcom/google/android/gms/internal/ads/vn$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/adj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/adj<",
            "Lcom/google/android/gms/internal/ads/vn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdiq:Lcom/google/android/gms/internal/ads/vn;


# instance fields
.field private zzdih:I

.field private zzdio:Lcom/google/android/gms/internal/ads/vr;

.field private zzdip:Lcom/google/android/gms/internal/ads/aai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/vn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    const-class v0, Lcom/google/android/gms/internal/ads/vn;

    sget-object v1, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abq;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abq;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->zzdip:Lcom/google/android/gms/internal/ads/aai;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/vn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/abq;->a(Lcom/google/android/gms/internal/ads/abq;Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/abq;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/vn;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/vn;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vn;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/vn;Lcom/google/android/gms/internal/ads/aai;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vn;->b(Lcom/google/android/gms/internal/ads/aai;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/vn;Lcom/google/android/gms/internal/ads/vr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vn;->a(Lcom/google/android/gms/internal/ads/vr;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/vr;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->zzdio:Lcom/google/android/gms/internal/ads/vr;

    return-void
.end method

.method private final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/vn;->zzdih:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/aai;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->zzdip:Lcom/google/android/gms/internal/ads/aai;

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/vn$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    sget v1, Lcom/google/android/gms/internal/ads/abq$e;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abq;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abq$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/vn$a;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/ads/vn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/internal/ads/vn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vn;->zzdih:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/vo;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/vn;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/vn;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/vn;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abq$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abq$b;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/vn;->zzakh:Lcom/google/android/gms/internal/ads/adj;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdih"

    aput-object v0, p1, p2

    const-string p2, "zzdio"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdip"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/vn;->zzdiq:Lcom/google/android/gms/internal/ads/vn;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/vn;->a(Lcom/google/android/gms/internal/ads/acx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/vn$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/vn$a;-><init>(Lcom/google/android/gms/internal/ads/vo;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/vn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vn;-><init>()V

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

.method public final b()Lcom/google/android/gms/internal/ads/vr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->zzdio:Lcom/google/android/gms/internal/ads/vr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vr;->b()Lcom/google/android/gms/internal/ads/vr;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->zzdio:Lcom/google/android/gms/internal/ads/vr;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/aai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->zzdip:Lcom/google/android/gms/internal/ads/aai;

    return-object v0
.end method
