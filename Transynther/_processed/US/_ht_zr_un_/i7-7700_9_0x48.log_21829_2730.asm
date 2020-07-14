.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17a0b, %r14
cmp %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm4
and $0xffffffffffffffc0, %r14
movaps %xmm4, (%r14)
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0xd988, %rbx
nop
nop
nop
nop
and $44742, %rdi
mov (%rbx), %rbp
nop
nop
nop
nop
add $32604, %r12
lea addresses_A_ht+0x5d0b, %rdi
nop
nop
nop
lfence
movl $0x61626364, (%rdi)
cmp %rcx, %rcx
lea addresses_normal_ht+0x2c2b, %r14
clflush (%r14)
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
sub $61719, %r10
lea addresses_A_ht+0xd34b, %rsi
lea addresses_A_ht+0x628b, %rdi
nop
nop
nop
nop
nop
add $41640, %rbx
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x35fb, %rsi
lea addresses_A_ht+0xf80b, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $25384, %r14
mov $71, %rcx
rep movsw
nop
nop
nop
xor $23854, %r14
lea addresses_UC_ht+0x8e0b, %rsi
lea addresses_WC_ht+0x4ba7, %rdi
nop
xor %rbp, %rbp
mov $103, %rcx
rep movsq
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x738b, %rsi
lea addresses_UC_ht+0x1ee0b, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $98, %rcx
rep movsl
sub %rbx, %rbx
lea addresses_WC_ht+0x15acb, %rbp
nop
nop
nop
nop
nop
inc %rcx
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %r14
xor $58292, %rbp
lea addresses_D_ht+0x7e0b, %rsi
nop
nop
add $17425, %rbp
mov (%rsi), %ebx
nop
nop
nop
nop
nop
xor $48563, %rdi
lea addresses_WT_ht+0x1460b, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov (%rdi), %esi
nop
nop
nop
nop
nop
cmp $46655, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_US+0x1a60b, %rbx
nop
nop
xor $23058, %r10
movb $0x51, (%rbx)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0xd27b, %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
cmp $1095, %rbx

// Faulty Load
lea addresses_US+0x1a60b, %r9
nop
and %r8, %r8
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': True, 'NT': False}}
{'08': 14, '47': 4, '01': 5, '72': 3, '45': 713, '05': 4, '00': 19884, '40': 3, '49': 1195, '04': 2, '48': 2}
04 04 00 00 00 45 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 45 00 00 00 49 45 00 00 00 00 00 00 00 45 00 00 00 00 49 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 49 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 45 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 00 00
*/
