.class public final Lcom/google/android/gms/internal/ads/bch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/bcg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/no;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/google/android/gms/internal/ads/no<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object p1

    return-object p1
.end method
