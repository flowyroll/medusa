.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x167fa, %rsi
lea addresses_UC_ht+0x1e63a, %rdi
nop
nop
and %r10, %r10
mov $113, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x843a, %r14
nop
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
and $40671, %rdi
lea addresses_UC_ht+0x115e2, %rsi
lea addresses_WT_ht+0x333a, %rdi
nop
nop
add %rdx, %rdx
mov $16, %rcx
rep movsq
nop
and $6857, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1c952, %rdi
nop
dec %rdx
movb $0x51, (%rdi)
inc %rdi

// Store
lea addresses_A+0x143a, %rax
nop
nop
nop
nop
and $20109, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
dec %rbx

// Store
mov $0x43a, %rdi
nop
inc %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
add $17864, %rdi

// Store
lea addresses_WT+0x743a, %rbx
sub %rdi, %rdi
movb $0x51, (%rbx)
nop
add %r9, %r9

// Store
lea addresses_A+0x1513a, %r9
nop
sub %rdx, %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x403a, %r12
nop
nop
nop
nop
sub $15415, %r9
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x803a, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $40717, %rax
movl $0x51525354, (%rbx)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x13f5a, %rbx
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
add $62900, %rdx

// Store
lea addresses_PSE+0x2d3a, %rbx
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_A+0x543a, %rbx
clflush (%rbx)
nop
cmp %rdi, %rdi
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'00': 1}
00
*/
