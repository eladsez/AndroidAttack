.class public final Lcom/google/android/gms/internal/ads/yd$a;
.super Lcom/google/android/gms/internal/ads/abq$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/yd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq$a<",
        "Lcom/google/android/gms/internal/ads/yd;",
        "Lcom/google/android/gms/internal/ads/yd$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->c()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abq$a;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ye;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/yd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yd;->a(Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/xm;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yd$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/yd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yd;->a(Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;)V

    return-object p0
.end method