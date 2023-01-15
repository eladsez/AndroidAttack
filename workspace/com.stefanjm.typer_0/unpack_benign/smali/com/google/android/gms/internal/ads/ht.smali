.class final synthetic Lcom/google/android/gms/internal/ads/ht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/my;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ht;->a:Lcom/google/android/gms/internal/ads/hs;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ht;->a:Lcom/google/android/gms/internal/ads/hs;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hs;->a(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method
