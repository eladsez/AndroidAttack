.class public final Lcom/google/android/gms/internal/ads/bcm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/agz;

.field public final c:Lcom/google/android/gms/internal/ads/df;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/df;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bcm;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcm;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcm;->b:Lcom/google/android/gms/internal/ads/agz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcm;->c:Lcom/google/android/gms/internal/ads/df;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/agz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/agz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bcm;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcm;->b:Lcom/google/android/gms/internal/ads/agz;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcm;->c:Lcom/google/android/gms/internal/ads/df;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/df;)Lcom/google/android/gms/internal/ads/bcm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/df;",
            ")",
            "Lcom/google/android/gms/internal/ads/bcm<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/bcm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bcm;-><init>(Lcom/google/android/gms/internal/ads/df;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/agz;)Lcom/google/android/gms/internal/ads/bcm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/agz;",
            ")",
            "Lcom/google/android/gms/internal/ads/bcm<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/bcm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bcm;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/agz;)V

    return-object v0
.end method
