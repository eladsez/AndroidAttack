.class Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebClient"
.end annotation


# instance fields
.field private synthetic B:I

.field private synthetic E:I

.field final synthetic H:Lcom/ievyhrdnoniovof/AdWebView;

.field private synthetic M:Z

.field private synthetic d:Lcom/ievyhrdnoniovof/AdWebView;

.field private synthetic g:Z

.field private synthetic k:Lcom/ievyhrdnoniovof/AdController;

.field private synthetic l:[Ljava/lang/String;

.field private synthetic m:Z


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdWebView;Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdWebView;)V
    .locals 4
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdController;
    .param p3, "arg2"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->g:Z

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->m:Z

    iput v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->E:I

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "&\t\u000b\u0002\u0003\u0008\rHDHD6\u0006\u0003\u000b\u0015\u000fF=\u0007\u0003\u0012K"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u0003B2B8Q8I6\u00075B%F8K\""

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "+\n\u0007\t\u0019\u0012J\u0012\u0002\u0003\u0018\u0003K"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0003B%U8B\'N?@\u007f\t\u007f\t\u007fw=B0T4\u0007\u0006F8Sp"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4\u000f\u0017\u001f\u0003\u0019\u0012\u0003\u0008\rF\u000e\u0003\u001e\u0007\u0003\n\u0019"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->l:[Ljava/lang/String;

    iput v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->B:I

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->d:Lcom/ievyhrdnoniovof/AdWebView;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v1, "LBAdController"

    const-string v3, "H?w0@4a8I8T9B5"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    :cond_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->G(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->G(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->G(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->m:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->showInternetDialog()V

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :cond_2
    :goto_0
    return-void

    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "\u0007\u0004\u0002\u0018\t\u0003\u0002D\u000f\u0004\u0012\u000f\u0008\u001eH\u000b\u0005\u001e\u000f\u0005\u0008D0##="

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWebView;->l(Lcom/ievyhrdnoniovof/AdWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWebView;->m(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->A(Lcom/ievyhrdnoniovof/AdWebView;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "P8I5H&S#F?T!F#B?D("

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "["

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :goto_2
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->d:Lcom/ievyhrdnoniovof/AdWebView;

    const-string v3, "\u000c\u000b\u0010\u000b\u0015\t\u0014\u0003\u0016\u001e\\\u001d\u000f\u0004\u0002\u0005\u0011D*()?2D\u0016\u0018\t\t\u0003\u0019\u0015\"2\'*B\u0002\u0005\u0005\u001f\u000b\u000f\u0008\u001eH\r\u0003\u001e#\u0006\u0003\u0007\u0003\u0004\u0012\u0019$\u00132\u000b\u0001$\u0007\u0007\u0003BA\u0008\t\u000e\u001fMO1V7H\r\u0003\u001e\'\u001e\u0012\u0018\u000f\u0008\u0013\u001e\u0003BA\u000b\u00025\u0005\u0005\u0013\u0004\u0012MOFF\u000e\t\t\u0013\u0007\u0003\u0004\u0012D\u0001\u000f\u0012/\n\u000f\u000b\u000f\u0008\u001e\u0015(\u001f>\u0007\r(\u000b\u000b\u000fNM\u0004\u0005\u0002\u0013AC=Z;D\u0001\u000f\u0012+\u0012\u001e\u0014\u0003\u0004\u001f\u0012\u000fNM\u000e\u001e\u000b\u00069\u000b\u0002MOFF\u000e\t\t\u0013\u0007\u0003\u0004\u0012D\u0001\u000f\u0012/\n\u000f\u000b\u000f\u0008\u001e\u0015(\u001f>\u0007\r(\u000b\u000b\u000fNM\u000e\u001e\u000b\u0006AC=Z;D\u000f\u0004\u0008\u000f\u0014\"2\'*C]J\u0011\u0003\u0008\u000e\t\u001dH&$%3>H\u001a\u0014\u0005\u0005\u000f\u0015\u0019\'\u001f\u0002\u0003\tB\u0002\u0005\u0005\u001f\u000b\u000f\u0008\u001eH\r\u0003\u001e#\u0006\u0003\u0007\u0003\u0004\u0012\u0019$\u00132\u000b\u0001$\u0007\u0007\u0003BA\u0008\t\u000e\u001fMO1V7H\r\u0003\u001e\'\u001e\u0012\u0018\u000f\u0008\u0013\u001e\u0003BA\u000b\u0013\u000e\u000f\u00059\u001f\u0014\u0006ACJJ\u0002\u0005\u0005\u001f\u000b\u000f\u0008\u001eH\r\u0003\u001e#\u0006\u0003\u0007\u0003\u0004\u0012\u0019$\u00132\u000b\u0001$\u0007\u0007\u0003BA\u0008\t\u000e\u001fMO1V7H\r\u0003\u001e\'\u001e\u0012\u0018\u000f\u0008\u0013\u001e\u0003BA\u000b\u0013\u000e\u000f\u00059\t\n\u00019\u001f\u0014\u0006ACOQ"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ievyhrdnoniovof/AdWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "0I5U>N5\t!B#J8T\"N>I\u007f`\u0014s\u000ef\u0012d\u001er\u001fs\u0002"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    move v3, v2

    :goto_3
    if-ge v1, v5, :cond_5

    aget-object v1, v4, v3

    iget-object v6, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v7, "\u0005\u0005\u000bD\u0001\u0005\t\r\n\u000f"

    invoke-static {v7}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->d:Lcom/ievyhrdnoniovof/AdWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "M0Q0T2U8W%\u001dyA$I2S8H?\u000fx\u0007*Q0UqN?W$Sq\u001aqC>D$J4I%\t6B%b=B<B?S\"e(i0J4\u000fvb<F8Kv\u000e\n\u0017\u000c\u001c8AyN?W$Sq\u0006l\u0007?R=Kx\u0007*N?W$S\u007fT4K4D%\u000fx\u001c8I!R%\t7H2R\"\u000fx\u001c8I!R%\t\'F=R4\u0007l\u0007v"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "AQ"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u001bCNC"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ievyhrdnoniovof/AdWebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    :goto_4
    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->g:Z

    if-nez v1, :cond_a

    const-string v1, "LBAdController"

    const-string v3, "\t\u00046\u000b\u0001\u000f \u0003\u0008\u0003\u0015\u0002\u0003\u000eFGF\r\t\u0003\u0008\rF\u001e\tJ\u0015\u0002\t\u001dF\u001d\u0003\u0008\u0010\u0003\u0003\u001d"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->showElements()V

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :goto_5
    move-object v0, p0

    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :goto_6
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdWebView;->l(Lcom/ievyhrdnoniovof/AdWebView;Z)Z

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWebView;->F(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController;->setLoading(Z)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->d:Lcom/ievyhrdnoniovof/AdWebView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdWebView;->requestFocus(I)Z

    const-string v1, "\u00040W!x2K>T4"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    :try_start_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, p0

    :goto_7
    iget-boolean v1, v0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->m:Z

    if-eqz v1, :cond_2

    const-string v1, "LBAdController"

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v2}, Lcom/ievyhrdnoniovof/AdController;->hideElements()V

    const-string v2, "#\u0018\u0014\u0005\u0014JKJ\u0005\u0005\u0013\u0006\u0002J\u0008\u0005\u0012J\u0005\u0005\u0008\u0004\u0003\t\u0012J\u0012\u0005F#\u0008\u001e\u0003\u0018\u0008\u000f\u0012J\u0007\u001eF\u001e\u000e\u0003\u0015J\u0012\u0003\u000b\u000f"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :catch_0
    move-exception v1

    move v1, v2

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWebView;->A(Lcom/ievyhrdnoniovof/AdWebView;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "&N?C>P3F2L6U>R?C2H=H#"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v3, v1

    :goto_8
    if-eqz v1, :cond_7

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    goto/16 :goto_2

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :catch_1
    move-exception v3

    move-object v3, v1

    goto :goto_8

    :cond_7
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    goto/16 :goto_2

    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    :cond_9
    const-string v1, "LBAdController"

    const-string v3, "\u0016B%\u0007\u0010D2H$I%TqW4U<N\"T8H?\u0007?H%\u00076U0I%B5"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string v1, "LBAdController"

    const-string v3, "H?w0@4a8I8T9B5\u0007|\u0007?H%\u00076H8I6\u0007%HqT9H&\u0007&B3Q8B&"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->g:Z

    goto/16 :goto_5

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :cond_b
    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWebView;->D(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "\u0007\u0007\u0018\r\u000f\u0012PIE"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "9S%Wk\u0008~J0U:B%\t0I5U>N5\t2H<"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "\u000e\u001e\u0012\u001a\u0015PIE\u000b\u000b\u0014\u0001\u0003\u001eH\u000b\u0008\u000e\u0014\u0005\u000f\u000eH\t\t\u0007"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "O%S!Tk\u0008~W=F(\t6H>@=B\u007fD>J~"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "\u0002\u0012\u001e\u0016PIE\u0016\u0006\u0007\u0013H\r\t\u0005\u0001\u0006\u0003D\u0005\u0005\u000bE"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWebView;->I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    goto/16 :goto_6

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :cond_d
    const-string v3, "$T4I0S8Q4\u001a`"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWebView;->I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    goto/16 :goto_6

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :cond_e
    const-string v3, "\u0012\u000f\nP"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWebView;->I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    goto/16 :goto_6

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :cond_f
    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->g:Z

    if-nez v1, :cond_10

    const-string v1, "LBAdController"

    const-string v3, ">I\u0001F6B\u0017N?N\"O4Cq\nq@>N?@qS>\u0007\"O>PqP4E\'N4P}\u00074K\"BqD0T4"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->showElements()V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->onLinkClicked()V

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    goto/16 :goto_6

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :cond_10
    const-string v1, "LBAdController"

    const-string v3, "\u0005\u0008:\u0007\r\u0003,\u000f\u0004\u000f\u0019\u000e\u000f\u0002JKJ\u0008\u0005\u0012J\u0001\u0005\u000f\u0004\u0001J\u0012\u0005F\u0019\u000e\u0005\u0011J\u0011\u000f\u0004\u001c\u000f\u000f\u0011FF\u000f\n\u0019\u0003J\u0005\u000b\u0015\u000f"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->g:Z

    goto/16 :goto_5

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    :catch_2
    move-exception v1

    :cond_11
    move-object v0, p0

    goto/16 :goto_7
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "LBAdController"

    const-string v1, ">I\u0001F6B\u0002S0U%B5"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    const/16 v0, 0x64

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/webkit/WebView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWebView;->I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u000f\u0004\u0016\u001f\u00125\u000b\u000f\u0012\u0002\t\u000e"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->hideElements()V

    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->m:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWebView;->l(Lcom/ievyhrdnoniovof/AdWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWebView;->m(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "o>J4\u0007=H0C4Cq\nqK>F5N?@q\u001aq"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWebView;->F(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWebView;->F(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWebView;->A(Lcom/ievyhrdnoniovof/AdWebView;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "\u0013\u0019\u0003\t\n\u0003\u0005\u0001\u0011\u0003\u0008\u000e\t\u001d"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "`"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LBAdController"

    if-eqz v0, :cond_4

    const-string v0, "!\u0005\u000f\u0004\u0001J\u0012\u0005F\u001f\u0015\u000fF)\n\u0003\u0005\u00011\u0003\u0008\u000e\t\u001dF\u000e\u0003\u001e\u0007\u0003\n\u0019"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->setHomeLoaded(Z)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->l(Lcom/ievyhrdnoniovof/AdWebView;Z)Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->F(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->setLoading(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#\u0012\u0005\u000f\u0016\u001e\u000f\u0005\u0008JKJ"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v0, "i>U<F=\u0007&N?C>PqS>\u00073BqR\"B5"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5
    const-string v0, "LBAdController"

    const-string v1, "k8I:\u00072K8D:B5\u0006p"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWebView;->F(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWebView;->D(Lcom/ievyhrdnoniovof/AdWebView;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u0007\u0007\u0018\r\u000f\u0012PIE"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "9S%Wk\u0008~J0U:B%\t0I5U>N5\t2H<"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u000e\u001e\u0012\u001a\u0015PIE\u000b\u000b\u0014\u0001\u0003\u001eH\u000b\u0008\u000e\u0014\u0005\u000f\u000eH\t\t\u0007"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "O%S!Tk\u0008~W=F(\t6H>@=B\u007fD>J~"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u0002\u0012\u001e\u0016PIE\u0016\u0006\u0007\u0013H\r\t\u0005\u0001\u0006\u0003D\u0005\u0005\u000bE"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "$T4I0S8Q4\u001a`"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "\u0012\u000f\nP"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->E:I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->l:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    iput v4, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->E:I

    :cond_a
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->l:[Ljava/lang/String;

    iget v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->E:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->G(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->G(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_b
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWebView;->I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdWebView;->l(Lcom/ievyhrdnoniovof/AdWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->E:I

    goto/16 :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    const/16 v0, -0xa

    if-eq p2, v0, :cond_0

    const-string v0, "LBAdController"

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdWebView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "b#U>UqU4D4N\'B5\u0007|\u0007\u0012H5Bl"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "JJ\"\u000f\u0015\t\u0014\u0003\u0016\u001e\u000f\u0005\u0008J[J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u000bqA0N=r\u0003kq\nq"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->m:Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->B:I

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0019\u000e\u0005\u0013\u0006\u0002%\u0010\u000f\u0014\u0018\u000f\u000e\u0003?\u0014\u0006*\u0005\u0007\u000e\u000f\u0004\u0001P"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}D>R?Sk"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->B:I

    iget v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->B:I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWebView;->L(Lcom/ievyhrdnoniovof/AdWebView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->H:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-static {v0, v3}, Lcom/ievyhrdnoniovof/AdWebView;->A(Lcom/ievyhrdnoniovof/AdWebView;Z)Z

    :cond_0
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->g:Z

    :cond_1
    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->M:Z

    iput-boolean v4, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->m:Z

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3
.end method
