.class public final Lcom/google/android/gms/internal/ads/wz$a;
.super Lcom/google/android/gms/internal/ads/abq$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/wz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq$a<",
        "Lcom/google/android/gms/internal/ads/wz;",
        "Lcom/google/android/gms/internal/ads/wz$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/wz;->f()Lcom/google/android/gms/internal/ads/wz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abq$a;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wz$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/wz$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wz$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast p1, Lcom/google/android/gms/internal/ads/wz;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wz;->a(Lcom/google/android/gms/internal/ads/wz;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wz$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/wz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wz;->a(Lcom/google/android/gms/internal/ads/wz;Lcom/google/android/gms/internal/ads/aai;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/xd;)Lcom/google/android/gms/internal/ads/wz$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/wz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wz;->a(Lcom/google/android/gms/internal/ads/wz;Lcom/google/android/gms/internal/ads/xd;)V

    return-object p0
.end method
