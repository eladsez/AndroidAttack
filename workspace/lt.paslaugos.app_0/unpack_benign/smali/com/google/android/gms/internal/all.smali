.class Lcom/google/android/gms/internal/all;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/all;

.field private static final b:Lcom/google/android/gms/internal/all;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/aln;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aln;-><init>(Lcom/google/android/gms/internal/alm;)V

    sput-object v0, Lcom/google/android/gms/internal/all;->a:Lcom/google/android/gms/internal/all;

    new-instance v0, Lcom/google/android/gms/internal/alo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/alo;-><init>(Lcom/google/android/gms/internal/alm;)V

    sput-object v0, Lcom/google/android/gms/internal/all;->b:Lcom/google/android/gms/internal/all;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/alm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/all;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/all;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/all;->a:Lcom/google/android/gms/internal/all;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/all;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/all;->b:Lcom/google/android/gms/internal/all;

    return-object v0
.end method
