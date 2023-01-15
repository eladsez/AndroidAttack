.class final synthetic Lcom/google/android/gms/internal/ads/ev;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/my;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/my;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ev;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ev;->a:Lcom/google/android/gms/internal/ads/my;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/eu;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/no;

    move-result-object p1

    return-object p1
.end method
