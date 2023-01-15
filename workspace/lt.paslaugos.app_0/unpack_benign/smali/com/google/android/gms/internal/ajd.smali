.class public final enum Lcom/google/android/gms/internal/ajd;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ajd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ajd;

.field public static final enum b:Lcom/google/android/gms/internal/ajd;

.field public static final enum c:Lcom/google/android/gms/internal/ajd;

.field public static final enum d:Lcom/google/android/gms/internal/ajd;

.field public static final enum e:Lcom/google/android/gms/internal/ajd;

.field public static final enum f:Lcom/google/android/gms/internal/ajd;

.field private static final synthetic h:[Lcom/google/android/gms/internal/ajd;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ajd;

    const-string v1, "APP_START_TRACE_NAME"

    const-string v2, "_as"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ajd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajd;->a:Lcom/google/android/gms/internal/ajd;

    new-instance v0, Lcom/google/android/gms/internal/ajd;

    const-string v1, "ON_CREATE_TRACE_NAME"

    const-string v2, "_astui"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ajd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajd;->b:Lcom/google/android/gms/internal/ajd;

    new-instance v0, Lcom/google/android/gms/internal/ajd;

    const-string v1, "ON_START_TRACE_NAME"

    const-string v2, "_astfd"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ajd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajd;->c:Lcom/google/android/gms/internal/ajd;

    new-instance v0, Lcom/google/android/gms/internal/ajd;

    const-string v1, "ON_RESUME_TRACE_NAME"

    const-string v2, "_asti"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/internal/ajd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajd;->d:Lcom/google/android/gms/internal/ajd;

    new-instance v0, Lcom/google/android/gms/internal/ajd;

    const-string v1, "FOREGROUND_TRACE_NAME"

    const-string v2, "_fs"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ajd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajd;->e:Lcom/google/android/gms/internal/ajd;

    new-instance v0, Lcom/google/android/gms/internal/ajd;

    const-string v1, "BACKGROUND_TRACE_NAME"

    const-string v2, "_bs"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ajd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ajd;->f:Lcom/google/android/gms/internal/ajd;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/ajd;

    sget-object v1, Lcom/google/android/gms/internal/ajd;->a:Lcom/google/android/gms/internal/ajd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ajd;->b:Lcom/google/android/gms/internal/ajd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ajd;->c:Lcom/google/android/gms/internal/ajd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ajd;->d:Lcom/google/android/gms/internal/ajd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ajd;->e:Lcom/google/android/gms/internal/ajd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ajd;->f:Lcom/google/android/gms/internal/ajd;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/android/gms/internal/ajd;->h:[Lcom/google/android/gms/internal/ajd;

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

    iput-object p3, p0, Lcom/google/android/gms/internal/ajd;->g:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ajd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ajd;->h:[Lcom/google/android/gms/internal/ajd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ajd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ajd;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ajd;->g:Ljava/lang/String;

    return-object v0
.end method
