.class public abstract Lcom/google/android/gms/internal/aya;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/aya;
    .annotation runtime Lcom/google/android/gms/internal/ak;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/aya;
    .annotation runtime Lcom/google/android/gms/internal/ak;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/aya;
    .annotation runtime Lcom/google/android/gms/internal/ak;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ayb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ayb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aya;->a:Lcom/google/android/gms/internal/aya;

    new-instance v0, Lcom/google/android/gms/internal/ayc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ayc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aya;->b:Lcom/google/android/gms/internal/aya;

    new-instance v0, Lcom/google/android/gms/internal/ayd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ayd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aya;->c:Lcom/google/android/gms/internal/aya;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
