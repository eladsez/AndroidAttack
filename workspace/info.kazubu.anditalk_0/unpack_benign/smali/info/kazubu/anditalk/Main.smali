.class public Linfo/kazubu/anditalk/Main;
.super Landroid/app/Activity;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;
    }
.end annotation


# static fields
.field private static final MENU_CONNECT:I = 0x2

.field private static final MENU_DISCONNECT:I = 0x3

.field private static final MENU_LOGCLEAR:I = 0x7

.field private static final MENU_LOGSAVE:I = 0x6

.field private static final MENU_SCROLLDOWN:I = 0x5

.field private static final MENU_SETTINGS:I = 0x4

.field private static current:Landroid/app/Activity;


# instance fields
.field ScrollView01:Landroid/widget/ScrollView;

.field btnSend:Landroid/widget/Button;

.field private connectionService:Linfo/kazubu/anditalk/ConnectionService;

.field edtSend:Landroid/widget/EditText;

.field private final receiver:Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field txtBody:Landroid/widget/TextView;

.field txtServerName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;-><init>(Linfo/kazubu/anditalk/Main;Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;)V

    iput-object v0, p0, Linfo/kazubu/anditalk/Main;->receiver:Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;

    .line 64
    new-instance v0, Linfo/kazubu/anditalk/Main$1;

    invoke-direct {v0, p0}, Linfo/kazubu/anditalk/Main$1;-><init>(Linfo/kazubu/anditalk/Main;)V

    iput-object v0, p0, Linfo/kazubu/anditalk/Main;->serviceConnection:Landroid/content/ServiceConnection;

    .line 35
    return-void
.end method

