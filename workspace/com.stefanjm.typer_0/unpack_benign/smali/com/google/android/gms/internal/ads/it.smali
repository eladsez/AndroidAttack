.class public final Lcom/google/android/gms/internal/ads/it;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/dl;

.field public final b:Lcom/google/android/gms/internal/ads/dp;

.field public final c:Lcom/google/android/gms/internal/ads/bck;

.field public final d:Lcom/google/android/gms/internal/ads/aou;

.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:Lorg/json/JSONObject;

.field public final i:Lcom/google/android/gms/internal/ads/amx;

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dp;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/aou;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/amx;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/it;->c:Lcom/google/android/gms/internal/ads/bck;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iput p5, p0, Lcom/google/android/gms/internal/ads/it;->e:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/it;->f:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/it;->g:J

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/it;->h:Lorg/json/JSONObject;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    if-eqz p12, :cond_0

    invoke-virtual {p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/it;->j:Z

    return-void

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ma;->a(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dp;Lcom/google/android/gms/internal/ads/bck;Lcom/google/android/gms/internal/ads/aou;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/anc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/it;->b:Lcom/google/android/gms/internal/ads/dp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/it;->c:Lcom/google/android/gms/internal/ads/bck;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/it;->d:Lcom/google/android/gms/internal/ads/aou;

    iput p5, p0, Lcom/google/android/gms/internal/ads/it;->e:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/it;->f:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/it;->g:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/it;->h:Lorg/json/JSONObject;

    new-instance p1, Lcom/google/android/gms/internal/ads/amx;

    invoke-direct {p1, p11}, Lcom/google/android/gms/internal/ads/amx;-><init>(Lcom/google/android/gms/internal/ads/anc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/it;->i:Lcom/google/android/gms/internal/ads/amx;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/it;->j:Z

    return-void
.end method
