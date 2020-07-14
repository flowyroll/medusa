.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdbf2, %rbp
clflush (%rbp)
nop
nop
sub %r14, %r14
movb (%rbp), %r8b
nop
nop
xor $3687, %rdi
lea addresses_normal_ht+0x956a, %rbx
clflush (%rbx)
nop
nop
xor $5805, %rcx
movl $0x61626364, (%rbx)
nop
nop
inc %rbx
lea addresses_WT_ht+0x93fa, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $1038, %rbp
movb (%rcx), %bl
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0xf6da, %r8
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
and $61978, %r8
lea addresses_WT_ht+0xd07a, %rsi
lea addresses_A_ht+0x1d332, %rdi
clflush (%rsi)
nop
nop
lfence
mov $42, %rcx
rep movsl
and %rdi, %rdi
lea addresses_WT_ht+0xa86a, %rcx
nop
nop
nop
nop
nop
xor $26010, %rsi
movb (%rcx), %r8b
nop
nop
nop
xor $19240, %r14
lea addresses_WC_ht+0x1c6fa, %rbp
nop
nop
nop
nop
nop
cmp $56259, %r8
mov (%rbp), %di
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xa412, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi
movb (%r8), %r14b
xor $54427, %rbx
lea addresses_WT_ht+0x10fa, %r14
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r14)
nop
inc %rsi
lea addresses_D_ht+0x7afa, %r9
add $40804, %r14
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
and $64453, %rdi
lea addresses_D_ht+0xb9da, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rsi), %r9b
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1d81a, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
nop
cmp $48083, %rdx

// Store
lea addresses_WT+0x405a, %rbp
nop
nop
nop
nop
xor $11381, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovntdq %ymm4, (%rbp)
nop
nop
nop
nop
nop
xor $60553, %rbp

// Store
lea addresses_PSE+0x1daa, %rdi
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovntdq %ymm7, (%rdi)
add %rsi, %rsi

// Faulty Load
lea addresses_D+0x130fa, %r12
nop
nop
and %r11, %r11
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'36': 207}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
