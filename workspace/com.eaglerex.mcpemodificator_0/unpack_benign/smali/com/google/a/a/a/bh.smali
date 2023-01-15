.class public Lcom/google/a/a/a/bh;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/a/a/a/bi;

.field private final c:Ljava/util/Map;

.field private d:Lcom/google/a/a/a/ba;

.field private final e:Lcom/google/a/a/a/j;

.field private final f:Lcom/google/a/a/a/bb;

.field private final g:Lcom/google/a/a/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/bi;)V
    .locals 8

    invoke-static {}, Lcom/google/a/a/a/j;->a()Lcom/google/a/a/a/j;

    move-result-object v4

    invoke-static {}, Lcom/google/a/a/a/bb;->a()Lcom/google/a/a/a/bb;

    move-result-object v5

    invoke-static {}, Lcom/google/a/a/a/i;->a()Lcom/google/a/a/a/i;

    move-result-object v6

    new-instance v7, Lcom/google/a/a/a/bc;

    invoke-direct {v7}, Lcom/google/a/a/a/bc;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/a/a/a/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/bi;Lcom/google/a/a/a/j;Lcom/google/a/a/a/bb;Lcom/google/a/a/a/i;Lcom/google/a/a/a/ba;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/bi;Lcom/google/a/a/a/j;Lcom/google/a/a/a/bb;Lcom/google/a/a/a/i;Lcom/google/a/a/a/ba;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/bh;->c:Ljava/util/Map;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tracker name cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/a/a/a/bh;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/a/a/a/bh;->b:Lcom/google/a/a/a/bi;

    iget-object v0, p0, Lcom/google/a/a/a/bh;->c:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/a/a/bh;->c:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/a/a/a/bh;->e:Lcom/google/a/a/a/j;

    iput-object p5, p0, Lcom/google/a/a/a/bh;->f:Lcom/google/a/a/a/bb;

    iput-object p6, p0, Lcom/google/a/a/a/bh;->g:Lcom/google/a/a/a/i;

    iput-object p7, p0, Lcom/google/a/a/a/bh;->d:Lcom/google/a/a/a/ba;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->k:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/bh;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/bh;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/an;->l:Lcom/google/a/a/a/an;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Lcom/google/a/a/a/an;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/a/a/a/bh;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v0, "&tid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&tid"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/ar;->d(Ljava/lang/String;)V

    :cond_1
    const-string v0, "&t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Missing hit type (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&t"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/ar;->d(Ljava/lang/String;)V

    const-string v0, ""

    :cond_2
    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/a/a/a/bh;->d:Lcom/google/a/a/a/ba;

    invoke-interface {v0}, Lcom/google/a/a/a/ba;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/a/a/a/ar;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/bh;->b:Lcom/google/a/a/a/bi;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/bi;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
