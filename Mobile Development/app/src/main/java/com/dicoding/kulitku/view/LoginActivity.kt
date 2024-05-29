package com.dicoding.kulitku.view

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.InputType
import android.util.Patterns
import com.dicoding.kulitku.MainActivity
import com.dicoding.kulitku.R
import com.dicoding.kulitku.databinding.ActivityLoginBinding

class LoginActivity : AppCompatActivity() {

    private lateinit var binding: ActivityLoginBinding
    private var passwordShowing = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLoginBinding.inflate(layoutInflater)
        setContentView(binding.root)

        supportActionBar?.hide()

        binding.passwordIcon.setOnClickListener {
            if (passwordShowing) {
                passwordShowing = false
                binding.edPassword.inputType =
                    InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_PASSWORD
                binding.passwordIcon.setImageResource(R.drawable.password_show)
            } else {
                passwordShowing = true
                binding.edPassword.inputType = InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
                binding.passwordIcon.setImageResource(R.drawable.password_hide)
            }
            binding.edPassword.setSelection(binding.edPassword.length())
        }

        binding.btnLogin.setOnClickListener {
            val email = binding.edEmail.text.toString().trim()
            val password = binding.edPassword.text.toString().trim()

            if (email.isEmpty()) {
                binding.edEmail.error = getString(R.string.email_empty_error)
                binding.edEmail.requestFocus()
                return@setOnClickListener
            }

            if (!Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
                binding.edEmail.error = getString(R.string.email_invalid_error)
                binding.edEmail.requestFocus()
                return@setOnClickListener
            }

            if (password.isEmpty()) {
                binding.edPassword.error = getString(R.string.password_empty_error)
                binding.edPassword.requestFocus()
                return@setOnClickListener
            }

            if (password.length < 8 || !password.matches(".*\\d.*".toRegex()) || !password.matches(".*[a-zA-Z].*".toRegex())) {
                binding.edPassword.error = getString(R.string.password_invalid_error)
                binding.edPassword.requestFocus()
                return@setOnClickListener
            }

            val intent = Intent(this, MainActivity::class.java)
            startActivity(intent)
        }

        binding.btnRegister.setOnClickListener {
            val intent = Intent(this, RegisterActivity::class.java)
            startActivity(intent)
        }
    }


}