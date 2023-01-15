.class Lcom/waps/f;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method private constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/f;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AppConnect;Lcom/waps/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/f;-><init>(Lcom/waps/AppConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "http://app.wapx.cn/action/account/award?"

    iget-object v2, p0, Lcom/waps/f;->a:Lcom/waps/AppConnect;

    invoke-static {v2}, Lcom/waps/AppConnect;->access$100(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&points="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/f;->a:Lcom/waps/AppConnect;

    invoke-static {v3}, Lcom/waps/AppConnect;->access$2500(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/waps/AppConnect;->access$300()Lcom/waps/r;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/waps/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/waps/f;->a:Lcom/waps/AppConnect;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->access$2600(Lcom/waps/AppConnect;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/waps/AppConnect;->access$2200()Lcom/waps/UpdatePointsNotifier;

    move-result-object v1

    const-string v2, "\u8d60\u9001\u79ef\u5206\u5931\u8d25."

    invoke-interface {v1, v2}, Lcom/waps/UpdatePointsNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
