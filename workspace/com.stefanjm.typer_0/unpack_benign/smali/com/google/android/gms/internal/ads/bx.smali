.class final synthetic Lcom/google/android/gms/internal/ads/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/my;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bu;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bx;->a:Lcom/google/android/gms/internal/ads/bu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bx;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->a:Lcom/google/android/gms/internal/ads/bu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bx;->b:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/qo;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bu;->c(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qo;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method
