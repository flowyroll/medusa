.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c94, %rsi
lea addresses_UC_ht+0x19c94, %rdi
nop
add %rbx, %rbx
mov $8, %rcx
rep movsq
nop
nop
nop
cmp $34643, %r15
lea addresses_A_ht+0x594b, %rsi
nop
sub $31628, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
inc %r11
lea addresses_normal_ht+0xc694, %rbx
nop
nop
nop
xor %r13, %r13
mov (%rbx), %r15
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x17494, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1e894, %rsi
nop
nop
nop
nop
nop
xor $5941, %rdi
mov (%rsi), %rcx
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx

// Load
mov $0x94, %r13
clflush (%r13)
nop
nop
nop
nop
cmp %rcx, %rcx
movntdqa (%r13), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
dec %r10

// Load
lea addresses_WC+0x7894, %rbx
nop
add %r11, %r11
mov (%rbx), %cx
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x70ba, %r9
nop
nop
nop
nop
nop
add $55122, %r10
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_WC+0x11b4, %r11
and %rax, %rax
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
nop
xor $3981, %r13

// Faulty Load
lea addresses_US+0x8094, %rax
add %r13, %r13
mov (%rax), %r11d
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 50}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
