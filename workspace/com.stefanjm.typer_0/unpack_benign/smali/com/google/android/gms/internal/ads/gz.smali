.class public final Lcom/google/android/gms/internal/ads/gz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hb;->a(Lcom/google/android/gms/internal/ads/hb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hb;->b(Lcom/google/android/gms/internal/ads/hb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hb;->c(Lcom/google/android/gms/internal/ads/hb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hb;->d(Lcom/google/android/gms/internal/ads/hb;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gz;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/ha;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gz;-><init>(Lcom/google/android/gms/internal/ads/hb;)V

    return-void
.end method
