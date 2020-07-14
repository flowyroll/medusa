.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xdef0, %rsi
lea addresses_WC_ht+0x2370, %rdi
and $18088, %rbp
mov $107, %rcx
rep movsw
nop
nop
nop
nop
xor $54424, %rcx
lea addresses_UC_ht+0x6b0, %r14
nop
sub $12227, %rdx
movups (%r14), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1d6f0, %rbp
clflush (%rbp)
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
dec %rdx
lea addresses_normal_ht+0x2cf0, %rsi
lea addresses_normal_ht+0x1b9a0, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
xor $44325, %r10
mov $9, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x13f30, %rbx
and $28126, %rdx
movw $0x6162, (%rbx)
nop
nop
nop
cmp $51482, %r14
lea addresses_normal_ht+0x1d170, %r10
clflush (%r10)
nop
nop
nop
and $49073, %rsi
movw $0x6162, (%r10)
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x12710, %r10
nop
nop
nop
nop
nop
xor $18736, %rdx
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
add %r14, %r14
lea addresses_D_ht+0x10f7c, %rsi
lea addresses_A_ht+0x7af0, %rdi
nop
sub $53418, %rdx
mov $88, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $49901, %rdi
lea addresses_WC_ht+0x1a6f0, %rsi
lea addresses_normal_ht+0x1c710, %rdi
nop
nop
cmp $37940, %r14
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $46761, %rbp
lea addresses_A_ht+0x4ff0, %r10
nop
nop
nop
nop
nop
and $22665, %rsi
movw $0x6162, (%r10)
xor $30286, %r10
lea addresses_normal_ht+0x1ccf0, %rdi
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
xor %rsi, %rsi
lea addresses_normal_ht+0x10, %rcx
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0xc5b0, %rsi
lea addresses_D_ht+0x174f0, %rdi
clflush (%rdi)
nop
xor %rdx, %rdx
mov $1, %rcx
rep movsw
nop
nop
nop
nop
and $2440, %rdi
lea addresses_UC_ht+0x125f0, %rcx
nop
nop
nop
and %rbp, %rbp
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
nop
cmp $30179, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x10ad2, %rsi
xor %r15, %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_D+0xc810, %r9
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
nop
nop
cmp $53190, %rsi

// Store
lea addresses_WT+0xcf30, %rsi
nop
nop
add $22381, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovaps %ymm1, (%rsi)
nop
xor %r9, %r9

// Store
mov $0x8f0, %r15
nop
nop
nop
nop
xor $39048, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r15)
xor %r15, %r15

// Faulty Load
lea addresses_WT+0xc6f0, %r12
nop
nop
nop
nop
xor %r15, %r15
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 104}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
