.class final Lcom/google/android/gms/internal/awu;
.super Lcom/google/android/gms/internal/avc;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aws;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aws;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/awu;->a:Lcom/google/android/gms/internal/aws;

    invoke-direct {p0}, Lcom/google/android/gms/internal/avc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/aws;Lcom/google/android/gms/internal/awt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/awu;-><init>(Lcom/google/android/gms/internal/aws;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/aud;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/awu;->a(Lcom/google/android/gms/internal/aud;I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aud;I)V
    .locals 0

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/jz;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/awv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/awv;-><init>(Lcom/google/android/gms/internal/awu;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
