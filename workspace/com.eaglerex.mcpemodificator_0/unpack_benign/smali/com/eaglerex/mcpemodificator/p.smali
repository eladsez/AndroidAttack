.class Lcom/eaglerex/mcpemodificator/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/contactme;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/contactme;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/p;->a:Lcom/eaglerex/mcpemodificator/contactme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "eaglerexx@gmail.com"

    aput-object v2, v0, v1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "plain/text"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/p;->a:Lcom/eaglerex/mcpemodificator/contactme;

    invoke-virtual {v0, v1}, Lcom/eaglerex/mcpemodificator/contactme;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
