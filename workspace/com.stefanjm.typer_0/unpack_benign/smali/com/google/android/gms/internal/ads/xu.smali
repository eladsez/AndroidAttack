.class public final Lcom/google/android/gms/internal/ads/xu;
.super Lcom/google/android/gms/internal/ads/abq;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/xu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq<",
        "Lcom/google/android/gms/internal/ads/xu;",
        "Lcom/google/android/gms/internal/ads/xu$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/adj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/adj<",
            "Lcom/google/android/gms/internal/ads/xu;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdme:Lcom/google/android/gms/internal/ads/xu;


# instance fields
.field private zzdmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/xu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    const-class v0, Lcom/google/android/gms/internal/ads/xu;

    sget-object v1, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abq;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abq;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->zzdmd:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/abq;->a(Lcom/google/android/gms/internal/ads/abq;Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/abq;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/xu;

    return-object p0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/xu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/gms/internal/ads/xu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/ads/xv;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/xu;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/xu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/xu;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abq$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abq$b;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/xu;->zzakh:Lcom/google/android/gms/internal/ads/adj;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    return-object p1

    :pswitch_4
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzdmd"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u0208"

    sget-object p3, Lcom/google/android/gms/internal/ads/xu;->zzdme:Lcom/google/android/gms/internal/ads/xu;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/xu;->a(Lcom/google/android/gms/internal/ads/acx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/xu$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/xu$a;-><init>(Lcom/google/android/gms/internal/ads/xv;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/xu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/xu;-><init>()V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu;->zzdmd:Ljava/lang/String;

    return-object v0
.end method
