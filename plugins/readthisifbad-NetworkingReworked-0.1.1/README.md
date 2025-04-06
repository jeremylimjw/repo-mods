# NetworkingReworked

NetworkingReworked is a BepInEx Harmony patch for the Unity-based multiplayer game REPO, designed to overhaul the network physics and ownership model. If you're tired of the clunky delay and desync when playing REPO as a client, this mod turns multiplayer into something that actually feels responsive — more like singleplayer with friends.

---

## Important Notes

- All players (host and clients) must have this mod installed.
- Incompatible with server-sided mods that expect strict host authority.
- If you experience any regressions, glitches, or odd behaviors — let me know on Discord: @readthisifbad

---

## What This Mod Does

REPO was designed with a heavy host-authoritative model, meaning the host controls almost all physics behavior. This results in extremely high input latency for clients, especially during physics-heavy interactions.

This mod:

- Replaces host-only logic (e.g., `PhotonNetwork.IsMasterClient`) with per-object ownership checks (`PhotonView.IsMine`)
- Allows clients to simulate and control objects they own
- Introduces predictive ownership transfer logic for grabbing and collisions
- Syncs object state manually during ownership transitions to avoid flickering or glitches
- Stabilizes physics behavior for carts, doors, valuables, and other interactive objects
- Adds ping-compensated ownership logic, giving control to the player with the best connection
- Allows for predictive collision-based ownership handoff
- Syncs hinge state and other special-case physics features on transfer

In short: clients now behave almost identically to the host, removing most of the jank normally seen in REPO multiplayer.

---

## What is Photon?

[Photon Unity Networking (PUN)](https://www.photonengine.com/pun) is a real-time networking framework for Unity. In REPO, each interactive object has a `PhotonView` that determines who owns and simulates it.

By default, REPO assigns almost everything to the host (MasterClient), leading to major latency. This mod gives that authority back to clients when appropriate, leading to better responsiveness and smoother gameplay.

---

## How REPO Networking Works

![Normal Photon Networking Sequence](https://i.gyazo.com/871706b74ad2a346a64d8e35480630a0.png)

Multiplayer traffic in REPO is routed through Photon. The host (MasterClient) is the source of truth. When a client interacts with something:

1. The client sends an event to the host
2. The host processes it
3. The host sends back the result

This introduces a full round-trip delay before anything meaningful happens, which is especially bad for physics.

This mod removes most of that round-trip logic and lets clients act directly on what they own.

![NetworkingReworked](https://i.gyazo.com/19baac017b202ed181e24b439e7912f6.png)

---

## Patched Behaviors

| System                     | Behavior                        | Fix                                                                 |
|----------------------------|----------------------------------|----------------------------------------------------------------------|
| `PhysGrabObject`           | Grab/release logic              | Ownership handling, syncing, ping prediction                         |
| `PhysGrabHinge`            | Hinged object physics           | Prevents joint destruction, adds hinge syncing                       |
| `PhotonTransformView`     | Transform syncing               | Prevents transform glitches during transfer                          |
| `PhysGrabCart`             | Pulling and state transitions   | Client-sided authority, ping-buffered control                        |
| `PhysGrabObjectGrabArea`  | Grab detection                  | Ensures detection runs on the client side                            |
| `OwnershipTakeoverHelper` | Authority handoff monitoring    | Predictive ownership, stabilization, ping-based resolution           |
| `ImpactSyncHandler`       | Impact velocity/rotation sync   | Manually synced collisions                                           |
| `PhotonView.TransferOwnership` | Ownership change          | Applies physics state and grab fixups on transfer                    |
| `PredictiveOwnershipCheck`| Pre-impact ownership transfer   | Detects physics collisions before they happen                        |

---

## Known Issues

### Scripted Valuables
Some valuables with custom scripts might behave incorrectly. Let me know which ones and I'll patch them.

### Carts
Spamming grab can occasionally result in the host regaining ownership. Wait a moment and try again if this happens.

---

## Setup Instructions

1. Install [BepInEx](https://github.com/BepInEx/BepInEx/releases) into your REPO installation folder.
2. Place this mod's `.dll` into the `BepInEx/plugins` folder.
3. Launch the game and join a multiplayer session. All players must have the mod installed.
