.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6a39, %rsi
lea addresses_WT_ht+0x7939, %rdi
nop
nop
inc %rax
mov $127, %rcx
rep movsb
cmp $21995, %r12
lea addresses_A_ht+0x2ff9, %rdx
add %r9, %r9
movb $0x61, (%rdx)
nop
cmp %r9, %r9
lea addresses_A_ht+0x1f39, %r9
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x11239, %rsi
lea addresses_WC_ht+0x14ab9, %rdi
nop
cmp $18044, %r13
mov $123, %rcx
rep movsw
nop
nop
dec %rdx
lea addresses_WT_ht+0x19239, %rdi
clflush (%rdi)
nop
inc %r13
mov (%rdi), %r12w
nop
nop
and $20675, %r12
lea addresses_D_ht+0x19161, %rcx
add %r12, %r12
mov (%rcx), %rdi
nop
nop
dec %rdx
lea addresses_WC_ht+0x5239, %r9
nop
and $35979, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
nop
and $5828, %rdx
lea addresses_WC_ht+0x39b1, %rdx
dec %rdi
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rax
add $18881, %rsi
lea addresses_WT_ht+0xbea6, %rcx
nop
and $51535, %r9
movl $0x61626364, (%rcx)
nop
cmp $35717, %rsi
lea addresses_A_ht+0xf0d9, %rsi
lea addresses_A_ht+0x16f9, %rdi
nop
dec %r12
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $27244, %rcx
lea addresses_normal_ht+0x4cf9, %rdi
sub %r9, %r9
mov (%rdi), %r12
nop
inc %r9
lea addresses_normal_ht+0x26b9, %r12
and %r9, %r9
movw $0x6162, (%r12)
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x175bc, %rsi
lea addresses_UC_ht+0x2f39, %rdi
clflush (%rdi)
dec %r12
mov $9, %rcx
rep movsq
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xd9a9, %rsi
lea addresses_UC_ht+0x6639, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $27, %rcx
rep movsq
dec %rdx
lea addresses_A_ht+0x91a7, %r12
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
sub $55074, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xde0d, %rbp
nop
nop
dec %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
sub $23601, %rbx

// Store
lea addresses_A+0xd7b9, %rdx
nop
nop
nop
nop
nop
inc %r10
movb $0x51, (%rdx)
nop
nop
nop
nop
add %r13, %r13

// Store
mov $0x447b000000000939, %rdx
nop
nop
nop
inc %r10
movw $0x5152, (%rdx)
nop
nop
nop
nop
add $64814, %rdx

// Store
lea addresses_RW+0x12939, %r13
nop
nop
nop
nop
dec %rbp
movb $0x51, (%r13)
nop
and %rsi, %rsi

// Load
lea addresses_normal+0x1a971, %r13
nop
nop
and %rcx, %rcx
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
sub $10274, %rbp

// Faulty Load
lea addresses_A+0x9239, %rcx
nop
nop
nop
and $57062, %r10
mov (%rcx), %esi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'00': 3}
00 00 00
*/
