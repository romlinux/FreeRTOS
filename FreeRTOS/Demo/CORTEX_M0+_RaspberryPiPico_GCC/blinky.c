#include <FreeRTOS.h>
#include <task.h>

static void prvBlinkyTask( void *pvParameters );

#define blinkyTASK_PRIORITY         ( tskIDLE_PRIORITY + 1 )

int main()
{
    xTaskCreate( prvBlinkyTask,
                 "PicoBlinky",
                 configMINIMAL_STACK_SIZE,
                 NULL,
                 blinkyTASK_PRIORITY,
                 NULL );
    vTaskStartScheduler();

    for( ;; );
}

static void prvBlinkyTask( void *pvParameters )
{
    while(1);   
}
