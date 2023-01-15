.class public final Lcom/google/android/gms/internal/ads/wq$a;
.super Lcom/google/android/gms/internal/ads/abq$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/wq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abq$a<",
        "Lcom/google/android/gms/internal/ads/wq;",
        "Lcom/google/android/gms/internal/ads/wq$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/wq;->g()Lcom/google/android/gms/internal/ads/wq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abq$a;-><init>(Lcom/google/android/gms/internal/ads/abq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/wr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/wq$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wq$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast p1, Lcom/google/android/gms/internal/ads/wq;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wq;->a(Lcom/google/android/gms/internal/ads/wq;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wq$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/wq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wq;->a(Lcom/google/android/gms/internal/ads/wq;Lcom/google/android/gms/internal/ads/aai;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/wm;)Lcom/google/android/gms/internal/ads/wq$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/wq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wq;->a(Lcom/google/android/gms/internal/ads/wq;Lcom/google/android/gms/internal/ads/wm;)V

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wq$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq$a;->a:Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/wq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wq;->b(Lcom/google/android/gms/internal/ads/wq;Lcom/google/android/gms/internal/ads/aai;)V

    return-object p0
.end method
