.class Lcom/waps/t;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/waps/DisplayAd;


# direct methods
.method private constructor <init>(Lcom/waps/DisplayAd;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/t;->a:Lcom/waps/DisplayAd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/DisplayAd;Lcom/waps/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/t;-><init>(Lcom/waps/DisplayAd;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v1, p0, Lcom/waps/t;->a:Lcom/waps/DisplayAd;

    invoke-static {v1}, Lcom/waps/DisplayAd;->access$300(Lcom/waps/DisplayAd;)Lcom/waps/r;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/t;->a:Lcom/waps/DisplayAd;

    invoke-static {v2}, Lcom/waps/DisplayAd;->access$100(Lcom/waps/DisplayAd;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/t;->a:Lcom/waps/DisplayAd;

    invoke-static {v3}, Lcom/waps/DisplayAd;->access$200(Lcom/waps/DisplayAd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waps/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/waps/t;->a:Lcom/waps/DisplayAd;

    invoke-static {v1}, Lcom/waps/DisplayAd;->access$400(Lcom/waps/DisplayAd;)Lcom/waps/DisplayAdNotifier;

    move-result-object v1

    const-string v2, "Network Error."

    invoke-interface {v1, v2}, Lcom/waps/DisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/waps/t;->a:Lcom/waps/DisplayAd;

    invoke-static {v0, v1}, Lcom/waps/DisplayAd;->access$500(Lcom/waps/DisplayAd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/waps/t;->a:Lcom/waps/DisplayAd;

    invoke-static {v1}, Lcom/waps/DisplayAd;->access$400(Lcom/waps/DisplayAd;)Lcom/waps/DisplayAdNotifier;

    move-result-object v1

    const-string v2, "Ad content has error."

    invoke-interface {v1, v2}, Lcom/waps/DisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/t;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
