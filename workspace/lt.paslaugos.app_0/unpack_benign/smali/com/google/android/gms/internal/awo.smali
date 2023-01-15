.class final Lcom/google/android/gms/internal/awo;
.super Lcom/google/android/gms/internal/auu;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/awn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/awn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/awo;->a:Lcom/google/android/gms/internal/awn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/awo;->a:Lcom/google/android/gms/internal/awn;

    invoke-static {v0}, Lcom/google/android/gms/internal/awn;->a(Lcom/google/android/gms/internal/awn;)Lcom/google/android/gms/ads/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/awo;->a:Lcom/google/android/gms/internal/awn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/awn;->l()Lcom/google/android/gms/internal/awd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/internal/awd;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/auu;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/awo;->a:Lcom/google/android/gms/internal/awn;

    invoke-static {v0}, Lcom/google/android/gms/internal/awn;->a(Lcom/google/android/gms/internal/awn;)Lcom/google/android/gms/ads/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/awo;->a:Lcom/google/android/gms/internal/awn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/awn;->l()Lcom/google/android/gms/internal/awd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/internal/awd;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/auu;->a(I)V

    return-void
.end method
