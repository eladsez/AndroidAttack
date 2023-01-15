.class Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;
.super Ljava/lang/Object;
.source "NotesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

.field private final synthetic val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v7

    .line 122
    .local v7, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    invoke-virtual {v7}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->clearNoteProfile()V

    .line 125
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    invoke-static {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;

    move-result-object v8

    .line 126
    iget-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteContent()Ljava/lang/String;

    move-result-object v9

    .line 125
    invoke-static {v8, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->loadBinaryData(Landroid/app/Activity;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 127
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 128
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    invoke-static {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    invoke-static {v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;

    move-result-object v9

    .line 129
    const v10, 0x7f06001b

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 128
    invoke-static {v8, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->showMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 182
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    :goto_0
    return-void

    .line 133
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v7    # "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    :cond_0
    invoke-static {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->inputStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 134
    .local v6, "tmp":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 136
    invoke-virtual {v7}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 137
    invoke-virtual {v7}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 135
    invoke-static {v6, v8, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 138
    .local v4, "resizedSourceBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-virtual {v7}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    .local v5, "sourceCanvas":Landroid/graphics/Canvas;
    const/16 v8, 0xff

    const/16 v9, 0xef

    const/16 v10, 0xd5

    invoke-virtual {v5, v8, v9, v10}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 140
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    .end local v4    # "resizedSourceBitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :goto_2
    const/4 v6, 0x0

    .line 154
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    const-wide/16 v8, 0x64

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 163
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setNoteId(Ljava/lang/Integer;)V

    .line 164
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setTitle(Ljava/lang/String;)V

    .line 165
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setFileName(Ljava/lang/String;)V

    .line 166
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getAlarmDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setAlarmDate(Ljava/util/Date;)V

    .line 168
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v0

    .line 169
    .local v0, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    move-result-object v8

    .line 170
    iget-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->loadNoteSettings(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 169
    invoke-virtual {v7, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setSettings(Lorg/json/JSONObject;)V

    .line 173
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getAlarmArmed()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    move-result-object v8

    iget-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    invoke-virtual {v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->setArmedAlarm(II)V

    .line 177
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    invoke-static {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v2, "intt":Landroid/content/Intent;
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    invoke-static {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    .end local v2    # "intt":Landroid/content/Intent;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "sourceCanvas":Landroid/graphics/Canvas;
    .end local v6    # "tmp":Landroid/graphics/Bitmap;
    .end local v7    # "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "tmp":Landroid/graphics/Bitmap;
    .restart local v7    # "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 143
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 142
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setLastBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    new-instance v5, Landroid/graphics/Canvas;

    invoke-virtual {v7}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .restart local v5    # "sourceCanvas":Landroid/graphics/Canvas;
    const/16 v8, 0xff

    const/16 v9, 0xef

    const/16 v10, 0xd5

    invoke-virtual {v5, v8, v9, v10}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 146
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 151
    :catch_1
    move-exception v8

    goto/16 :goto_2

    .line 157
    :catch_2
    move-exception v8

    goto/16 :goto_3
.end method
