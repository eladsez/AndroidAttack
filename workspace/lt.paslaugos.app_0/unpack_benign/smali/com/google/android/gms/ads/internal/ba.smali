.class final synthetic Lcom/google/android/gms/ads/internal/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/al;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/al;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ba;->a:Lcom/google/android/gms/ads/internal/al;

    return-void
.end method

.method static a(Lcom/google/android/gms/ads/internal/al;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/ba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/ba;-><init>(Lcom/google/android/gms/ads/internal/al;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ba;->a:Lcom/google/android/gms/ads/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/al;->b()V

    return-void
.end method
