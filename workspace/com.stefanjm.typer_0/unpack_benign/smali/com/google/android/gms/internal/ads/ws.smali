.class public final Lcom/google/android/gms/internal/ads/ws;
.super Lcom/google/android/gms/internal/ads/abq;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/ws$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq<",
        "Lcom/google/android/gms/internal/ads/ws;",
        "Lcom/google/android/gms/internal/ads/ws$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/adj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/adj<",
            "Lcom/google/android/gms/internal/ads/ws;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjx:Lcom/google/android/gms/internal/ads/ws;


# instance fields
.field private zzdju:I

.field private zzdjv:I

.field private zzdjw:Lcom/google/android/gms/internal/ads/aai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/ws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ws;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ws;->zzdjx:Lcom/google/android/gms/internal/ads/ws;

    const-class v0, Lcom/google/android/gms/internal/ads/ws;

    sget-object v1, Lcom/google/android/gms/internal/ads/ws;->zzdjx:Lcom/google/android/gms/internal/ads/ws;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abq;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abq;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ws;->zzdjw:Lcom/google/android/gms/internal/ads/aai;

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/ws;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ws;->zzdjx:Lcom/google/android/gms/internal/ads/ws;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/ws;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ws;->zzdjx:Lcom/google/android/gms/internal/ads/ws;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wu;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ws;->zzdju:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wu;->a(I)Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/wu;

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/wt;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/ws;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/ws;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/ws;->zzakh:Lcom/google/android/gms/internal/ads/adj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abq$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/ws;->zzdjx:Lcom/google/android/gms/internal/ads/ws;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abq$b;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/ws;->zzakh:Lcom/google/android/gms/internal/ads/adj;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/ws;->zzdjx:Lcom/google/android/gms/internal/ads/ws;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdju"

    aput-object v0, p1, p2

    const-string p2, "zzdjv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdjw"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u000b\u000b\u000c\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/ws;->zzdjx:Lcom/google/android/gms/internal/ads/ws;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/ws;->a(Lcom/google/android/gms/internal/ads/acx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/ws$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ws$a;-><init>(Lcom/google/android/gms/internal/ads/wt;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/ws;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ws;-><init>()V

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

.method public final b()Lcom/google/android/gms/internal/ads/wx;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ws;->zzdjv:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wx;->a(I)Lcom/google/android/gms/internal/ads/wx;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/wx;->d:Lcom/google/android/gms/internal/ads/wx;

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/aai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ws;->zzdjw:Lcom/google/android/gms/internal/ads/aai;

    return-object v0
.end method
