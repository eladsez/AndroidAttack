.class public final Lcom/google/android/gms/internal/ads/xb;
.super Lcom/google/android/gms/internal/ads/abq;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/xb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq<",
        "Lcom/google/android/gms/internal/ads/xb;",
        "Lcom/google/android/gms/internal/ads/xb$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/adj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/adj<",
            "Lcom/google/android/gms/internal/ads/xb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdko:Lcom/google/android/gms/internal/ads/xb;


# instance fields
.field private zzdir:I

.field private zzdkm:Lcom/google/android/gms/internal/ads/xd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/xb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    const-class v0, Lcom/google/android/gms/internal/ads/xb;

    sget-object v1, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abq;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abq;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/abq;->a(Lcom/google/android/gms/internal/ads/abq;Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/abq;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/xb;

    return-object p0
.end method

.method public static c()Lcom/google/android/gms/internal/ads/xb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/xb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/xd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->zzdkm:Lcom/google/android/gms/internal/ads/xd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/xd;->c()Lcom/google/android/gms/internal/ads/xd;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->zzdkm:Lcom/google/android/gms/internal/ads/xd;

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/xc;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/xb;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/xb;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/xb;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abq$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abq$b;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/xb;->zzakh:Lcom/google/android/gms/internal/ads/adj;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdkm"

    aput-object v0, p1, p2

    const-string p2, "zzdir"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b"

    sget-object p3, Lcom/google/android/gms/internal/ads/xb;->zzdko:Lcom/google/android/gms/internal/ads/xb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/xb;->a(Lcom/google/android/gms/internal/ads/acx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/xb$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/xb$a;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/xb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/xb;-><init>()V

    return-object p1

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

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xb;->zzdir:I

    return v0
.end method
