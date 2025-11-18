#include <stdio.h>

int parent[10];

int find(int i) {
    while (parent[i] != i)
        i = parent[i];
    return i;
}

void union_set(int i, int j) {
    int a = find(i);
    int b = find(j);
    parent[a] = b;
}

int main() {
    int n, cost[10][10];
    printf("Enter number of nodes: ");
    scanf("%d", &n);

    printf("Enter the cost adjacency matrix:\n");
    for (int i = 1; i <= n; i++)
        for (int j = 1; j <= n; j++) {
            scanf("%d", &cost[i][j]);
            if (cost[i][j] == 0)
                cost[i][j] = 999;
        }

    for (int i = 1; i <= n; i++)
        parent[i] = i;

    int ne = 1, mincost = 0;

    printf("\nEdges in Minimum Spanning Tree:\n");

    while (ne < n) {
        int min = 999, a = -1, b = -1;

        for (int i = 1; i <= n; i++)
            for (int j = 1; j <= n; j++)
                if (cost[i][j] < min) {
                    min = cost[i][j];
                    a = i;
                    b = j;
                }

        int u = find(a);
        int v = find(b);

        if (u != v) {
            printf("Edge %d: (%d, %d) cost = %d\n", ne++, a, b, min);
            mincost += min;
            union_set(u, v);
        }

        cost[a][b] = cost[b][a] = 999;
    }

    printf("\nMinimum Cost = %d\n", mincost);
    return 0;
}
