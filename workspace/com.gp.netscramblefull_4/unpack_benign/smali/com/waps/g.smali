.class Lcom/waps/g;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method private constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/g;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AppConnect;Lcom/waps/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/g;-><init>(Lcom/waps/AppConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/waps/AppConnect;->access$300()Lcom/waps/r;

    move-result-object v1

    const-string v2, "http://app.wapx.cn/action/account/getinfo?"

    iget-object v3, p0, Lcom/waps/g;->a:Lcom/waps/AppConnect;

    invoke-static {v3}, Lcom/waps/AppConnect;->access$100(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waps/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/waps/g;->a:Lcom/waps/AppConnect;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->access$2100(Lcom/waps/AppConnect;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/waps/AppConnect;->access$2200()Lcom/waps/UpdatePointsNotifier;

    move-result-object v1

    const-string v2, "\u65e0\u6cd5\u66f4\u65b0\u79ef\u5206"

    invoke-interface {v1, v2}, Lcom/waps/UpdatePointsNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/g;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
