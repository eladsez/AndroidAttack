.class public final Lcom/google/android/gms/internal/ads/xq$a;
.super Lcom/google/android/gms/internal/ads/abq$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/xq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq$a<",
        "Lcom/google/android/gms/internal/ads/xq;",
        "Lcom/google/android/gms/internal/ads/xq$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/xq;->b()Lcom/google/android/gms/internal/ads/xq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abq$a;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/xq$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xq$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/xq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xq;->a(Lcom/google/android/gms/internal/ads/xq;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/xq$b;)Lcom/google/android/gms/internal/ads/xq$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xq$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/xq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xq;->a(Lcom/google/android/gms/internal/ads/xq;Lcom/google/android/gms/internal/ads/xq$b;)V

    return-object p0
.end method
