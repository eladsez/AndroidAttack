.class public Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;
.super Ljava/lang/Object;
.source "CallLogWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "CallItem"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/CallLogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallItem"
.end annotation


# static fields
.field public static final TYPE_INCOMING:I = 0x1

.field public static final TYPE_MISSED:I = 0x3

.field public static final TYPE_OUTGOING:I = 0x2


# instance fields
.field public CachedName:Ljava/lang/String;

.field public CallType:I

.field public Date:J

.field public Duration:J

.field public Id:I

.field public Number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Id:I

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->CachedName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJIJLjava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "duration"    # J
    .param p5, "type"    # I
    .param p6, "date"    # J
    .param p8, "name"    # Ljava/lang/String;

    .prologue
    const-string v1, ""

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Id:I

    .line 132
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->CachedName:Ljava/lang/String;

    .line 134
    if-nez p1, :cond_0

    const-string v0, ""

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Number:Ljava/lang/String;

    .line 135
    iput p2, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Id:I

    .line 136
    iput p5, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->CallType:I

    .line 137
    iput-wide p3, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Duration:J

    .line 138
    iput-wide p6, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Date:J

    .line 139
    if-nez p8, :cond_1

    const-string v0, ""

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->CachedName:Ljava/lang/String;

    .line 140
    return-void

    :cond_0
    move-object v0, p1

    .line 134
    goto :goto_0

    :cond_1
    move-object v0, p8

    .line 139
    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CachedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->CachedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->CallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;->Duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
