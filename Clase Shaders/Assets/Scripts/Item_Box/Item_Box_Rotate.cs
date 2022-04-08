using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item_Box_Rotate : MonoBehaviour
{
    [SerializeField] float speed;
    // Start is called before the first frame update
    void Start()
    {
        Application.targetFrameRate = 60;
    }

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(0, Time.deltaTime * speed , 0, Space.Self);
    }
}
