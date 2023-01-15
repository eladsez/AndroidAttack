.class public Lcom/picvision/seaweedweather/model/MyCalendar;
.super Ljava/lang/Object;
.source "MyCalendar.java"


# instance fields
.field private _id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private endTime:J

.field private startTime:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->endTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->content:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->endTime:J

    .line 38
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->startTime:J

    .line 32
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->title:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/MyCalendar;->_id:Ljava/lang/String;

    .line 14
    return-void
.end method
