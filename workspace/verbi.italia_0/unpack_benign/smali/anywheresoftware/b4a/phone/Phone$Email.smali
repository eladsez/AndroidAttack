.class public Lanywheresoftware/b4a/phone/Phone$Email;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Email"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Email"
.end annotation


# instance fields
.field public Attachments:Lanywheresoftware/b4a/objects/collections/List;

.field public BCC:Lanywheresoftware/b4a/objects/collections/List;

.field public Body:Ljava/lang/String;

.field public CC:Lanywheresoftware/b4a/objects/collections/List;

.field public Subject:Ljava/lang/String;

.field public To:Lanywheresoftware/b4a/objects/collections/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Subject:Ljava/lang/String;

    .line 644
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Body:Ljava/lang/String;

    .line 645
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->To:Lanywheresoftware/b4a/objects/collections/List;

    .line 646
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->CC:Lanywheresoftware/b4a/objects/collections/List;

    .line 647
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->BCC:Lanywheresoftware/b4a/objects/collections/List;

    .line 648
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Attachments:Lanywheresoftware/b4a/objects/collections/List;

    .line 650
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->To:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 651
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->CC:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 652
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->BCC:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 653
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Attachments:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 654
    return-void
.end method

.method private getIntent(Z)Landroid/content/Intent;
    .locals 11
    .param p1, "html"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "android.intent.extra.STREAM"

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "emailIntent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    const-string v5, "text/html"

    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v6, "android.intent.extra.EMAIL"

    .line 666
    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$Email;->To:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 665
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v6, "android.intent.extra.CC"

    .line 668
    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$Email;->CC:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 667
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v6, "android.intent.extra.BCC"

    .line 670
    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$Email;->BCC:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 669
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v5, "android.intent.extra.SUBJECT"

    iget-object v6, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Subject:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-string v5, "android.intent.extra.TEXT"

    if-eqz p1, :cond_2

    iget-object v6, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Body:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    :goto_1
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 673
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Attachments:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/phone/Phone$Email;
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 680
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_4

    .line 681
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v10, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 682
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    :cond_0
    :goto_3
    return-object v0

    .line 664
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local p0    # "this":Lanywheresoftware/b4a/phone/Phone$Email;
    :cond_1
    const-string v5, "text/plain"

    goto/16 :goto_0

    .line 672
    :cond_2
    iget-object v6, p0, Lanywheresoftware/b4a/phone/Phone$Email;->Body:Ljava/lang/String;

    goto :goto_1

    .line 674
    .end local p0    # "this":Lanywheresoftware/b4a/phone/Phone$Email;
    .restart local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 676
    .local v1, "file":Ljava/lang/Object;
    new-instance v2, Ljava/io/File;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "file":Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .local v2, "fileIn":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 678
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 684
    .end local v2    # "fileIn":Ljava/io/File;
    .end local v3    # "u":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_0

    .line 685
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_3
.end method


# virtual methods
.method public GetHtmlIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lanywheresoftware/b4a/phone/Phone$Email;->getIntent(Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public GetIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lanywheresoftware/b4a/phone/Phone$Email;->getIntent(Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
