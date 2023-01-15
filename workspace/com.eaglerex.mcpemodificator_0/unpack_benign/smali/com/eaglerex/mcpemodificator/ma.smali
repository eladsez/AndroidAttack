.class Lcom/eaglerex/mcpemodificator/ma;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/modsshow;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/modsshow;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/ma;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/ma;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/modsshow;->a()V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/ma;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    const-string v1, "Downloading To mcpemodificator Folder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/ma;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-static {v0}, Lcom/google/a/a/a/p;->a(Landroid/content/Context;)Lcom/google/a/a/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/ma;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    iget v1, v1, Lcom/eaglerex/mcpemodificator/modsshow;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Epic Jump Map Downloaded"

    const-string v2, "ejmdownloadbutton"

    const-string v3, "Epic Jump Map Butter Edition Downloaded"

    invoke-static {v1, v2, v3, v4}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/a/a/a/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/a/a/au;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/p;->a(Ljava/util/Map;)V

    :cond_0
    const-string v1, "Download"

    const-string v2, "DownloadButtonPressed"

    const-string v3, "Map/ModDownloaded"

    invoke-static {v1, v2, v3, v4}, Lcom/google/a/a/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/a/a/a/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/a/a/au;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/p;->a(Ljava/util/Map;)V

    return-void
.end method
