.class public Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
.super Ljava/lang/Object;
.source "NoteListEntity.java"


# instance fields
.field private alarmArmed:Ljava/lang/Integer;

.field private alarmDate:Ljava/util/Date;

.field private isSelected:Ljava/lang/Boolean;

.field private noteContent:Ljava/lang/String;

.field private noteIcon:Landroid/graphics/Bitmap;

.field private noteId:Ljava/lang/Integer;

.field private title:Ljava/lang/String;

.field private updatedDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmArmed()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->alarmArmed:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAlarmDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->alarmDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIsSelected()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->isSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNoteContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->noteContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->noteIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNoteId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->noteId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->updatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public setAlarmArmed(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "alarmArmed"    # Ljava/lang/Integer;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->alarmArmed:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method public setAlarmDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "alarmDate"    # Ljava/util/Date;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->alarmDate:Ljava/util/Date;

    .line 40
    return-void
.end method

.method public setIsSelected(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isSelected"    # Ljava/lang/Boolean;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->isSelected:Ljava/lang/Boolean;

    .line 64
    return-void
.end method

.method public setNoteContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteContent"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->noteContent:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setNoteIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "noteIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->noteIcon:Landroid/graphics/Bitmap;

    .line 52
    return-void
.end method

.method public setNoteId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "noteId"    # Ljava/lang/Integer;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->noteId:Ljava/lang/Integer;

    .line 22
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->title:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUpdatedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "updatedDate"    # Ljava/util/Date;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->updatedDate:Ljava/util/Date;

    .line 46
    return-void
.end method
