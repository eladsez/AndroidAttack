.class public final Lcom/google/android/gms/internal/ads/tv;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/xm;->f()Lcom/google/android/gms/internal/ads/xm$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/xm$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xm$a;

    move-result-object p1

    const-string p3, "type.googleapis.com/google.crypto.tink."

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/xm$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xm$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/xm$a;->a(I)Lcom/google/android/gms/internal/ads/xm$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/xm$a;->a(Z)Lcom/google/android/gms/internal/ads/xm$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/xm$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xm$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/abq;

    check-cast p0, Lcom/google/android/gms/internal/ads/xm;

    return-object p0
.end method
