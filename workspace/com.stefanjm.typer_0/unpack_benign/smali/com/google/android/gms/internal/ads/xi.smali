.class public final enum Lcom/google/android/gms/internal/ads/xi;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/abt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/xi;",
        ">;",
        "Lcom/google/android/gms/internal/ads/abt;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/xi;

.field public static final enum b:Lcom/google/android/gms/internal/ads/xi;

.field public static final enum c:Lcom/google/android/gms/internal/ads/xi;

.field private static final enum d:Lcom/google/android/gms/internal/ads/xi;

.field private static final enum e:Lcom/google/android/gms/internal/ads/xi;

.field private static final f:Lcom/google/android/gms/internal/ads/abu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/abu<",
            "Lcom/google/android/gms/internal/ads/xi;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/google/android/gms/internal/ads/xi;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/ads/xi;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/xi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/xi;

    new-instance v0, Lcom/google/android/gms/internal/ads/xi;

    const-string v1, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/xi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/xi;

    new-instance v0, Lcom/google/android/gms/internal/ads/xi;

    const-string v1, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/xi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->d:Lcom/google/android/gms/internal/ads/xi;

    new-instance v0, Lcom/google/android/gms/internal/ads/xi;

    const-string v1, "DESTROYED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/xi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->e:Lcom/google/android/gms/internal/ads/xi;

    new-instance v0, Lcom/google/android/gms/internal/ads/xi;

    const-string v1, "UNRECOGNIZED"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/xi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->c:Lcom/google/android/gms/internal/ads/xi;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/xi;

    sget-object v1, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/xi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/xi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/xi;->d:Lcom/google/android/gms/internal/ads/xi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/xi;->e:Lcom/google/android/gms/internal/ads/xi;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/xi;->c:Lcom/google/android/gms/internal/ads/xi;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->h:[Lcom/google/android/gms/internal/ads/xi;

    new-instance v0, Lcom/google/android/gms/internal/ads/xj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->f:Lcom/google/android/gms/internal/ads/abu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/xi;->g:I

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/xi;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/xi;->e:Lcom/google/android/gms/internal/ads/xi;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/xi;->d:Lcom/google/android/gms/internal/ads/xi;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/xi;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/xi;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/xi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xi;->h:[Lcom/google/android/gms/internal/ads/xi;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/xi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/xi;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/xi;->c:Lcom/google/android/gms/internal/ads/xi;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/xi;->g:I

    return v0
.end method
