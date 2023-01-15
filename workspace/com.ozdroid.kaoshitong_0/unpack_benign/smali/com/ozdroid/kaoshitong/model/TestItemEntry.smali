.class public Lcom/ozdroid/kaoshitong/model/TestItemEntry;
.super Ljava/lang/Object;
.source "TestItemEntry.java"


# instance fields
.field private answer:I

.field private id:I

.field private image:[B

.field private question:Ljava/lang/String;

.field private select:Ljava/lang/String;

.field private selectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[B)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "question"    # Ljava/lang/String;
    .param p3, "select"    # Ljava/lang/String;
    .param p4, "answer"    # I
    .param p5, "image"    # [B

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->id:I

    .line 47
    iput-object p2, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->question:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->select:Ljava/lang/String;

    .line 49
    iput p4, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->answer:I

    .line 50
    iput-object p5, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->image:[B

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->selectList:Ljava/util/List;

    .line 52
    const-string v2, "@"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "selects":[Ljava/lang/String;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 57
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 59
    return-void

    .line 54
    :cond_0
    aget-object v1, v0, v3

    .line 55
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->selectList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAnswer()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->answer:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->id:I

    return v0
.end method

.method public getImage()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->image:[B

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getSelect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->selectList:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TestItemEntry [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", question="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->select:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->answer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/model/TestItemEntry;->image:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
