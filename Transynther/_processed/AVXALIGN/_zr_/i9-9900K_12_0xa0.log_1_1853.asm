.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf8a9, %rax
nop
and $16825, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %rax
movntdq %xmm3, (%rax)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x13d21, %rsi
lea addresses_WC_ht+0x1a8a9, %rdi
nop
sub %r13, %r13
mov $15, %rcx
rep movsq
nop
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x7ee9, %rcx
nop
dec %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x90a9, %rax
nop
nop
sub %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
and $17623, %rax
lea addresses_A_ht+0x1d3a9, %rsi
nop
cmp $60705, %r9
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1d109, %rsi
nop
nop
inc %rbp
movb (%rsi), %cl
nop
nop
nop
nop
nop
add $12627, %rsi
lea addresses_WC_ht+0x14089, %rsi
clflush (%rsi)
nop
nop
nop
dec %r9
movw $0x6162, (%rsi)
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0xa8a9, %rbx
nop
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
dec %r13

// Store
mov $0x7ba2450000000aa9, %rdi
inc %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
dec %rbx

// Store
lea addresses_WT+0xa8a9, %rdi
cmp $9064, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
sub $62018, %r13

// Load
lea addresses_WT+0x17e95, %r12
nop
nop
and $9607, %rdi
mov (%r12), %cx

// Exception!!!
nop
nop
mov (0), %r14
nop
nop
nop
and %r13, %r13

// Load
lea addresses_A+0x1bd7f, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r14
nop
and $43104, %r14

// Store
lea addresses_D+0xcf69, %rcx
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0x706b4f0000000953, %rbx
nop
nop
sub $9046, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbx)
nop
cmp %rdi, %rdi

// Store
mov $0x3d66700000008f5, %rsi
nop
nop
nop
nop
cmp $57504, %r12
movl $0x51525354, (%rsi)
xor %rbx, %rbx

// Faulty Load
lea addresses_WT+0xa8a9, %r13
nop
nop
nop
nop
nop
and %rbx, %rbx
movntdqa (%r13), %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2}}
{'00': 1}
00
*/
