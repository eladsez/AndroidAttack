.class final Lcom/google/android/gms/internal/ads/axv;
.super Lcom/google/android/gms/internal/ads/nz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/nz<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/axu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/axu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axv;->a:Lcom/google/android/gms/internal/ads/axu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nz;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axv;->a:Lcom/google/android/gms/internal/ads/axu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/axu;->a(Lcom/google/android/gms/internal/ads/axu;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/nz;->cancel(Z)Z

    move-result p1

    return p1
.end method
