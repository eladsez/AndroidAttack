.class final synthetic Lcom/google/android/gms/internal/ads/fo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mz;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fo;->a:Lcom/google/android/gms/internal/ads/fn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fo;->a:Lcom/google/android/gms/internal/ads/fn;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fn;->a(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
