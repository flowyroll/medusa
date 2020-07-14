.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ae1f, %rdx
nop
sub %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
add $9135, %rbx
lea addresses_WT_ht+0xbff7, %rsi
nop
nop
cmp $18732, %r15
mov (%rsi), %r9d
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x19b47, %rsi
lea addresses_A_ht+0x15880, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $123, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x12607, %rsi
nop
and %rbx, %rbx
movl $0x61626364, (%rsi)
nop
and %rbx, %rbx
lea addresses_D_ht+0xcfc7, %rdi
nop
add $19032, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xee07, %rsi
lea addresses_normal_ht+0x1edc7, %rdi
add %r9, %r9
mov $109, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x9487, %rdi
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
cmp $12950, %rsi
lea addresses_normal_ht+0x8147, %rbx
nop
nop
nop
add $54852, %rdi
movb (%rbx), %cl
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x12ec7, %rdi
clflush (%rdi)
nop
add $28680, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rdi)
nop
nop
xor $35975, %rdi
lea addresses_D_ht+0x14217, %r9
clflush (%r9)
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0xe697, %rsi
lea addresses_normal_ht+0x49f7, %rdi
sub $43468, %rbx
mov $94, %rcx
rep movsl
nop
nop
nop
add $1403, %rdi
lea addresses_WC_ht+0x19b47, %r12
clflush (%r12)
dec %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r12
vmovaps %ymm7, (%r12)
nop
nop
nop
nop
xor $38031, %r12
lea addresses_WT_ht+0x15f3d, %rsi
nop
and $39658, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x12e33, %rsi
nop
nop
nop
xor $42480, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0xa347, %r12
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x627cd70000000267, %rcx
nop
and %r13, %r13
movl $0x51525354, (%rcx)
nop
add $31532, %rcx

// Store
mov $0x29d7be0000000b47, %r9
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
add $7334, %rdx

// Store
lea addresses_normal+0x1f00f, %rdi
nop
nop
sub $1369, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movaps %xmm3, (%rdi)
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x101d, %rcx
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovaps %ymm4, (%rcx)
cmp $15274, %r13

// Store
lea addresses_normal+0xefb7, %rbp
nop
nop
nop
nop
and $51387, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
and %rcx, %rcx

// Faulty Load
mov $0x29d7be0000000b47, %rdi
nop
nop
nop
xor %rdx, %rdx
mov (%rdi), %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 161, '58': 108}
00 58 58 00 00 00 00 00 58 58 58 58 00 00 00 58 00 00 00 00 00 00 58 00 58 00 58 00 58 58 00 00 00 00 58 00 00 00 00 00 58 58 00 00 58 58 00 00 58 58 00 58 00 00 58 58 00 00 00 58 58 58 00 58 58 00 58 58 00 00 58 00 58 00 00 00 58 58 00 00 00 58 00 58 00 00 58 00 00 00 00 58 58 00 58 58 58 00 00 00 00 00 00 58 00 00 58 00 58 00 58 00 00 00 58 58 00 00 58 00 58 58 58 00 58 58 00 00 00 00 00 58 58 58 00 00 00 58 00 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 58 00 00 00 58 00 00 58 58 58 58 58 58 00 00 58 58 00 00 00 00 58 58 58 58 58 00 58 00 00 58 00 00 00 00 58 00 00 00 00 00 58 58 00 00 00 58 58 58 00 58 00 58 00 00 00 00 00 00 00 58 58 00 58 58 58 58 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 58 00 58 00 58 00 00 58 58 58 00 00 58 00 00 00 58 58 58 00 00 00 58 58 00 58
*/
