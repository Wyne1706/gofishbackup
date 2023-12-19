.class Lcom/android/amomin1gofish/GameActivity$7;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->connectToDevice(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v1, v1, Lcom/android/amomin1gofish/GameActivity;->UUID_ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 395
    .local v0, "socket":Landroid/bluetooth/BluetoothSocket;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 396
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v1, v0}, Lcom/android/amomin1gofish/GameActivity;->access$602(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 397
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v2, Lcom/android/amomin1gofish/GameActivity$7$1;

    invoke-direct {v2, p0}, Lcom/android/amomin1gofish/GameActivity$7$1;-><init>(Lcom/android/amomin1gofish/GameActivity$7;)V

    invoke-virtual {v1, v2}, Lcom/android/amomin1gofish/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 403
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v1, v0}, Lcom/android/amomin1gofish/GameActivity;->access$700(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26

    .line 415
    .end local v0    # "socket":Landroid/bluetooth/BluetoothSocket;
    goto :goto_34

    .line 404
    :catch_26
    move-exception v0

    .line 406
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 407
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$7;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v2, Lcom/android/amomin1gofish/GameActivity$7$2;

    invoke-direct {v2, p0, v0}, Lcom/android/amomin1gofish/GameActivity$7$2;-><init>(Lcom/android/amomin1gofish/GameActivity$7;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Lcom/android/amomin1gofish/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    .end local v0    # "e":Ljava/io/IOException;
    :goto_34
    return-void
.end method
