.class Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Lanywheresoftware/b4a/IOnActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/Phone$ContentChooser;->Show(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/Phone$ContentChooser;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/Phone$ContentChooser;Lanywheresoftware/b4a/BA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->this$1:Lanywheresoftware/b4a/phone/Phone$ContentChooser;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->val$ba:Lanywheresoftware/b4a/BA;

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ResultArrived(ILandroid/content/Intent;)V
    .locals 11
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 823
    const/4 v0, 0x0

    .local v0, "Dir":Ljava/lang/String;
    const/4 v1, 0x0

    .line 824
    .local v1, "File":Ljava/lang/String;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 826
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 827
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "scheme":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 829
    const-string v0, ""

    .line 830
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 841
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->this$1:Lanywheresoftware/b4a/phone/Phone$ContentChooser;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->access$0(Lanywheresoftware/b4a/phone/Phone$ContentChooser;Lanywheresoftware/b4a/IOnActivityResult;)V

    .line 842
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 843
    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v6, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->this$1:Lanywheresoftware/b4a/phone/Phone$ContentChooser;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->this$1:Lanywheresoftware/b4a/phone/Phone$ContentChooser;

    invoke-static {v8}, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->access$1(Lanywheresoftware/b4a/phone/Phone$ContentChooser;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :goto_1
    return-void

    .line 832
    .restart local v3    # "scheme":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v5, "content"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 833
    const-string v0, "ContentDir"

    .line 834
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 837
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 838
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 846
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v6, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->this$1:Lanywheresoftware/b4a/phone/Phone$ContentChooser;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;->this$1:Lanywheresoftware/b4a/phone/Phone$ContentChooser;

    invoke-static {v8}, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->access$1(Lanywheresoftware/b4a/phone/Phone$ContentChooser;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
