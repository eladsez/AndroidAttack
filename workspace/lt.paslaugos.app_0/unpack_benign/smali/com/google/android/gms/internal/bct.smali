.class final Lcom/google/android/gms/internal/bct;
.super Lcom/google/android/gms/internal/lq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/lq<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bcs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bct;->a:Lcom/google/android/gms/internal/bcs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/lq;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bct;->a:Lcom/google/android/gms/internal/bcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcs;->a(Lcom/google/android/gms/internal/bcs;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/lq;->cancel(Z)Z

    move-result p1

    return p1
.end method
