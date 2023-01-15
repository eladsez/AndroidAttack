.class public final enum Lcom/google/android/gms/internal/ajc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ajc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ajc;

.field public static final enum b:Lcom/google/android/gms/internal/ajc;

.field public static final enum c:Lcom/google/android/gms/internal/ajc;

.field private static final synthetic e:[Lcom/google/android/gms/internal/ajc;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ajc;

    const-string v1, "TRACE_EVENT_RATE_LIMITED"

    const-string v2, "_fstec"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ajc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajc;->a:Lcom/google/android/gms/internal/ajc;

    new-instance v0, Lcom/google/android/gms/internal/ajc;

    const-string v1, "NETWORK_TRACE_EVENT_RATE_LIMITED"

    const-string v2, "_fsntc"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ajc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajc;->b:Lcom/google/android/gms/internal/ajc;

    new-instance v0, Lcom/google/android/gms/internal/ajc;

    const-string v1, "TRACE_STARTED_NOT_STOPPED"

    const-string v2, "_tsns"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ajc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajc;->c:Lcom/google/android/gms/internal/ajc;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ajc;

    sget-object v1, Lcom/google/android/gms/internal/ajc;->a:Lcom/google/android/gms/internal/ajc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ajc;->b:Lcom/google/android/gms/internal/ajc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ajc;->c:Lcom/google/android/gms/internal/ajc;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ajc;->e:[Lcom/google/android/gms/internal/ajc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ajc;->d:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ajc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ajc;->e:[Lcom/google/android/gms/internal/ajc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ajc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ajc;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ajc;->d:Ljava/lang/String;

    return-object v0
.end method
