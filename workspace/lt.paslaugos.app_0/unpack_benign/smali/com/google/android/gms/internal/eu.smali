.class public final Lcom/google/android/gms/internal/eu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ew;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ew;->a(Lcom/google/android/gms/internal/ew;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eu;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ew;->b(Lcom/google/android/gms/internal/ew;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eu;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ew;->c(Lcom/google/android/gms/internal/ew;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/eu;->b:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ew;->d(Lcom/google/android/gms/internal/ew;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/eu;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/ev;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eu;-><init>(Lcom/google/android/gms/internal/ew;)V

    return-void
.end method
