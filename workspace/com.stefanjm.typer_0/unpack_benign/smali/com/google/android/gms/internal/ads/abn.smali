.class final enum Lcom/google/android/gms/internal/ads/abn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/abn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/abn;

.field public static final enum b:Lcom/google/android/gms/internal/ads/abn;

.field public static final enum c:Lcom/google/android/gms/internal/ads/abn;

.field public static final enum d:Lcom/google/android/gms/internal/ads/abn;

.field private static final synthetic f:[Lcom/google/android/gms/internal/ads/abn;


# instance fields
.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/abn;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abn;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/abn;->a:Lcom/google/android/gms/internal/ads/abn;

    new-instance v0, Lcom/google/android/gms/internal/ads/abn;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/abn;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/abn;->b:Lcom/google/android/gms/internal/ads/abn;

    new-instance v0, Lcom/google/android/gms/internal/ads/abn;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/abn;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/abn;->c:Lcom/google/android/gms/internal/ads/abn;

    new-instance v0, Lcom/google/android/gms/internal/ads/abn;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/abn;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/abn;->d:Lcom/google/android/gms/internal/ads/abn;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/abn;

    sget-object v1, Lcom/google/android/gms/internal/ads/abn;->a:Lcom/google/android/gms/internal/ads/abn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/abn;->b:Lcom/google/android/gms/internal/ads/abn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/abn;->c:Lcom/google/android/gms/internal/ads/abn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/abn;->d:Lcom/google/android/gms/internal/ads/abn;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/abn;->f:[Lcom/google/android/gms/internal/ads/abn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/abn;->e:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/abn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/abn;->f:[Lcom/google/android/gms/internal/ads/abn;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/abn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/abn;

    return-object v0
.end method
