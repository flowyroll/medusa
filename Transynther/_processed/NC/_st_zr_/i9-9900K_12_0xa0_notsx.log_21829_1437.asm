.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd4ed, %rbx
nop
add %r14, %r14
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
and %r8, %r8
lea addresses_WC_ht+0xfa4d, %rsi
lea addresses_A_ht+0xbce9, %rdi
nop
nop
and %r13, %r13
mov $45, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_UC_ht+0x11f9d, %rsi
lea addresses_WT_ht+0x161a1, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $81, %rcx
rep movsl
nop
dec %rdi
lea addresses_normal_ht+0x1c9ed, %r8
xor $58033, %rcx
movb $0x61, (%r8)
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x191ed, %rcx
nop
nop
add %r8, %r8
movb $0x61, (%rcx)
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xeaf5, %r8
dec %r13
mov (%r8), %ax
inc %rsi
lea addresses_normal_ht+0xa2ef, %rsi
lea addresses_WT_ht+0x1062d, %rdi
clflush (%rsi)
nop
nop
nop
xor %r8, %r8
mov $96, %rcx
rep movsb
nop
nop
nop
add $8230, %rcx
lea addresses_D_ht+0x12bed, %rcx
nop
nop
nop
nop
xor $17952, %rdi
mov (%rcx), %eax
nop
and %rsi, %rsi
lea addresses_D_ht+0x1225, %rsi
lea addresses_D_ht+0xcc55, %rdi
clflush (%rdi)
add %rbx, %rbx
mov $123, %rcx
rep movsl
nop
nop
nop
nop
xor $52372, %rdi
lea addresses_WT_ht+0x125ed, %rsi
lea addresses_A_ht+0xada5, %rdi
nop
nop
nop
nop
sub $23700, %rax
mov $105, %rcx
rep movsw
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0xb8ad, %rsi
lea addresses_D_ht+0x11a07, %rdi
nop
sub $50767, %rbx
mov $72, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x3bed, %rsi
lea addresses_normal_ht+0xc62d, %rdi
clflush (%rsi)
nop
nop
cmp $43729, %r14
mov $68, %rcx
rep movsl
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x9f91, %rbx
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x14568, %rsi
lea addresses_WT_ht+0x611d, %rdi
nop
nop
lfence
mov $110, %rcx
rep movsq
nop
nop
sub $773, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1966d, %rdx
nop
nop
nop
nop
nop
add $11583, %r8
movw $0x5152, (%rdx)
nop
nop
nop
nop
sub %r10, %r10

// Load
lea addresses_WC+0x1f96d, %rdx
nop
nop
nop
nop
sub $19664, %rcx
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x1b76d, %r10
nop
cmp %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
add %rbp, %rbp

// Store
mov $0x7ed, %rcx
nop
nop
inc %rdi
movl $0x51525354, (%rcx)
nop
dec %r8

// Load
lea addresses_D+0xbe5d, %r10
nop
inc %rsi
movups (%r10), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
cmp %rsi, %rsi

// Store
mov $0x34cb1300000009ed, %r8
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
add $19750, %rdx

// Store
mov $0x339732000000076d, %rbp
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
inc %rbp

// Store
lea addresses_PSE+0x45ed, %rcx
nop
nop
nop
cmp $16611, %rbp
movw $0x5152, (%rcx)
nop
sub %rsi, %rsi

// Faulty Load
mov $0x1e7f8800000009ed, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
movb (%rdi), %cl
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'58': 19348, '00': 2481}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58
*/
