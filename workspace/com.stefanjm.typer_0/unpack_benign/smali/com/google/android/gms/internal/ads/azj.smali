.class public final enum Lcom/google/android/gms/internal/ads/azj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/azj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/azj;

.field private static final enum b:Lcom/google/android/gms/internal/ads/azj;

.field private static final enum c:Lcom/google/android/gms/internal/ads/azj;

.field private static final enum d:Lcom/google/android/gms/internal/ads/azj;

.field private static final synthetic e:[Lcom/google/android/gms/internal/ads/azj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/azj;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/azj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/azj;->b:Lcom/google/android/gms/internal/ads/azj;

    new-instance v0, Lcom/google/android/gms/internal/ads/azj;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/azj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/azj;->a:Lcom/google/android/gms/internal/ads/azj;

    new-instance v0, Lcom/google/android/gms/internal/ads/azj;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/azj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/azj;->c:Lcom/google/android/gms/internal/ads/azj;

    new-instance v0, Lcom/google/android/gms/internal/ads/azj;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/azj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/azj;->d:Lcom/google/android/gms/internal/ads/azj;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/azj;

    sget-object v1, Lcom/google/android/gms/internal/ads/azj;->b:Lcom/google/android/gms/internal/ads/azj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/azj;->a:Lcom/google/android/gms/internal/ads/azj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/azj;->c:Lcom/google/android/gms/internal/ads/azj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/azj;->d:Lcom/google/android/gms/internal/ads/azj;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/azj;->e:[Lcom/google/android/gms/internal/ads/azj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/azj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/azj;->e:[Lcom/google/android/gms/internal/ads/azj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/azj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/azj;

    return-object v0
.end method
