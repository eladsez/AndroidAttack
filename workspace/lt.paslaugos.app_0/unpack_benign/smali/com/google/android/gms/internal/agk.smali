.class public final enum Lcom/google/android/gms/internal/agk;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/agk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/agk;

.field public static final enum b:Lcom/google/android/gms/internal/agk;

.field private static final synthetic c:[Lcom/google/android/gms/internal/agk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/agk;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/agk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/agk;->a:Lcom/google/android/gms/internal/agk;

    new-instance v0, Lcom/google/android/gms/internal/agk;

    const-string v1, "COMPRESSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/agk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/agk;->b:Lcom/google/android/gms/internal/agk;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/agk;

    sget-object v1, Lcom/google/android/gms/internal/agk;->a:Lcom/google/android/gms/internal/agk;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/agk;->b:Lcom/google/android/gms/internal/agk;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/agk;->c:[Lcom/google/android/gms/internal/agk;

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

.method public static values()[Lcom/google/android/gms/internal/agk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/agk;->c:[Lcom/google/android/gms/internal/agk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/agk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/agk;

    return-object v0
.end method
