.class final synthetic Lcom/google/android/gms/ads/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/my;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/my;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/internal/ads/my;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/no;
    .locals 2

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "isSuccessful"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appSettingsJson"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->l()Lcom/google/android/gms/internal/ads/jp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/jp;->f(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object p1

    return-object p1
.end method
