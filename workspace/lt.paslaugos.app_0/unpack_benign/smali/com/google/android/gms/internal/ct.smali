.class final synthetic Lcom/google/android/gms/internal/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kp;


# static fields
.field static final a:Lcom/google/android/gms/internal/kp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ct;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ct;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ct;->a:Lcom/google/android/gms/internal/kp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lf;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/cs;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/lf;

    move-result-object p1

    return-object p1
.end method
