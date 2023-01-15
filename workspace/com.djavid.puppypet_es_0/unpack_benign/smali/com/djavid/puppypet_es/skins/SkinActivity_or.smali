.class public Lcom/djavid/puppypet_es/skins/SkinActivity_or;
.super Landroid/app/Activity;
.source "SkinActivity_or.java"


# static fields
.field private static final ANEKO_ACTIVITY:Ljava/lang/String; = "com.djavid.puppypet_es.ANekoActivity"

.field private static final ANEKO_MARKET_URI:Landroid/net/Uri;

.field private static final ANEKO_PACKAGE:Ljava/lang/String; = "com.djavid.puppypet_es"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "market://search?q=com.djavid.puppypet_es"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/djavid/puppypet_es/skins/SkinActivity_or;->ANEKO_MARKET_URI:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "package_found":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/djavid/puppypet_es/skins/SkinActivity_or;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 32
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.djavid.puppypet_es"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 40
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    if-eqz v2, :cond_1

    .line 41
    const v1, 0x7f06001f

    .line 42
    .local v1, "msg_id":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 44
    const-string v5, "com.djavid.puppypet_es"

    const-string v6, "com.djavid.puppypet_es.ANekoActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    const v5, 0x7f060008

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 53
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 55
    const v5, 0x104000a

    .line 56
    new-instance v6, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;

    invoke-direct {v6, p0, v0}, Lcom/djavid/puppypet_es/skins/SkinActivity_or$1;-><init>(Lcom/djavid/puppypet_es/skins/SkinActivity_or;Landroid/content/Intent;)V

    .line 54
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 73
    new-instance v5, Lcom/djavid/puppypet_es/skins/SkinActivity_or$2;

    invoke-direct {v5, p0}, Lcom/djavid/puppypet_es/skins/SkinActivity_or$2;-><init>(Lcom/djavid/puppypet_es/skins/SkinActivity_or;)V

    .line 72
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "msg_id":I
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v2, v4

    .line 32
    goto :goto_0

    .line 47
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const v1, 0x7f060020

    .line 48
    .restart local v1    # "msg_id":I
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    sget-object v5, Lcom/djavid/puppypet_es/skins/SkinActivity_or;->ANEKO_MARKET_URI:Landroid/net/Uri;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 34
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "msg_id":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method
