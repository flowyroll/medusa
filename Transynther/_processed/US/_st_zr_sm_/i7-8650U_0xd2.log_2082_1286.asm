.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8597, %rsi
lea addresses_D_ht+0x93ce, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
cmp $34445, %r15
mov $3, %rcx
rep movsl
xor %r11, %r11
lea addresses_normal_ht+0xc49b, %r14
xor %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %r14
movaps %xmm0, (%r14)
nop
nop
nop
cmp $6207, %r11
lea addresses_WC_ht+0x195a3, %rsi
lea addresses_WT_ht+0x10f9b, %rdi
nop
nop
cmp %r15, %r15
mov $91, %rcx
rep movsb
nop
cmp %r15, %r15
lea addresses_UC_ht+0x16d1b, %r11
nop
nop
nop
nop
nop
dec %r15
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
nop
xor $61211, %r11
lea addresses_WC_ht+0xa59b, %rsi
lea addresses_A_ht+0x1f9b, %rdi
add %rbx, %rbx
mov $91, %rcx
rep movsw
nop
nop
xor $64449, %rbx
lea addresses_normal_ht+0x1db57, %rcx
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1929b, %rdi
clflush (%rdi)
add %rax, %rax
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x654, %rsi
nop
nop
nop
nop
xor %r14, %r14
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
inc %r14
lea addresses_UC_ht+0x11bdb, %r15
dec %rsi
mov (%r15), %rdi
nop
nop
and $62042, %rbx
lea addresses_A_ht+0xe04b, %rsi
nop
nop
nop
nop
cmp $15049, %rcx
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x8f9b, %rsi
lea addresses_WC_ht+0x707b, %rdi
nop
nop
nop
xor $15894, %r15
mov $76, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $35811, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rcx

// Store
lea addresses_WT+0x479b, %rbp
nop
nop
nop
xor $18423, %r14
movb $0x51, (%rbp)
cmp %r13, %r13

// Store
lea addresses_US+0xaf9b, %r10
cmp $25036, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
xor $13626, %rcx

// Faulty Load
lea addresses_US+0xaf9b, %r11
nop
nop
nop
nop
inc %r13
mov (%r11), %cx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'58': 1299, '00': 783}
58 00 58 58 58 00 58 00 58 58 58 58 58 00 00 00 58 58 00 00 58 58 58 58 00 58 58 58 00 00 00 00 00 00 58 58 58 00 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 00 58 58 00 00 58 00 00 58 58 58 58 00 00 58 58 00 58 58 58 00 00 58 58 00 00 00 00 58 58 58 58 00 00 58 00 58 58 00 00 00 00 58 58 00 58 00 58 00 00 00 58 58 58 00 00 58 00 00 00 00 00 00 58 58 58 58 00 58 00 00 00 00 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 00 58 00 00 00 58 00 00 58 58 00 58 58 00 58 00 58 58 00 58 00 58 58 00 00 00 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 00 58 58 58 00 58 00 58 00 00 00 58 58 00 58 58 58 00 00 58 00 58 58 58 00 58 58 58 00 00 00 00 00 58 58 58 00 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 00 00 58 00 00 00 00 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 00 00 00 58 00 00 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 58 00 58 00 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 58 00 00 58 00 58 58 00 58 00 00 58 58 58 00 00 58 58 58 00 58 00 58 58 58 00 58 58 58 58 00 58 00 00 00 00 58 58 00 00 00 58 00 58 00 00 58 00 58 00 58 00 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 00 00 58 00 58 58 00 58 58 00 00 58 00 00 00 00 58 00 00 00 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 00 58 00 00 58 58 58 58 58 00 58 58 00 00 58 58 00 58 58 58 00 00 58 58 58 58 00 58 00 58 00 00 00 58 58 00 58 58 00 58 58 58 58 58 00 58 00 00 58 58 00 00 58 00 00 00 58 58 58 58 58 58 00 58 00 58 00 00 00 58 58 00 58 00 58 58 00 00 58 00 58 00 58 58 00 00 00 00 58 00 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 00 00 58 58 58 00 00 00 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 58 58 00 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 00 00 58 00 58 58 58 00 00 00 00 58 00 00 00 58 58 58 00 00 00 58 00 00 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 00 58 00 58 00 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 00 00 58 58 00 00 00 00 58 00 58 58 00 00 58 58 00 00 58 58 58 58 00 00 00 00 00 00 58 00 00 58 58 00 58 00 00 00 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 58 00 58 00 58 58 58 58 58 00 00 58 58 00 58 00 58 58 00 58 00 00 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 00 00 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 00 00 00 58 00 00 58 58 58 00 58 58 58 00 58 58 58 00 58 00 58 00 00 00 00 00 58 00 58
*/
