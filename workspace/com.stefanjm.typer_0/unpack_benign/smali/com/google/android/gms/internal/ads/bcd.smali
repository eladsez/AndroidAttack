.class final Lcom/google/android/gms/internal/ads/bcd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe<",
        "Lcom/google/android/gms/internal/ads/bbn;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bbd;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/nz;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/bcc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/bbd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcd;->d:Lcom/google/android/gms/internal/ads/bcc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bbd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bcd;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bcd;->c:Lcom/google/android/gms/internal/ads/nz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/bbn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->d:Lcom/google/android/gms/internal/ads/bcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bbd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcd;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bcd;->c:Lcom/google/android/gms/internal/ads/nz;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/bcc;->a(Lcom/google/android/gms/internal/ads/bcc;Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/bbn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/nz;)V

    return-void
.end method
