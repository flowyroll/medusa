.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rdi
push %rsi
lea addresses_A_ht+0x176c7, %r8
nop
nop
and $61945, %rsi
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xa5c7, %r9
nop
nop
nop
and %r12, %r12
mov (%r9), %rbx
nop
nop
nop
nop
add $43699, %r13
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x116c7, %rdi
nop
nop
nop
sub %rax, %rax
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WT+0xa0a7, %rdx
nop
nop
add $11307, %r10
movl $0x51525354, (%rdx)

// Exception!!!
mov (0), %rsi
nop
nop
nop
nop
nop
cmp $48401, %rdi

// Store
lea addresses_PSE+0x19e2, %rdx
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rdx)
nop
nop
dec %rsi

// Store
lea addresses_WT+0x17250, %rax
nop
nop
nop
cmp %rdx, %rdx
movb $0x51, (%rax)
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_normal+0x15206, %rax
nop
nop
nop
nop
nop
and $32890, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
sub %r8, %r8

// Load
lea addresses_UC+0x68b7, %rdx
nop
cmp $27742, %rdi
mov (%rdx), %eax
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x11037, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_normal+0x5ec7, %rdi
nop
nop
nop
cmp $45585, %rax
mov (%rdi), %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'34': 14}
34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
