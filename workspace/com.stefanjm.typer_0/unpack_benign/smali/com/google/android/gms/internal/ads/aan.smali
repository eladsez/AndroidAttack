.class final Lcom/google/android/gms/internal/ads/aan;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aaw;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aan;->b:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aan;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aaw;->a([B)Lcom/google/android/gms/internal/ads/aaw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aan;->a:Lcom/google/android/gms/internal/ads/aaw;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/aaj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/aai;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aan;->a:Lcom/google/android/gms/internal/ads/aaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaw;->b()V

    new-instance v0, Lcom/google/android/gms/internal/ads/aap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aan;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aap;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/aaw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aan;->a:Lcom/google/android/gms/internal/ads/aaw;

    return-object v0
.end method
