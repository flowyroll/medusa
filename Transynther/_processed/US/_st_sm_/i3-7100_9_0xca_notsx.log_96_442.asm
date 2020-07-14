.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x6d9f, %rax
nop
nop
nop
dec %rdi
vmovaps (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
add $62599, %rcx

// Store
lea addresses_US+0x19d9f, %rax
inc %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
and $49286, %rbp

// Store
lea addresses_US+0x1459f, %rcx
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
cmp $4426, %rdx

// Store
lea addresses_WC+0x1fa2b, %rdi
nop
nop
nop
nop
nop
xor $16151, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_WC+0x1469f, %rdi
nop
nop
dec %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
and %rbp, %rbp

// Faulty Load
lea addresses_US+0x1459f, %rax
nop
cmp $12902, %rbp
mov (%rax), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 96}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
