.class public final Lcom/google/android/gms/internal/ads/abq$b;
.super Lcom/google/android/gms/internal/ads/aab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/abq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/abq<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/ads/aab<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/abq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/abq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aab;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abq$b;->a:Lcom/google/android/gms/internal/ads/abq;

    return-void
.end method
