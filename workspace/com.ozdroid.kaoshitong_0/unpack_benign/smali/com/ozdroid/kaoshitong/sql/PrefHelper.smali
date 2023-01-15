.class public Lcom/ozdroid/kaoshitong/sql/PrefHelper;
.super Ljava/lang/Object;
.source "PrefHelper.java"


# instance fields
.field private final PREFERENCES_NAME:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "kaoshitong"

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->PREFERENCES_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "kaoshitong"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getCuoWuLastIndex()I
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "cuowulaistindex"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "datatype"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataVersion()I
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "dataversion"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getJiaQiangLastIndex()I
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "jqlaistindex"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMoniLastIndex()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "moni"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShunXuLastIndex()I
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "shunxulaistindex"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTheMoniLastIndex()I
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "monilaistindex"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setCuoWuLastIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cuowulaistindex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "datatype"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public setDataVersion(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 120
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dataversion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public setJiaQiangLastInde(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 61
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "jqlaistindex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public setMoniLastIndex(Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "moni"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public setShunXuLastIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "shunxulaistindex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method

.method public setTheMoniLastIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "monilaistindex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method
