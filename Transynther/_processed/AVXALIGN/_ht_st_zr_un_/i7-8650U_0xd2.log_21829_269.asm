.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x963, %rax
nop
nop
nop
nop
add $65039, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
inc %r12
lea addresses_UC_ht+0x14b63, %rsi
lea addresses_A_ht+0x1c363, %rdi
nop
nop
add %r15, %r15
mov $91, %rcx
rep movsb
dec %rdi
lea addresses_normal_ht+0x14a2f, %rsi
lea addresses_WC_ht+0x13b23, %rdi
nop
nop
nop
cmp $37727, %r11
mov $85, %rcx
rep movsl
cmp $11355, %r15
lea addresses_D_ht+0x1c9e3, %rsi
lea addresses_UC_ht+0x1c563, %rdi
nop
nop
add %r11, %r11
mov $14, %rcx
rep movsw
add $48025, %rdi
lea addresses_WT_ht+0x4963, %rsi
lea addresses_WC_ht+0x6ef7, %rdi
nop
sub $3273, %r15
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x1133, %rax
nop
nop
xor $41462, %rsi
movups (%rax), %xmm2
vpextrq $1, %xmm2, %r11
and %rax, %rax
lea addresses_WT_ht+0x13623, %r15
nop
nop
nop
cmp %rax, %rax
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
add $41787, %r11
lea addresses_WC_ht+0x1c663, %r14
nop
cmp $18542, %rcx
mov (%r14), %r15
nop
nop
nop
nop
nop
xor $23900, %rax
lea addresses_UC_ht+0x8707, %rsi
nop
dec %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
add $57208, %r12
lea addresses_WT_ht+0x13fe3, %r15
clflush (%r15)
sub %r14, %r14
mov (%r15), %r11w
nop
nop
nop
cmp $25423, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rbp
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_A+0x9d63, %rsi
nop
cmp %r10, %r10
movaps (%rsi), %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'49': 1873, '00': 17165, '44': 2724, '01': 1, '46': 32, '47': 29, '10': 2, '85': 1, '58': 1, 'dc': 1}
49 00 00 00 44 00 49 44 00 44 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 49 00 49 00 00 00 00 00 00 00 00 44 00 49 00 00 00 00 44 00 00 00 00 00 44 00 44 00 49 00 00 44 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 01 00 00 00 49 00 00 00 44 00 00 00 00 00 00 00 49 49 44 00 00 00 49 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 44 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 44 00 44 00 49 00 00 00 00 00 44 00 44 00 44 00 49 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 44 44 49 00 44 00 00 44 00 44 49 00 00 44 00 00 00 00 49 00 00 46 00 00 00 49 00 00 00 00 49 00 00 00 44 00 44 49 00 00 49 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 44 00 44 00 49 00 00 49 00 49 00 49 00 00 44 00 44 00 49 00 49 00 00 00 44 00 44 00 49 00 00 00 00 00 49 00 00 00 00 00 00 44 00 49 00 00 00 00 00 00 00 00 00 00 47 49 10 49 00 00 00 00 44 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 49 44 00 00 44 00 00 00 00 00 44 00 44 00 00 44 00 00 00 44 44 00 44 00 00 00 00 00 49 47 49 00 47 44 00 46 00 49 00 49 00 49 00 00 00 00 00 00 00 44 00 44 00 44 00 44 00 49 00 44 00 49 00 00 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 44 00 44 00 49 00 00 00 00 00 00 44 49 00 49 00 00 00 47 44 00 00 00 44 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 49 00 00 44 00 00 44 00 47 00 00 00 44 44 44 00 00 44 00 00 00 44 44 00 49 00 44 00 00 00 00 00 00 49 00 49 00 49 00 00 44 00 49 00 49 00 00 00 44 00 49 00 49 00 00 00 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 49 00 00 00 00 00 44 00 00 49 00 00 00 00 00 44 49 00 00 49 00 44 00 10 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 44 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 00 00 49 00 44 49 00 00 00 00 00 49 44 00 00 00 44 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 00 44 00 49 00 00 00 00 00 00 44 00 49 00 49 00 00 44 00 49 00 49 00 44 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 49 00 44 49 00 00 00 00 44 00 44 00 44 00 00 44 00 00 00 44 00 00 44 49 00 00 00 00 46 00 44 44 00 49 00 00 44 00 00 49 00 44 00 00 00 44 44 44 00 00 00 49 00 49 00 49 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 49 44 00 49 00 49 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 49 00 44 49 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 44 00 44 00 00 00 00 00 49 00 00 00 44 00 00 44 00 49 00 00 44 00 00 00 00 44 00 00 00 00 00 44 49 00 44 00 44 00 44 00 00 00 00 49 00 00 49 00 00 44 00 00 00 00 00 00 00 49 00 00 44 00 44 00 44 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 44 00 49 00 00 00 00 44 00 44 00 44 00 00 00 49 00 00 44 00 00 44 00 44 00 44 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 49 49 00 49 44 00 00 49 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 49 00 00 00 00 00 00 44 00 49 00 00 00 00 00 44 00 44 00 00
*/
