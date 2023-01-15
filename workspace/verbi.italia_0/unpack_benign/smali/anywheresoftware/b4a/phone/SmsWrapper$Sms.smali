.class public Lanywheresoftware/b4a/phone/SmsWrapper$Sms;
.super Ljava/lang/Object;
.source "SmsWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Sms"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/SmsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sms"
.end annotation


# instance fields
.field public Address:Ljava/lang/String;

.field public Body:Ljava/lang/String;

.field public Date:J

.field public Id:I

.field public PersonId:I

.field public Read:Z

.field public ThreadId:I

.field public Type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public constructor <init>(IIIJZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "threadId"    # I
    .param p3, "personId"    # I
    .param p4, "date"    # J
    .param p6, "read"    # Z
    .param p7, "type"    # I
    .param p8, "body"    # Ljava/lang/String;
    .param p9, "address"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Id:I

    .line 154
    iput p2, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->ThreadId:I

    .line 155
    iput p3, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->PersonId:I

    .line 156
    iput-wide p4, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Date:J

    .line 157
    iput-boolean p6, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Read:Z

    .line 158
    iput p7, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Type:I

    .line 159
    iput-object p8, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Body:Ljava/lang/String;

    .line 160
    iput-object p9, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Address:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->ThreadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PersonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->PersonId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string v1, ", Date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Read:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string v1, ", Body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;->Address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