.method static synthetic access$0(Linfo/kazubu/anditalk/Main;Linfo/kazubu/anditalk/ConnectionService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    return-void
.end method

.method static synthetic access$1(Linfo/kazubu/anditalk/Main;)Linfo/kazubu/anditalk/ConnectionService;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    return-object v0
.end method

.method static synthetic access$2(Linfo/kazubu/anditalk/Main;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Linfo/kazubu/anditalk/Main;->refreshLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Linfo/kazubu/anditalk/Main;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Linfo/kazubu/anditalk/Main;->send()V

    return-void
.end method

.method private refreshLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "newbody"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "anditalk"

    const-string v1, "onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Linfo/kazubu/anditalk/Main;->ScrollView01:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Linfo/kazubu/anditalk/Main;->ScrollView01:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x50

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Linfo/kazubu/anditalk/Main;->scrollDown()V

    .line 166
    iget-object v0, p0, Linfo/kazubu/anditalk/Main;->edtSend:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 168
    :cond_0
    return-void
.end method

.method private scrollDown()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Linfo/kazubu/anditalk/Main;->ScrollView01:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 171
    return-void
.end method

.method private send()V
    .locals 4

    .prologue
    .line 146
    const-string v1, "anditalk"

    const-string v2, "Main: send()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Linfo/kazubu/anditalk/Main;->edtSend:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "str":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/kazubu/anditalk/ConnectionService;->sendString(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Linfo/kazubu/anditalk/Main;->edtSend:Landroid/widget/EditText;

    const-string v2, ""

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 156
    iget-object v1, p0, Linfo/kazubu/anditalk/Main;->edtSend:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Linfo/kazubu/anditalk/Main;->current:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 368
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 370
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 372
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Linfo/kazubu/anditalk/Main;->setContentView(I)V

    .line 88
    const-string v3, "anditalk"

    const-string v4, "Main: onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sput-object p0, Linfo/kazubu/anditalk/Main;->current:Landroid/app/Activity;

    .line 92
    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Linfo/kazubu/anditalk/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Linfo/kazubu/anditalk/Main;->edtSend:Landroid/widget/EditText;

    .line 93
    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Linfo/kazubu/anditalk/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Linfo/kazubu/anditalk/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Linfo/kazubu/anditalk/Main;->txtServerName:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Linfo/kazubu/anditalk/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Linfo/kazubu/anditalk/Main;->btnSend:Landroid/widget/Button;

    .line 96
    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Linfo/kazubu/anditalk/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Linfo/kazubu/anditalk/Main;->ScrollView01:Landroid/widget/ScrollView;

    .line 98
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->ScrollView01:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 101
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->btnSend:Landroid/widget/Button;

    new-instance v4, Linfo/kazubu/anditalk/Main$2;

    invoke-direct {v4, p0}, Linfo/kazubu/anditalk/Main$2;-><init>(Linfo/kazubu/anditalk/Main;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->edtSend:Landroid/widget/EditText;

    new-instance v4, Linfo/kazubu/anditalk/Main$3;

    invoke-direct {v4, p0}, Linfo/kazubu/anditalk/Main$3;-><init>(Linfo/kazubu/anditalk/Main;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->txtServerName:Landroid/widget/TextView;

    const-string v4, "Not connected."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Linfo/kazubu/anditalk/Settings;->getEnableAutolink(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    const-string v3, "anditalk"

    const-string v4, "AutoLink Enable"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 132
    :goto_0
    if-eqz p1, :cond_0

    .line 133
    const-string v3, "txtBody"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "body":Ljava/lang/String;
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Linfo/kazubu/anditalk/ConnectionService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Linfo/kazubu/anditalk/Main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "AndItalk2 Connection Service"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->receiver:Linfo/kazubu/anditalk/Main$ConnectionServiceReceiver;

    invoke-virtual {p0, v3, v1}, Linfo/kazubu/anditalk/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Linfo/kazubu/anditalk/Main;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 143
    return-void

    .line 128
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "anditalk"

    const-string v4, "AutoLink Disable"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x0

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 206
    const/4 v6, 0x2

    const v7, 0x7f050001

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 207
    .local v0, "item0":Landroid/view/MenuItem;
    const/4 v6, 0x3

    const v7, 0x7f050003

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 208
    .local v1, "item1":Landroid/view/MenuItem;
    const/4 v6, 0x4

    const v7, 0x7f050002

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 209
    .local v2, "item2":Landroid/view/MenuItem;
    const/4 v6, 0x5

    const v7, 0x7f050004

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 210
    .local v3, "item3":Landroid/view/MenuItem;
    const/4 v6, 0x6

    const v7, 0x7f050005

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 211
    .local v4, "item4":Landroid/view/MenuItem;
    const/4 v6, 0x7

    const v7, 0x7f050006

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 214
    .local v5, "item5":Landroid/view/MenuItem;
    const v6, 0x108003d

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    const v6, 0x1080038

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 216
    const v6, 0x1080049

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    const v6, 0x1080081

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 218
    const v6, 0x108004e

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 219
    const v6, 0x108004c

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    return v6
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 361
    const-string v0, "anditalk"

    const-string v1, "Main: onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Linfo/kazubu/anditalk/ConnectionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Linfo/kazubu/anditalk/ConnectionService;->stopService(Landroid/content/Intent;)Z

    .line 363
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 182
    const-string v0, "anditalk"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    invoke-virtual {v0}, Linfo/kazubu/anditalk/ConnectionService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Linfo/kazubu/anditalk/Main;->finish()V

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 237
    const/16 v16, 0x0

    .line 239
    .local v16, "ret":Z
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 241
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v16

    .line 355
    :goto_0
    return v16

    .line 244
    :pswitch_0
    new-instance v4, Ljava/lang/String;

    const-string v18, ""

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 245
    .local v4, "addr":Ljava/lang/String;
    const/16 v15, 0x3039

    .line 246
    .local v15, "port":I
    new-instance v12, Ljava/lang/String;

    const-string v18, "anonymous%AndItalk"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 248
    .local v12, "nickname":Ljava/lang/String;
    const/4 v10, 0x0

    .line 250
    .local v10, "host":Ljava/net/InetAddress;
    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Linfo/kazubu/anditalk/Settings;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 251
    const-string v18, "Error"

    const-string v19, "Server is empty."

    invoke-static/range {v18 .. v19}, Linfo/kazubu/anditalk/Main;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Linfo/kazubu/anditalk/Settings;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 265
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Linfo/kazubu/anditalk/Settings;->getPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    .line 269
    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Linfo/kazubu/anditalk/Settings;->getPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 282
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 283
    const-string v18, "Error"

    const-string v19, "Address is invalid."

    invoke-static/range {v18 .. v19}, Linfo/kazubu/anditalk/Main;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/16 v16, 0x0

    .line 285
    goto :goto_0

    .line 258
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 259
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "Error"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Can\'t resolve : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Linfo/kazubu/anditalk/Settings;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Linfo/kazubu/anditalk/Main;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v18, "anditalk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Resolve : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v16, 0x0

    .line 262
    goto/16 :goto_0

    .line 271
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v18, "Error"

    const-string v19, "Port is invalid."

    invoke-static/range {v18 .. v19}, Linfo/kazubu/anditalk/Main;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 276
    :catch_1
    move-exception v18

    move-object/from16 v7, v18

    .line 277
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v18, "anditalk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "getHostAddress : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v16, 0x0

    .line 279
    goto/16 :goto_0

    .line 288
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Linfo/kazubu/anditalk/Settings;->getNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 289
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 290
    const-string v18, "Error"

    const-string v19, "Nickname is empty."

    invoke-static/range {v18 .. v19}, Linfo/kazubu/anditalk/Main;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/16 v16, 0x0

    .line 292
    goto/16 :goto_0

    .line 294
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "italk://"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Linfo/kazubu/anditalk/Settings;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Linfo/kazubu/anditalk/ConnectionService;->setUri(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->txtServerName:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Linfo/kazubu/anditalk/ConnectionService;->getUri()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v15

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Linfo/kazubu/anditalk/ConnectionService;->connect(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const/16 v16, 0x1

    .line 300
    goto/16 :goto_0

    .line 302
    .end local v4    # "addr":Ljava/lang/String;
    .end local v10    # "host":Ljava/net/InetAddress;
    .end local v12    # "nickname":Ljava/lang/String;
    .end local v15    # "port":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Linfo/kazubu/anditalk/ConnectionService;->disconnect()Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    move-object/from16 v18, v0

    const-string v19, "Not connected."

    invoke-virtual/range {v18 .. v19}, Linfo/kazubu/anditalk/ConnectionService;->setUri(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->txtServerName:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Linfo/kazubu/anditalk/ConnectionService;->getUri()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const/16 v16, 0x1

    .line 308
    goto/16 :goto_0

    .line 311
    :pswitch_2
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v11, "intent":Landroid/content/Intent;
    const-class v18, Linfo/kazubu/anditalk/Settings;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 313
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Linfo/kazubu/anditalk/Main;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 320
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_1
    const/16 v16, 0x1

    .line 321
    goto/16 :goto_0

    .line 315
    :catch_2
    move-exception v18

    move-object/from16 v7, v18

    .line 316
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v18, "Error"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Linfo/kazubu/anditalk/Main;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v18, "anditalk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "SETTINGS : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 323
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->scrollDown()V

    .line 325
    const/16 v16, 0x1

    .line 326
    goto/16 :goto_0

    .line 328
    :pswitch_4
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyyMMdd\'-\'hhmmss"

    invoke-direct/range {v17 .. v18}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 329
    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "date":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/anditalk2/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Linfo/kazubu/anditalk/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Linfo/kazubu/anditalk/Settings;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".log.txt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 332
    .local v14, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 337
    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    const/16 v18, 0x1

    move-object v0, v9

    move-object v1, v8

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 338
    .local v9, "fos":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/io/OutputStreamWriter;

    const-string v18, "UTF-8"

    move-object v0, v13

    move-object v1, v9

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 339
    .local v13, "osw":Ljava/io/OutputStreamWriter;
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 340
    .local v5, "bw":Ljava/io/BufferedWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 342
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 347
    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "osw":Ljava/io/OutputStreamWriter;
    :goto_2
    const/16 v16, 0x1

    .line 348
    goto/16 :goto_0

    .line 343
    :catch_3
    move-exception v18

    move-object/from16 v7, v18

    .line 344
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v18, "anditalk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "LogSave Exception"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 350
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "file":Ljava/io/File;
    .end local v14    # "path":Ljava/lang/String;
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 226
    iget-object v1, p0, Linfo/kazubu/anditalk/Main;->connectionService:Linfo/kazubu/anditalk/ConnectionService;

    invoke-virtual {v1}, Linfo/kazubu/anditalk/ConnectionService;->isConnected()Z

    move-result v0

    .line 228
    .local v0, "isConnected":Z
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 229
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 228
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    iget-object v1, p0, Linfo/kazubu/anditalk/Main;->txtBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "body":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "txtBody"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "anditalk"

    const-string v1, "Main: onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 177
    return-void
.end method
