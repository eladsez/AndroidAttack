.class public final Lcom/google/android/gms/internal/aim;
.super Lcom/google/android/gms/internal/aio;


# instance fields
.field private a:Lcom/google/android/gms/internal/aiq;

.field private b:Z

.field private c:J

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Long;

.field private m:Ljava/lang/Long;

.field private n:Ljava/lang/Long;

.field private o:Ljava/lang/Long;

.field private p:[Lcom/google/android/gms/internal/ajo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aiq;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ain;->a()Lcom/google/android/gms/internal/ain;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/aim;-><init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ain;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ain;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/aio;-><init>(Lcom/google/android/gms/internal/ain;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/aim;->b:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/aim;->c:J

    iput-boolean p2, p0, Lcom/google/android/gms/internal/aim;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->a:Lcom/google/android/gms/internal/aiq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aio;->e()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aim;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aim;-><init>(Lcom/google/android/gms/internal/aiq;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/aim;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/aim;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/aji;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7d0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aji;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->e:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aim;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/aim;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aim;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/internal/aim;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->h:Ljava/lang/Long;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "CONNECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const-string v1, "TRACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_8
    const-string v1, "OPTIONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->f:Ljava/lang/Integer;

    goto :goto_2

    :pswitch_0
    const/16 p1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_8
        0x11336 -> :sswitch_7
        0x136ef -> :sswitch_6
        0x21c5e0 -> :sswitch_5
        0x2590a0 -> :sswitch_4
        0x4862828 -> :sswitch_3
        0x4c5f925 -> :sswitch_2
        0x638004ca -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/aim;->c:J

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/internal/aim;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->l:Ljava/lang/Long;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->k:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final d(J)Lcom/google/android/gms/internal/aim;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->m:Ljava/lang/Long;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/ajn;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aio;->f()V

    new-instance v0, Lcom/google/android/gms/internal/ajn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajn;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->f:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->g:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->c:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->h:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->d:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->i:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->e:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->j:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->f:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->l:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->h:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->m:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->i:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->n:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->j:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->o:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->k:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->p:[Lcom/google/android/gms/internal/ajo;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajn;->l:[Lcom/google/android/gms/internal/ajo;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aim;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->a:Lcom/google/android/gms/internal/aiq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aim;->a:Lcom/google/android/gms/internal/aiq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aio;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/aiq;->a(Lcom/google/android/gms/internal/ajn;I)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/aim;->b:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aim;->d:Z

    if-eqz v1, :cond_2

    const-string v1, "FirebasePerformance"

    const-string v2, "This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final e(J)Lcom/google/android/gms/internal/aim;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/aim;->c:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->n:Ljava/lang/Long;

    return-object p0
.end method

.method public final f(J)Lcom/google/android/gms/internal/aim;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/aim;->o:Ljava/lang/Long;

    return-object p0
.end method
