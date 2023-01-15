.class Lcom/ievyhrdnoniovof/AdView$LoadAsync;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic M:Ljava/lang/String;

.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;

.field private synthetic l:Ljava/lang/String;

.field private synthetic m:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->m:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->M:Ljava/lang/String;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->l([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs l([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->M:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->M:Ljava/lang/String;

    const-string v2, "%\u001a/\u0016y\\l\\\"\u001d\'\u0001,\u001a\',\"\u00000\u00167\\"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->M:Ljava/lang/String;

    const-string v1, "\u000f;\u00057S}F}\u0008<\r \u0006;\r\r\u0008!\u001a7\u001d}"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->m:Ljava/io/InputStream;

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->m:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, ":\u000c 7\u00127\u0016\u0006\u000b \u00163\u0007*\u001c-SnS"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdView"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected l(Ljava/lang/Void;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Void;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->k:Lcom/ievyhrdnoniovof/AdView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->m:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdView$LoadAsync;->l(Ljava/lang/Void;)V

    return-void
.end method
