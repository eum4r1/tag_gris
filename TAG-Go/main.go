package main

import (
	"fmt"
	"net"
	"sync"
)

func scan(port int, waitGroup *sync.WaitGroup) error {
	address := fmt.Sprintf("scanme.nmap.org:%d", port)
	conn, err := net.Dial("tcp", address)
	if err != nil {
		fmt.Printf("%d: %s\n", port, err.Error())
		waitGroup.Done()
		return err
	}
	conn.Close()
	fmt.Printf("%d: open\n", port)
	waitGroup.Done()
	return nil
}

func main() {


	var waitGroup sync.WaitGroup
	// Faça um scanner que varra apenas 2 portas simultâneamente, ou seja, que tenha apenas 2 goroutines funcionando ao mesmo tempo.
	var i int =0
	var port int =0
	
	for i=1;i<9000;i++{
	waitGroup.Add(2)
	go scan(port, &waitGroup)
	go scan(port+1, &waitGroup)
	port=port+2 
	waitGroup.Wait()	
		
		

}
	waitGroup.Wait()
}
