.class Lcom/waps/n;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v1, ""

    iput-object p1, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/n;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/n;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {}, Lcom/waps/AppConnect;->access$2900()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/waps/AppConnect;->access$300()Lcom/waps/r;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/n;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/waps/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->access$3000(Lcom/waps/AppConnect;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/n;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
