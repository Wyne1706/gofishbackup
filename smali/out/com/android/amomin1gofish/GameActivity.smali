.class public Lcom/android/amomin1gofish/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# static fields
.field private static final REQUEST_ENABLE_BT:I = 0x1

.field private static final REQUEST_FINE_LOCATION:I = 0x2


# instance fields
.field NEWplayersArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field UUID_ID:Ljava/lang/String;

.field allUserBluetoothInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/BluetoothModel;",
            ">;"
        }
    .end annotation
.end field

.field arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blueDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field private btnBeHost:Landroid/widget/Button;

.field private btnConnectToHost:Landroid/widget/Button;

.field private btnStartGame:Landroid/widget/Button;

.field private connectedSocket:Landroid/bluetooth/BluetoothSocket;

.field private connectedSockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation
.end field

.field currentUserCardDataArrayList:Lcom/android/amomin1gofish/Models/UserModel;

.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isHost:Z

.field lllayout1:Landroid/widget/LinearLayout;

.field lllayout2:Landroid/widget/LinearLayout;

.field lllayout3:Landroid/widget/LinearLayout;

.field lllayout4:Landroid/widget/LinearLayout;

.field mainCardModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field myBluetoothAdress:Ljava/lang/String;

.field myBluetoothName:Ljava/lang/String;

.field player1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

.field player2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field player3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field player4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field playingOrder:Ljava/lang/String;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

.field score1:I

.field score2:I

.field score3:I

.field score4:I

.field scoreModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/ScoreModel;",
            ">;"
        }
    .end annotation
.end field

.field selectedPlayer:Ljava/lang/String;

.field private serverSocket:Landroid/bluetooth/BluetoothServerSocket;

.field tvCardCount:Landroid/widget/TextView;

.field private tvDeviceList:Landroid/widget/TextView;

.field tvScore:Landroid/widget/TextView;

