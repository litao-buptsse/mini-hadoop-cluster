# Mini-Hadoop-Cluster

---

Mini-Hadoop-Cluster is tool to quick setup a hadoop cluster for developement and test.

---

## User Guide

### How To Quick Setup A Hadoop Cluster

```
./start-all.sh
```

---

### How To Quick Setup A Hadoop Client

```
./client.sh
```

---

## Admin Guid

### Build Docker Image

```
./package.sh
```

### Format Namenode

```
./client.sh  # enter client docker environment
bin/format_namenode.sh <id>  # run the script to format namenode <id>

```

