import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.PlayerUseHoeEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;

//crafttweaker.event.PlayerLoggedInEvent
events.onPlayerLoggedIn(function(e as crafttweaker.event.PlayerLoggedInEvent) {
e.player.sendMessage("/bq_admin default load");
});