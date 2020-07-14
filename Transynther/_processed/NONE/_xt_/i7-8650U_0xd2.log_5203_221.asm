.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19225, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rdi), %ebp
nop
nop
xor $55404, %r10
lea addresses_WC_ht+0xb569, %r10
nop
xor %r13, %r13
movb (%r10), %bl
nop
nop
inc %rdx
lea addresses_WC_ht+0x17e75, %rdi
nop
nop
nop
nop
xor $60375, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x67a5, %rsi
lea addresses_normal_ht+0x70a5, %rdi
nop
nop
nop
nop
xor $32883, %rdx
mov $34, %rcx
rep movsl
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xe073, %rdx
nop
nop
cmp $48642, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rdx)
cmp %rdx, %rdx
lea addresses_A_ht+0x83d6, %rdi
clflush (%rdi)
nop
nop
nop
inc %rbp
movw $0x6162, (%rdi)
nop
nop
nop
add $15032, %rcx
lea addresses_WC_ht+0xbca5, %rdi
nop
nop
nop
nop
xor $28046, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdi)
dec %r13
lea addresses_WC_ht+0xe3a5, %rdx
nop
nop
nop
cmp $21719, %rdi
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x99cf, %rsi
lea addresses_WC_ht+0x69a5, %rdi
sub %rdx, %rdx
mov $54, %rcx
rep movsb
nop
and %rsi, %rsi
lea addresses_WT_ht+0x80e5, %rdi
nop
nop
nop
nop
nop
sub $8881, %rdx
movb (%rdi), %bl
nop
cmp %r12, %r12
lea addresses_A_ht+0xf005, %rsi
lea addresses_UC_ht+0x108d9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
mfence
mov $1, %rcx
rep movsq
nop
nop
sub $48844, %r12
lea addresses_D_ht+0xf7a5, %rbx
cmp $34768, %rsi
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1b4a5, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1a825, %rcx
nop
nop
nop
cmp $32651, %rdi
movb (%rcx), %dl
nop
nop
nop
sub $19128, %rsi
lea addresses_WC_ht+0x8525, %rsi
lea addresses_normal_ht+0x187a5, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $44, %rcx
rep movsq
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rsi

// Load
lea addresses_US+0x15a65, %rax
nop
sub $24090, %rbp
movaps (%rax), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x19555, %rbp
nop
and $59887, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_WT+0xbf25, %r9
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r9)
nop
nop
and $46542, %r15

// Store
lea addresses_normal+0xe3a5, %rbp
xor $27675, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbp)
nop
cmp %r15, %r15

// Store
lea addresses_PSE+0x5aa5, %rsi
nop
nop
nop
nop
and $18621, %r11
movb $0x51, (%rsi)
nop
nop
nop
inc %r15

// Load
mov $0x22ef7c00000005dd, %rbp
inc %r12
mov (%rbp), %si
nop
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_D+0x1e3a5, %r12
nop
nop
nop
nop
nop
add %rax, %rax
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'36': 5203}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
