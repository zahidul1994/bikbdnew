<?php

namespace App\Http\Controllers\api\v1\admin;

use App\Engine;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class EngineController extends Controller
{
    public function index()
    {
        
        return Engine::paginate(4);
        //dd($purchase);
       // 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            
            'enginetype' => 'required|min:3|max:50|unique:engines',

        ],
    [
        'enginetype.required'=>"The  engine type name field is required",
        'enginetype.min'=>"The engine type name  must be at least 3 characters",
        'enginetype.max'=>"The engine type name  must be at least 50 characters",
         ]);

    // if ($validator->fails()) {


    //     return response()->json([
    //      'success' =>false,
    //      'message'=>'Validation Fails',
    //      'errors'=>$validator->errors()->all()],401);
    // }



    $list = new Engine();
    $list->enginetype = $request->enginetype;
    $list->admin_id =  Auth::guard('admin')->user()->id;
    $list->save();

    if ($list->save()) {
      return response()->json([
          'success' => true,
           'message'=>'Engine Type Create Successfully',
           'value'=>$list
      ],201);
    } else {
        return response()->json([
            'success' => false,
             'message'=>'Record Not Found',
             
        ],404);
    }

       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    
        $info = Engine::find($id);
        if($info){
            return response()->json([
                'success'=>true,
                'message'=>'Record Found',
                'engine' => $info], 200);
        }
        else{
            return response()->json([
                'success'=>false,
                'message'=>'Record Not Found',
                'id' => $id], 404);
        }

        
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $this->validate($request,[
            
            'enginetype' => 'required|min:3|max:50|unique:engines,enginetype,'.$id,

        ],
    [
        'enginetype.required'=>"The  engine type field is required",
        'enginetype.min'=>"The engine type  must be at least 3 characters",
        'enginetype.max'=>"The engine type  must be at least 50 characters",
         ]);
      
       

        // if ($validator->fails()) {


        //     return response()->json([
        //      'success' =>false,
        //      'message'=>'Validation Fails',
        //      'errors'=>$validator->errors()->all()],422);
        // }
    
    
    
        $list = Engine::find($id);
        $list->enginetype = $request->enginetype;
        $list->admin_id =  Auth::guard('admin')->user()->id;
        $list->update();
    
        if ($list->update()) {
          return response()->json([
              'success' => true,
               'message'=>'Record Update Successfully',
               'value'=>$list
          ],200);
        } else {
            return response()->json([
                'success' => false,
                 'message'=>'Record Update Faild',
                 
            ],404);
        }
    
           
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       
        if (Engine::destroy($id)) {
           
            return response()->json([
                'success' => true,
                'message'=>'Record Delete Successfully'
            ],200);
        } else {
            
            return response()->json([
                'success' => false,
                 'message'=>'Record Not Found',
                'id'=>$id],404);
        }
    
    }

    public function enginesearch(Request $request){
        $id =$request->s;
         if ($id !==null) {
            return Engine::where('admin_id',Auth::guard('admin')->user()->id)->where('enginetype','LIKE','%%%'.urldecode($id).'%%%')->paginate(3);
         }
        
    else {
        return $this->index();
    }
     }
}
