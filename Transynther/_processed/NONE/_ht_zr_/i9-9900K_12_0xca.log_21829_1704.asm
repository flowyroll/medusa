.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15f8e, %rsi
lea addresses_WT_ht+0x2bf6, %rdi
nop
nop
nop
nop
nop
sub $48814, %r14
mov $28, %rcx
rep movsq
inc %r8
lea addresses_normal_ht+0x41f6, %rbx
nop
xor %rdx, %rdx
mov (%rbx), %cx
nop
nop
nop
nop
nop
cmp $12787, %rdx
lea addresses_WT_ht+0x76cc, %rsi
and $720, %r14
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rdi
cmp $17894, %r8
lea addresses_WT_ht+0x165f6, %rsi
lea addresses_D_ht+0xaff0, %rdi
nop
nop
nop
cmp $45507, %rax
mov $66, %rcx
rep movsl
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x17a6e, %rax
nop
nop
cmp %rdi, %rdi
movb (%rax), %r14b
nop
sub $27408, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x117f6, %rbp
nop
nop
and $8273, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbp)
cmp %rbp, %rbp

// Store
mov $0xe1c1d0000000b56, %rbp
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x19de6, %rdx
nop
add $17830, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_US+0x1c3f6, %r13
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movaps %xmm6, (%r13)
nop
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_WC+0x1dbf6, %r14
nop
nop
nop
cmp $32976, %rcx
movups (%r14), %xmm7
vpextrq $1, %xmm7, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'44': 10954, '49': 10817, '00': 58}
00 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 00 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 00 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 00 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49
*/
