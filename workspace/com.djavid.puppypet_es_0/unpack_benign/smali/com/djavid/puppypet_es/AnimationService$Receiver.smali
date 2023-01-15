.class Lcom/djavid/puppypet_es/AnimationService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AnimationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/AnimationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/AnimationService;


# direct methods
.method private constructor <init>(Lcom/djavid/puppypet_es/AnimationService;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/djavid/puppypet_es/AnimationService$Receiver;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/djavid/puppypet_es/AnimationService;Lcom/djavid/puppypet_es/AnimationService$Receiver;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/djavid/puppypet_es/AnimationService$Receiver;-><init>(Lcom/djavid/puppypet_es/AnimationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "pkgnames":[Ljava/lang/String;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 457
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 458
    .end local v1    # "pkgnames":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 465
    .restart local v1    # "pkgnames":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 486
    :cond_1
    :goto_1
    return-void

    .line 460
    :cond_2
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 460
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 461
    if-eqz v6, :cond_0

    .line 463
    const-string v6, "android.intent.extra.changed_package_list"

    .line 462
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 469
    :cond_3
    iget-object v6, p0, Lcom/djavid/puppypet_es/AnimationService$Receiver;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v6}, Lcom/djavid/puppypet_es/AnimationService;->access$3(Lcom/djavid/puppypet_es/AnimationService;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "motion.skin"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "skin":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 473
    .local v3, "skin_comp":Landroid/content/ComponentName;
    :goto_2
    if-eqz v3, :cond_1

    .line 477
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "skin_pkg":Ljava/lang/String;
    array-length v6, v1

    :goto_3
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 479
    .local v0, "pkgname":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 480
    iget-object v5, p0, Lcom/djavid/puppypet_es/AnimationService$Receiver;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v5}, Lcom/djavid/puppypet_es/AnimationService;->access$1(Lcom/djavid/puppypet_es/AnimationService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    iget-object v5, p0, Lcom/djavid/puppypet_es/AnimationService$Receiver;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v5}, Lcom/djavid/puppypet_es/AnimationService;->access$2(Lcom/djavid/puppypet_es/AnimationService;)V

    goto :goto_1

    .line 472
    .end local v0    # "pkgname":Ljava/lang/String;
    .end local v3    # "skin_comp":Landroid/content/ComponentName;
    .end local v4    # "skin_pkg":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_2

    .line 478
    .restart local v0    # "pkgname":Ljava/lang/String;
    .restart local v3    # "skin_comp":Landroid/content/ComponentName;
    .restart local v4    # "skin_pkg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method
