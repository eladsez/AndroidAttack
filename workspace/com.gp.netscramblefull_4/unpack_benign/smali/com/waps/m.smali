.class Lcom/waps/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/m;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/waps/m;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/m;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/m;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/waps/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/m;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/waps/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/waps/m;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/waps/m;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v1, ""

    iget-object v0, p0, Lcom/waps/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v0, p0, Lcom/waps/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/waps/m;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/waps/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/m;->a:Lcom/waps/AppConnect;

    iget-object v1, p0, Lcom/waps/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/waps/m;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/m;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/waps/m;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/waps/m;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/waps/AppConnect;->access$2700(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/m;->a:Lcom/waps/AppConnect;

    iget-object v1, p0, Lcom/waps/m;->g:Ljava/lang/String;

    const-string v2, "push/ad?"

    iget-object v3, p0, Lcom/waps/m;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/waps/AppConnect;->access$2800(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
