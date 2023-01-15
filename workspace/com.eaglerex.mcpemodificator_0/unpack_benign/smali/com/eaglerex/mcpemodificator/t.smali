.class Lcom/eaglerex/mcpemodificator/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/contactme;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/contactme;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/t;->a:Lcom/eaglerex/mcpemodificator/contactme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.facebook.com/eaglerexx"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/t;->a:Lcom/eaglerex/mcpemodificator/contactme;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/contactme;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
