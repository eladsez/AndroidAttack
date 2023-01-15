.class public Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
.super Ljava/lang/Object;
.source "HomeMenuEntry.java"


# instance fields
.field private icon:I

.field private intent:Landroid/content/Intent;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->icon:I

    .line 38
    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->title:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->subTitle:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->intent:Landroid/content/Intent;

    .line 41
    return-void
.end method


# virtual methods
.method public StartActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->intent:Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->icon:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->intent:Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HomeMenuEntry [icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
