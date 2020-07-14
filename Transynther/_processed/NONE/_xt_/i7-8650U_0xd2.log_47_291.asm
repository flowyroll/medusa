.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xebd7, %r14
nop
nop
and %rbp, %rbp
mov (%r14), %rdx
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x19eb7, %rcx
nop
inc %r13
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
dec %rdx
lea addresses_D_ht+0x1430f, %r13
nop
nop
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
and $6695, %r14
lea addresses_WT_ht+0x13ed7, %rsi
lea addresses_normal_ht+0x125d7, %rdi
nop
nop
dec %rbp
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xc297, %rbp
nop
nop
inc %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
add $21633, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x2857, %rsi
lea addresses_PSE+0x10457, %rdi
nop
nop
cmp $29088, %r11
mov $37, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_US+0xe1c3, %rbp
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rbp)
nop
add $10279, %r14

// Store
lea addresses_normal+0x16a6b, %r9
nop
nop
nop
nop
nop
add $40374, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
and $59299, %r14

// Store
lea addresses_WT+0x8bd7, %rsi
nop
xor $23221, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movntdq %xmm4, (%rsi)
add %r11, %r11

// Store
lea addresses_WT+0x19a3b, %r14
nop
nop
nop
xor $27430, %r9
movb $0x51, (%r14)
nop
nop
inc %r14

// Load
mov $0x68c8870000000817, %r11
add %rdi, %rdi
mov (%r11), %rbp
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_normal+0x2857, %r11
nop
nop
nop
nop
inc %rsi
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'34': 47}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