.field userBluetoothInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/BluetoothModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/amomin1gofish/GameActivity;->score4:I

    .line 73
    const-string v1, "x"

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->playingOrder:Ljava/lang/String;

    .line 88
    const-string v1, "a7a906e0-c6a4-50fc-9cee-993175ae5ac4"

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->UUID_ID:Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->connectedSockets:Ljava/util/List;

    .line 91
    iput-boolean v0, p0, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    .line 331
    new-instance v0, Lcom/android/amomin1gofish/GameActivity$5;

    invoke-direct {v0, p0}, Lcom/android/amomin1gofish/GameActivity$5;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/amomin1gofish/GameActivity;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothServerSocket;

    .line 58
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/amomin1gofish/GameActivity;->handleConnection(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/amomin1gofish/GameActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    invoke-direct {p0}, Lcom/android/amomin1gofish/GameActivity;->makeDeviceDiscoverable()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/amomin1gofish/GameActivity;->startServerSocket(Landroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->btnBeHost:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->btnConnectToHost:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/amomin1gofish/GameActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    invoke-direct {p0}, Lcom/android/amomin1gofish/GameActivity;->discoverDevices()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/amomin1gofish/GameActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    invoke-direct {p0}, Lcom/android/amomin1gofish/GameActivity;->showDeviceListDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->tvDeviceList:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/amomin1gofish/GameActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->btnStartGame:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/amomin1gofish/GameActivity;->sendToAllConnectedDevices(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/amomin1gofish/GameActivity;->connectToDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .line 58
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity;->connectedSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/amomin1gofish/GameActivity;->listenForIncomingMessages(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/amomin1gofish/GameActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 58
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/amomin1gofish/GameActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/amomin1gofish/GameActivity;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method private connectToDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 390
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/amomin1gofish/GameActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/android/amomin1gofish/GameActivity$7;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 418
    return-void
.end method

.method private discoverDevices()V
    .registers 4

    .line 351
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 352
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 353
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 355
    :cond_d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 357
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/amomin1gofish/GameActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    return-void
.end method

.method private handleConnection(Landroid/bluetooth/BluetoothSocket;)V
    .registers 4
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .line 180
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->connectedSockets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/amomin1gofish/GameActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/amomin1gofish/GameActivity$4;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 296
    return-void
.end method

.method private listenForIncomingMessages(Landroid/bluetooth/BluetoothSocket;)V
    .registers 4
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .line 424
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/amomin1gofish/GameActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/android/amomin1gofish/GameActivity$8;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 591
    return-void
.end method

.method private makeDeviceDiscoverable()V
    .registers 4

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "discoverableIntent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->connectedSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&GOFISHGAME"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "data":Ljava/lang/String;
    :try_start_18
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->connectedSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 601
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_25} :catch_26

    .line 607
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_48

    .line 603
    :catch_26
    move-exception v2

    .line 604
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data could not be sent!: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 608
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_48
    goto :goto_52

    .line 609
    :cond_49
    const-string v0, "The device is not connected!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 612
    :goto_52
    return-void
.end method

.method private sendToAllConnectedDevices(Ljava/lang/Object;)V
    .registers 13
    .param p1, "data"    # Ljava/lang/Object;

    .line 303
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 304
    .local v0, "gson":Lcom/google/gson/Gson;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_11

    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "message":Ljava/lang/String;
    :goto_11
    const/16 v2, 0x258

    .line 306
    .local v2, "partSize":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 307
    .local v3, "messageLength":I
    invoke-virtual {p0}, Lcom/android/amomin1gofish/GameActivity;->gameOverChecker()V

    .line 309
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v3, :cond_61

    .line 310
    add-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 311
    .local v5, "end":I
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "partMessage":Ljava/lang/String;
    if-ne v5, v3, :cond_3c

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "GOFISHGAME"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    :cond_3c
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->connectedSockets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothSocket;

    .line 319
    .local v8, "socket":Landroid/bluetooth/BluetoothSocket;
    :try_start_4e
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 320
    .local v9, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_5a

    .line 323
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5e

    .line 321
    :catch_5a
    move-exception v9

    .line 322
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 324
    .end local v8    # "socket":Landroid/bluetooth/BluetoothSocket;
    .end local v9    # "e":Ljava/io/IOException;
    :goto_5e
    goto :goto_42

    .line 309
    .end local v5    # "end":I
    .end local v6    # "partMessage":Ljava/lang/String;
    :cond_5f
    add-int/2addr v4, v2

    goto :goto_1b

    .line 326
    .end local v4    # "i":I
    :cond_61
    return-void
.end method

.method private showDeviceListDialog()V
    .registers 5

    .line 364
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "Select a Device"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->deviceList:Ljava/util/List;

    .line 368
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->deviceList:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 371
    new-instance v2, Lcom/android/amomin1gofish/GameActivity$6;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$6;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 384
    .local v1, "dialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 385
    return-void
.end method

.method private startServerSocket(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/amomin1gofish/GameActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/amomin1gofish/GameActivity$3;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method


# virtual methods
.method public answerCardDialog(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 31
    .param p2, "selectedPlayer"    # Ljava/lang/String;
    .param p3, "whoAskedQuestion"    # Ljava/lang/String;
    .param p4, "selectedCard"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 983
    .local p1, "cardModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 984
    .local v9, "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/amomin1gofish/GameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 986
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/amomin1gofish/R$layout;->layout_answer_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 987
    .local v11, "dialogView":Landroid/view/View;
    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v12

    .line 988
    .local v12, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    const/high16 v13, 0x41a00000    # 20.0f

    .line 989
    .local v13, "cornerRadius":F
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    move-object v14, v1

    .line 990
    .local v14, "roundedCornerDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v13, v3, v0

    const/4 v4, 0x1

    aput v13, v3, v4

    const/4 v4, 0x2

    aput v13, v3, v4

    const/4 v4, 0x3

    aput v13, v3, v4

    const/4 v4, 0x4

    aput v13, v3, v4

    const/4 v4, 0x5

    aput v13, v3, v4

    const/4 v4, 0x6

    aput v13, v3, v4

    const/4 v4, 0x7

    aput v13, v3, v4

    invoke-direct {v1, v3, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v14, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 991
    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 992
    sget v0, Lcom/android/amomin1gofish/R$id;->tvDesc:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 993
    .local v15, "tvDesc":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " asks if you have a card worth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    sget v0, Lcom/android/amomin1gofish/R$id;->llayout:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 997
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_7f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_10a

    .line 998
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 999
    .local v3, "textView":Landroid/widget/TextView;
    move-object/from16 v2, p1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v0}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1001
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1002
    const/16 v1, 0x14

    .line 1003
    .local v1, "padding_in_dp":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/amomin1gofish/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1004
    .local v0, "scale":F
    int-to-float v2, v1

    mul-float/2addr v2, v0

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v2, v2, v16

    float-to-int v2, v2

    .line 1005
    .local v2, "padding_in_px":I
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1006
    move/from16 v17, v1

    .end local v1    # "padding_in_dp":I
    .local v17, "padding_in_dp":I
    const/high16 v1, -0x1000000

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1007
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v18, v2

    .end local v2    # "padding_in_px":I
    .local v18, "padding_in_px":I
    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v1

    .line 1011
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x5

    .line 1012
    .local v1, "margin_in_dp":I
    move/from16 v19, v4

    .end local v4    # "i":I
    .local v19, "i":I
    int-to-float v4, v1

    mul-float/2addr v4, v0

    add-float v4, v4, v16

    float-to-int v4, v4

    .line 1013
    .local v4, "margin_in_px":I
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1014
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    move-object/from16 v16, v9

    .end local v9    # "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    .local v16, "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    new-instance v9, Lcom/android/amomin1gofish/GameActivity$16;

    move/from16 v20, v0

    .end local v0    # "scale":F
    .local v20, "scale":F
    move-object v0, v9

    move/from16 v21, v1

    .end local v1    # "margin_in_dp":I
    .local v21, "margin_in_dp":I
    move-object/from16 v1, p0

    move-object/from16 v22, v2

    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .local v22, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v3

    move-object/from16 v23, v10

    move-object v10, v3

    .end local v3    # "textView":Landroid/widget/TextView;
    .local v10, "textView":Landroid/widget/TextView;
    .local v23, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v3, p4

    move/from16 v24, v4

    .end local v4    # "margin_in_px":I
    .local v24, "margin_in_px":I
    move-object/from16 v4, p1

    move/from16 v25, v13

    move-object v13, v5

    .end local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    .local v25, "cornerRadius":F
    move-object/from16 v5, p3

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/amomin1gofish/GameActivity$16;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 997
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v17    # "padding_in_dp":I
    .end local v18    # "padding_in_px":I
    .end local v20    # "scale":F
    .end local v21    # "margin_in_dp":I
    .end local v22    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "margin_in_px":I
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v6, p4

    move-object v5, v13

    move-object/from16 v9, v16

    move-object/from16 v10, v23

    move/from16 v13, v25

    .end local v19    # "i":I
    .local v4, "i":I
    goto/16 :goto_7f

    .line 1045
    .end local v4    # "i":I
    .end local v16    # "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v23    # "inflater":Landroid/view/LayoutInflater;
    .end local v25    # "cornerRadius":F
    .restart local v5    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    .local v10, "inflater":Landroid/view/LayoutInflater;
    .local v13, "cornerRadius":F
    :cond_10a
    sget v0, Lcom/android/amomin1gofish/R$id;->imgGoFish:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/amomin1gofish/GameActivity$17;

    invoke-direct {v1, v7, v12, v8}, Lcom/android/amomin1gofish/GameActivity$17;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    invoke-virtual {v12, v11}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1062
    invoke-virtual {v12}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1064
    return-void
.end method

.method public askCardDialog(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 25
    .param p2, "whoAskedQuestion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 866
    .local p1, "dialogCardModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 867
    .local v3, "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/android/amomin1gofish/GameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 869
    .local v5, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/android/amomin1gofish/R$layout;->layout_game_dialog:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 870
    .local v6, "dialogView":Landroid/view/View;
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v8

    .line 871
    .local v8, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    const/high16 v9, 0x41a00000    # 20.0f

    .line 872
    .local v9, "cornerRadius":F
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 873
    .local v10, "roundedCornerDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v11, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v12, 0x8

    new-array v12, v12, [F

    aput v9, v12, v4

    const/4 v13, 0x1

    aput v9, v12, v13

    const/4 v14, 0x2

    aput v9, v12, v14

    const/4 v14, 0x3

    aput v9, v12, v14

    const/4 v14, 0x4

    aput v9, v12, v14

    const/4 v14, 0x5

    aput v9, v12, v14

    const/4 v14, 0x6

    aput v9, v12, v14

    const/4 v14, 0x7

    aput v9, v12, v14

    invoke-direct {v11, v12, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 874
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 875
    sget v4, Lcom/android/amomin1gofish/R$id;->spinnerDialog:I

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 877
    .local v4, "spinner":Landroid/widget/Spinner;
    sget v7, Lcom/android/amomin1gofish/R$id;->imgClose:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v11, Lcom/android/amomin1gofish/GameActivity$13;

    invoke-direct {v11, v0, v8}, Lcom/android/amomin1gofish/GameActivity$13;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v7, "spinnerOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v11, v0, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v11, :cond_8d

    .line 886
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6f
    iget-object v12, v0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_89

    .line 887
    iget-object v12, v0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v12}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    .line 889
    .end local v11    # "i":I
    :cond_89
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 891
    :cond_8d
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8e
    iget-object v12, v0, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_a8

    .line 892
    iget-object v12, v0, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v12}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v11, v11, 0x1

    goto :goto_8e

    .line 894
    .end local v11    # "i":I
    :cond_a8
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 899
    :goto_ab
    new-instance v11, Landroid/widget/ArrayAdapter;

    const v12, 0x1090008

    invoke-direct {v11, v0, v12, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 900
    .local v11, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v12, 0x1090009

    invoke-virtual {v11, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 901
    invoke-virtual {v4, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 902
    new-instance v12, Lcom/android/amomin1gofish/GameActivity$14;

    invoke-direct {v12, v0}, Lcom/android/amomin1gofish/GameActivity$14;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    invoke-virtual {v4, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 915
    iget-object v12, v0, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    invoke-virtual {v12, v1}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;->groupAndRemoveCards(Ljava/util/ArrayList;)I

    move-result v12

    .line 916
    .local v12, "ashley":I
    if-lez v12, :cond_114

    .line 917
    iget v14, v0, Lcom/android/amomin1gofish/GameActivity;->score1:I

    add-int/2addr v14, v12

    iput v14, v0, Lcom/android/amomin1gofish/GameActivity;->score1:I

    .line 918
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_d2
    iget-object v15, v0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_10a

    .line 919
    iget-object v15, v0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v15}, Lcom/android/amomin1gofish/Models/ScoreModel;->getName()Ljava/lang/String;

    move-result-object v15

    iget-object v13, v0, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_106

    .line 920
    iget-object v13, v0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v13}, Lcom/android/amomin1gofish/Models/ScoreModel;->getScore()I

    move-result v13

    add-int/2addr v13, v12

    .line 921
    .local v13, "newScore":I
    iget-object v15, v0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v15, v13}, Lcom/android/amomin1gofish/Models/ScoreModel;->setScore(I)V

    .line 918
    .end local v13    # "newScore":I
    :cond_106
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x1

    goto :goto_d2

    .line 925
    .end local v14    # "i":I
    :cond_10a
    const-string v13, "Great! You Collected 4 Matching Cards!"

    const/4 v14, 0x1

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 929
    :cond_114
    sget v13, Lcom/android/amomin1gofish/R$id;->llayout:I

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 931
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_11d
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_18d

    .line 932
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 933
    .local v15, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    const/4 v1, -0x1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 935
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 936
    const/16 v1, 0x14

    .line 937
    .local v1, "padding_in_dp":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/amomin1gofish/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v17, v3

    .end local v3    # "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    .local v17, "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 938
    .local v3, "scale":F
    move-object/from16 v16, v4

    .end local v4    # "spinner":Landroid/widget/Spinner;
    .local v16, "spinner":Landroid/widget/Spinner;
    int-to-float v4, v1

    mul-float/2addr v4, v3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v4, v4, v18

    float-to-int v4, v4

    .line 939
    .local v4, "padding_in_px":I
    invoke-virtual {v15, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 940
    move/from16 v19, v1

    .end local v1    # "padding_in_dp":I
    .local v19, "padding_in_dp":I
    const/high16 v1, -0x1000000

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 941
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v20, v4

    .end local v4    # "padding_in_px":I
    .local v20, "padding_in_px":I
    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 945
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x5

    .line 946
    .local v4, "margin_in_dp":I
    move-object/from16 v21, v5

    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .local v21, "inflater":Landroid/view/LayoutInflater;
    int-to-float v5, v4

    mul-float/2addr v5, v3

    add-float v5, v5, v18

    float-to-int v5, v5

    .line 947
    .local v5, "margin_in_px":I
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 948
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    move-object/from16 v18, v1

    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .local v18, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Lcom/android/amomin1gofish/GameActivity$15;

    invoke-direct {v1, v0, v15, v2, v8}, Lcom/android/amomin1gofish/GameActivity$15;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroid/widget/TextView;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 967
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 931
    .end local v3    # "scale":F
    .end local v4    # "margin_in_dp":I
    .end local v5    # "margin_in_px":I
    .end local v15    # "textView":Landroid/widget/TextView;
    .end local v18    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "padding_in_dp":I
    .end local v20    # "padding_in_px":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v21

    goto :goto_11d

    .line 970
    .end local v14    # "i":I
    .end local v16    # "spinner":Landroid/widget/Spinner;
    .end local v17    # "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .local v3, "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    .local v4, "spinner":Landroid/widget/Spinner;
    .local v5, "inflater":Landroid/view/LayoutInflater;
    :cond_18d
    invoke-virtual {v8, v6}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 972
    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 974
    return-void
.end method

.method public deal(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 727
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->dealCards(Ljava/util/ArrayList;)V

    .line 728
    return-void
.end method

.method public dealCards(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;)V"
        }
    .end annotation

    .line 734
    .local p1, "allCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->player1:Ljava/util/ArrayList;

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->player2:Ljava/util/ArrayList;

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->player3:Ljava/util/ArrayList;

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->player4:Ljava/util/ArrayList;

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    .line 743
    new-instance v1, Lcom/android/amomin1gofish/Models/UserModel;

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->player1:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/amomin1gofish/Models/UserModel;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/amomin1gofish/Models/UserModel;

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->player2:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/amomin1gofish/Models/UserModel;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/amomin1gofish/Models/UserModel;

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->player3:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/amomin1gofish/Models/UserModel;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/amomin1gofish/Models/UserModel;

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->player4:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/amomin1gofish/Models/UserModel;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 748
    .local v0, "numPlayers":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_58
    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ge v1, v2, :cond_89

    .line 749
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5d
    if-ge v2, v0, :cond_86

    .line 750
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7e

    .line 751
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/amomin1gofish/Models/CardModel;

    .line 752
    .local v4, "card":Lcom/android/amomin1gofish/Models/CardModel;
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    .end local v4    # "card":Lcom/android/amomin1gofish/Models/CardModel;
    nop

    .line 749
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 754
    :cond_7e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "No Cards!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    return-void

    .line 748
    .end local v2    # "j":I
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 760
    .end local v1    # "i":I
    :cond_89
    const-string v1, "GOFISHGAME"

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1a7

    .line 761
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    .line 764
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 765
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device INFO: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    .line 767
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getAdress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getAdress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 766
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v2, Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    .line 769
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    .line 770
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 771
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 773
    sget v2, Lcom/android/amomin1gofish/R$id;->lllayout1:I

    invoke-virtual {p0, v2}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 774
    sget v2, Lcom/android/amomin1gofish/R$id;->lllayout3:I

    invoke-virtual {p0, v2}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 775
    sget v2, Lcom/android/amomin1gofish/R$id;->tvPlayer3:I

    invoke-virtual {p0, v2}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 776
    .local v2, "tvPlayer3":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    sget v5, Lcom/android/amomin1gofish/R$id;->imgShowPlayer1:I

    invoke-virtual {p0, v5}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 779
    .end local v2    # "tvPlayer3":Landroid/widget/TextView;
    goto/16 :goto_33f

    :cond_1a7
    const/4 v5, 0x3

    if-ne v0, v5, :cond_25c

    .line 780
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v5, Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    .line 784
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    .line 785
    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 786
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 788
    sget v5, Lcom/android/amomin1gofish/R$id;->lllayout1:I

    invoke-virtual {p0, v5}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 789
    sget v5, Lcom/android/amomin1gofish/R$id;->lllayout2:I

    invoke-virtual {p0, v5}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 790
    sget v5, Lcom/android/amomin1gofish/R$id;->lllayout3:I

    invoke-virtual {p0, v5}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 791
    sget v5, Lcom/android/amomin1gofish/R$id;->tvPlayer3:I

    invoke-virtual {p0, v5}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 792
    .local v5, "tvPlayer3":Landroid/widget/TextView;
    sget v6, Lcom/android/amomin1gofish/R$id;->tvPlayer2:I

    invoke-virtual {p0, v6}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 793
    .local v6, "tvPlayer2":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5    # "tvPlayer3":Landroid/widget/TextView;
    .end local v6    # "tvPlayer2":Landroid/widget/TextView;
    goto/16 :goto_33e

    .line 796
    :cond_25c
    const/4 v6, 0x4

    if-ne v0, v6, :cond_33e

    .line 797
    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    new-instance v6, Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    .line 802
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v7}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    .line 803
    iget-object v7, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 804
    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v7, p0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 807
    sget v6, Lcom/android/amomin1gofish/R$id;->lllayout1:I

    invoke-virtual {p0, v6}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 808
    sget v6, Lcom/android/amomin1gofish/R$id;->lllayout2:I

    invoke-virtual {p0, v6}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 809
    sget v6, Lcom/android/amomin1gofish/R$id;->lllayout3:I

    invoke-virtual {p0, v6}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 810
    sget v6, Lcom/android/amomin1gofish/R$id;->tvPlayer3:I

    invoke-virtual {p0, v6}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 811
    .local v6, "tvPlayer3":Landroid/widget/TextView;
    sget v7, Lcom/android/amomin1gofish/R$id;->tvPlayer2:I

    invoke-virtual {p0, v7}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 812
    .local v7, "tvPlayer2":Landroid/widget/TextView;
    sget v8, Lcom/android/amomin1gofish/R$id;->tvPlayer4:I

    invoke-virtual {p0, v8}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 813
    .local v8, "tvPlayer4":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v2}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33f

    .line 796
    .end local v6    # "tvPlayer3":Landroid/widget/TextView;
    .end local v7    # "tvPlayer2":Landroid/widget/TextView;
    .end local v8    # "tvPlayer4":Landroid/widget/TextView;
    :cond_33e
    :goto_33e
    nop

    .line 818
    :goto_33f
    sget v2, Lcom/android/amomin1gofish/R$id;->imgDeal:I

    invoke-virtual {p0, v2}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 821
    const-string v2, "1"

    iput-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->playingOrder:Ljava/lang/String;

    .line 823
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34f
    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3aa

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    .line 825
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/CardModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/CardModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 824
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto :goto_34f

    .line 827
    .end local v2    # "i":I
    :cond_3aa
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->sendToAllConnectedDevices(Ljava/lang/Object;)V

    .line 828
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Cards Left"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CARDCOUNT&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->sendToAllConnectedDevices(Ljava/lang/Object;)V

    .line 830
    return-void
.end method

.method public findIndexOfCardWithShortName(Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 5
    .param p2, "shortNameToFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 851
    .local p1, "cardModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 852
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-virtual {v1}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 853
    return v0

    .line 851
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 856
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public gameOverChecker()V
    .registers 5

    .line 1098
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->mainCardModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1100
    const-string v0, ""

    .line 1101
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    .line 1103
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/ScoreModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/amomin1gofish/Models/ScoreModel;

    invoke-virtual {v3}, Lcom/android/amomin1gofish/Models/ScoreModel;->getScore()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1105
    .end local v1    # "i":I
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game Over\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->infoDialog(Ljava/lang/String;)V

    .line 1107
    .end local v0    # "message":Ljava/lang/String;
    :cond_65
    return-void
.end method

.method public infoDialog(Ljava/lang/String;)V
    .registers 13
    .param p1, "message"    # Ljava/lang/String;

    .line 1070
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1071
    .local v0, "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1072
    invoke-virtual {p0}, Lcom/android/amomin1gofish/GameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1073
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/android/amomin1gofish/R$layout;->layout_info:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1074
    .local v3, "dialogView":Landroid/view/View;
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 1075
    .local v5, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    const/high16 v6, 0x41a00000    # 20.0f

    .line 1076
    .local v6, "cornerRadius":F
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 1077
    .local v7, "roundedCornerDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v8, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v9, 0x8

    new-array v9, v9, [F

    aput v6, v9, v1

    const/4 v10, 0x1

    aput v6, v9, v10

    const/4 v10, 0x2

    aput v6, v9, v10

    const/4 v10, 0x3

    aput v6, v9, v10

    const/4 v10, 0x4

    aput v6, v9, v10

    const/4 v10, 0x5

    aput v6, v9, v10

    const/4 v10, 0x6

    aput v6, v9, v10

    const/4 v10, 0x7

    aput v6, v9, v10

    invoke-direct {v8, v9, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1078
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1079
    sget v1, Lcom/android/amomin1gofish/R$id;->tvDesc:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1080
    .local v1, "tvDesc":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    sget v4, Lcom/android/amomin1gofish/R$id;->btnOk:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v8, Lcom/android/amomin1gofish/GameActivity$18;

    invoke-direct {v8, p0, v5}, Lcom/android/amomin1gofish/GameActivity$18;-><init>(Lcom/android/amomin1gofish/GameActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1089
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1091
    return-void
.end method

.method public onBackPressed()V
    .registers 8

    .line 99
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "rewardDialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    const-string v2, "Exit"

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    sget v2, Lcom/android/amomin1gofish/R$mipmap;->ic_launcher_round:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    const-string v2, "Do you want to exit the game?"

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    new-instance v2, Lcom/android/amomin1gofish/GameActivity$1;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$1;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    const-string v3, "YES"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 110
    new-instance v2, Lcom/android/amomin1gofish/GameActivity$2;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$2;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    const-string v3, "NO"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 116
    const/high16 v2, 0x41a00000    # 20.0f

    .line 117
    .local v2, "cornerRadius":F
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 118
    .local v3, "roundedCornerDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    aput v2, v5, v1

    const/4 v6, 0x1

    aput v2, v5, v6

    const/4 v6, 0x2

    aput v2, v5, v6

    const/4 v6, 0x3

    aput v2, v5, v6

    const/4 v6, 0x4

    aput v2, v5, v6

    const/4 v6, 0x5

    aput v2, v5, v6

    const/4 v6, 0x6

    aput v2, v5, v6

    const/4 v6, 0x7

    aput v2, v5, v6

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 119
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 616
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 617
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->requestWindowFeature(I)Z

    .line 618
    invoke-virtual {p0}, Lcom/android/amomin1gofish/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 620
    sget v1, Lcom/android/amomin1gofish/R$layout;->activity_main:I

    invoke-virtual {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->setContentView(I)V

    .line 622
    sget v1, Lcom/android/amomin1gofish/R$id;->btnBeHost:I

    invoke-virtual {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->btnBeHost:Landroid/widget/Button;

    .line 623
    sget v1, Lcom/android/amomin1gofish/R$id;->btnConnectToHost:I

    invoke-virtual {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->btnConnectToHost:Landroid/widget/Button;

    .line 624
    sget v1, Lcom/android/amomin1gofish/R$id;->tvDeviceList:I

    invoke-virtual {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->tvDeviceList:Landroid/widget/TextView;

    .line 625
    sget v1, Lcom/android/amomin1gofish/R$id;->tvCardCount:I

    invoke-virtual {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    .line 626
    sget v1, Lcom/android/amomin1gofish/R$id;->btnStartGame:I

    invoke-virtual {p0, v1}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->btnStartGame:Landroid/widget/Button;

    .line 630
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    if-nez v2, :cond_5f

    .line 632
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5f

    .line 634
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_67

    .line 637
    :cond_5f
    filled-new-array {v1, v4, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 643
    :cond_67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 644
    .local v1, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v2, 0x0

    if-nez v1, :cond_78

    .line 645
    const-string v0, "Bluetooth is not supported!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b2

    .line 647
    :cond_78
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->userBluetoothInfoList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/amomin1gofish/Models/BluetoothModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->myBluetoothAdress:Ljava/lang/String;

    .line 650
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    .line 651
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity;->scoreModelArrayList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/amomin1gofish/Models/ScoreModel;

    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/android/amomin1gofish/Models/ScoreModel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_b2

    .line 654
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v2, "enableBtIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v0}, Lcom/android/amomin1gofish/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 659
    .end local v2    # "enableBtIntent":Landroid/content/Intent;
    :cond_b2
    :goto_b2
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->btnBeHost:Landroid/widget/Button;

    new-instance v2, Lcom/android/amomin1gofish/GameActivity$9;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$9;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->btnConnectToHost:Landroid/widget/Button;

    new-instance v2, Lcom/android/amomin1gofish/GameActivity$10;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$10;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->btnStartGame:Landroid/widget/Button;

    new-instance v2, Lcom/android/amomin1gofish/GameActivity$11;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$11;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    sget v0, Lcom/android/amomin1gofish/R$id;->recyclerViewPlayer1:I

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->recyclerViewPlayer1:Landroidx/recyclerview/widget/RecyclerView;

    .line 696
    sget v0, Lcom/android/amomin1gofish/R$id;->lllayout1:I

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->lllayout1:Landroid/widget/LinearLayout;

    .line 697
    sget v0, Lcom/android/amomin1gofish/R$id;->lllayout2:I

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->lllayout2:Landroid/widget/LinearLayout;

    .line 698
    sget v0, Lcom/android/amomin1gofish/R$id;->lllayout3:I

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->lllayout3:Landroid/widget/LinearLayout;

    .line 699
    sget v0, Lcom/android/amomin1gofish/R$id;->lllayout4:I

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->lllayout4:Landroid/widget/LinearLayout;

    .line 701
    sget v0, Lcom/android/amomin1gofish/R$id;->tvScore:I

    invoke-virtual {p0, v0}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->tvScore:Landroid/widget/TextView;

    .line 702
    new-instance v2, Lcom/android/amomin1gofish/GameActivity$12;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$12;-><init>(Lcom/android/amomin1gofish/GameActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    return-void
.end method

.method public showPlayer1Cards(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 837
    iget-boolean v0, p0, Lcom/android/amomin1gofish/GameActivity;->isHost:Z

    if-eqz v0, :cond_17

    .line 838
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->NEWplayersArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v0}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/amomin1gofish/GameActivity;->askCardDialog(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_22

    .line 841
    :cond_17
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity;->currentUserCardDataArrayList:Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v0}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/amomin1gofish/GameActivity;->askCardDialog(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 845
    :goto_22
    return-void
.end method
