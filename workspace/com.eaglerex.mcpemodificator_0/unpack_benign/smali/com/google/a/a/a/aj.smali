.class Lcom/google/a/a/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/a/a/a/ai;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/ai;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    iput-object p2, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    const-string v1, "&cid"

    iget-object v2, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    invoke-static {v2}, Lcom/google/a/a/a/ai;->a(Lcom/google/a/a/a/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    invoke-static {v0}, Lcom/google/a/a/a/ai;->b(Lcom/google/a/a/a/ai;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/ao;->a(Landroid/content/Context;)Lcom/google/a/a/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/a/ao;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    iget-object v1, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/a/a/a/ai;->a(Lcom/google/a/a/a/ai;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    invoke-static {v0}, Lcom/google/a/a/a/ai;->c(Lcom/google/a/a/a/ai;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Z)V

    iget-object v0, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/a/a/a/au;

    invoke-direct {v1}, Lcom/google/a/a/a/au;-><init>()V

    iget-object v2, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    invoke-static {v2}, Lcom/google/a/a/a/ai;->c(Lcom/google/a/a/a/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;)Lcom/google/a/a/a/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/a/a/au;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/a/a/a/am;->a()Lcom/google/a/a/a/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/am;->a(Z)V

    iget-object v0, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/a/a/a/ai;->a(Lcom/google/a/a/a/ai;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    iget-object v1, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/a/a/a/ai;->b(Lcom/google/a/a/a/ai;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/a/a/a/aq;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    invoke-static {v0}, Lcom/google/a/a/a/ai;->e(Lcom/google/a/a/a/ai;)Lcom/google/a/a/a/be;

    move-result-object v0

    iget-object v2, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    iget-object v5, p0, Lcom/google/a/a/a/aj;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/google/a/a/a/ai;->c(Lcom/google/a/a/a/ai;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/a/a/a/aj;->b:Lcom/google/a/a/a/ai;

    invoke-static {v5}, Lcom/google/a/a/a/ai;->d(Lcom/google/a/a/a/ai;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/a/a/a/be;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
