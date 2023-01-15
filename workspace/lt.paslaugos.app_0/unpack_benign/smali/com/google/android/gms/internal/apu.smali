.class final Lcom/google/android/gms/internal/apu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/aa<",
        "Lcom/google/android/gms/internal/nu;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/aps;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aps;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/apu;->a:Lcom/google/android/gms/internal/aps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/apu;->a:Lcom/google/android/gms/internal/aps;

    invoke-static {p1}, Lcom/google/android/gms/internal/aps;->a(Lcom/google/android/gms/internal/aps;)Lcom/google/android/gms/internal/apg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/apu;->a:Lcom/google/android/gms/internal/aps;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/apg;->a(Lcom/google/android/gms/internal/aqf;Ljava/util/Map;)V

    return-void
.end method
