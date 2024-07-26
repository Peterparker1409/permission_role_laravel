<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     *
     * @return bool
     */
    public function authorize()
    {
        return true; // Thay đổi nếu bạn cần kiểm tra quyền của người dùng
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email'],
            'password' => ['required', 'string', 'min:5', 'confirmed'],
        ];
    }

    /**
     * Get the validation messages that apply to the request.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'email.unique' => 'Email đã được sử dụng, vui lòng nhập email khác.',
            'password.confirmed' => 'Xác nhận mật khẩu không đúng.',
            'password.min' => 'Mật khẩu phải có ít nhất 5 ký tự.',
        ];
    }
}
