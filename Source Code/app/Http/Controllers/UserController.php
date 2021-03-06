<?php

namespace App\Http\Controllers;

use App\Admin;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        //
        return view('dashboard.profile')->with('User', User::find($id)->first());

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
        //
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
        //
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
        //

        if ($request->filled(['User_Name'])) {
            $User_Name = $request->input('User_Name');
        } else {
            $User_Name = User::find($id)->id;
        }

        if ($request->filled(['User_Email'])) {
            $User_Email = $request->input('User_Email');
        } else {
            $User_Email = User::find($id)->id;
        }


        User::where("id", $id)->update([
            'name'        => $request->input('User_Name'),
            'email'       => $request->input('User_Email'),
        ]);

        alert()->Success('User has been Updated', 'Success')->autoclose(3000);

        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        User::destroy($id);

        alert()->error('User has been Deleted', 'Deleted')->autoclose(3000);

        return redirect()->back();
    }
}
