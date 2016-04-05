CREATE ROLE gateKeeper IDENTIFIED BY centerByTheWayside;
GRANT CREATE SESSION TO gateKeeper;
GRANT INSERT ON radiosilence TO gateKeeper;
