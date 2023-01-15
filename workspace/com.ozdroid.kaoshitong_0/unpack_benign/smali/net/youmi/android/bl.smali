.class Lnet/youmi/android/bl;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lnet/youmi/android/ar;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Lnet/youmi/android/ao;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/bl;->a:Z

    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/aj;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/youmi/android/aj;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/bl;->c:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/bl;->c:I

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/ap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/youmi/android/ap;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lnet/youmi/android/ap;->d()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lnet/youmi/android/bl;->a()I

    move-result v2

    invoke-static {p1, v2, v1, p3}, Lnet/youmi/android/bl;->a(Landroid/content/Context;ILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ap;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_2
    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/ap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/youmi/android/ap;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lnet/youmi/android/ap;->e()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lnet/youmi/android/bl;->a()I

    move-result v2

    invoke-static {p1, v2, v1, p3}, Lnet/youmi/android/bl;->a(Landroid/content/Context;ILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ap;->b(Z)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/bl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_3
    iget-object v0, p0, Lnet/youmi/android/bl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/aw;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lnet/youmi/android/aw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lnet/youmi/android/aw;->a()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lnet/youmi/android/bl;->a()I

    move-result v2

    invoke-static {p1, v2, v1, p3}, Lnet/youmi/android/bl;->a(Landroid/content/Context;ILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/aw;->a(Z)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lnet/youmi/android/bl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_4
    iget-object v0, p0, Lnet/youmi/android/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/bq;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lnet/youmi/android/bq;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lnet/youmi/android/bl;->a()I

    move-result v2

    invoke-static {p1, v2, v1, p3}, Lnet/youmi/android/bl;->a(Landroid/content/Context;ILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/bq;->a(Z)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :pswitch_4
    iget-object v0, p0, Lnet/youmi/android/bl;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_5
    iget-object v0, p0, Lnet/youmi/android/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/ci;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lnet/youmi/android/ci;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lnet/youmi/android/ci;->a()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lnet/youmi/android/bl;->a()I

    move-result v2

    invoke-static {p1, v2, v1, p3}, Lnet/youmi/android/bl;->a(Landroid/content/Context;ILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ci;->a(Z)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :pswitch_5
    iget-object v0, p0, Lnet/youmi/android/bl;->l:Lnet/youmi/android/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->l:Lnet/youmi/android/ao;

    invoke-virtual {v0}, Lnet/youmi/android/ao;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->l:Lnet/youmi/android/ao;

    invoke-virtual {v0}, Lnet/youmi/android/ao;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bl;->l:Lnet/youmi/android/ao;

    invoke-virtual {v0}, Lnet/youmi/android/ao;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/bl;->a()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lnet/youmi/android/bl;->a(Landroid/content/Context;ILjava/lang/String;I)V

    iget-object v0, p0, Lnet/youmi/android/bl;->l:Lnet/youmi/android/ao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ao;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->d:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    return-void
.end method

.method a(Lnet/youmi/android/ao;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->l:Lnet/youmi/android/ao;

    return-void
.end method

.method a(Lnet/youmi/android/ar;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/ar;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/bl;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->e:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->i:Ljava/util/ArrayList;

    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/bl;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->f:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->j:Ljava/util/ArrayList;

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->f:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->g:Ljava/lang/String;

    return-void
.end method

.method d(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->k:Ljava/util/ArrayList;

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/bl;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method g()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method h()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method i()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method j()Lnet/youmi/android/ao;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->l:Lnet/youmi/android/ao;

    return-object v0
.end method

.method k()Lnet/youmi/android/ar;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/ar;

    return-object v0
.end method
