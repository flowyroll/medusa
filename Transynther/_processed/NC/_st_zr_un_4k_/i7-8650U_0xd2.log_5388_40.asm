.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14de, %r11
add $8102, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
xor $41834, %r13
lea addresses_WC_ht+0x1d092, %rdi
nop
add %r14, %r14
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x59ea, %r15
nop
nop
nop
nop
nop
cmp $20921, %rdi
mov (%r15), %r13w
nop
add $2400, %r15
lea addresses_WT_ht+0x15efa, %r15
nop
add $40511, %rdx
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
and $24289, %r13
lea addresses_WC_ht+0x10c46, %rsi
lea addresses_A_ht+0x111ca, %rdi
xor $51107, %r15
mov $44, %rcx
rep movsl
nop
sub $51717, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0xd9ca, %rdi
nop
nop
nop
nop
add $6333, %r14
movb $0x51, (%rdi)
nop
add $30838, %rdx

// Faulty Load
mov $0x4d8c1700000009ca, %rdx
nop
nop
add %r11, %r11
mov (%rdx), %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'51': 634, '00': 4626, '16': 128}
51 51 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 16 00 00 00 00 00 16 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16 00 00 51 00 00 00 16 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 51 16 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 16 00 00 00 51 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 16 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 51 00 00 51 51 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 00 51 00 00 00 16 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 51 00 00 51 00 16 51 00 00 00 51 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 16 51 16 51 00 00 51 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 51 00 51 16 51 00 00 16 00 00 00 00 00 51 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 51 00 00 00 16 51 51 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 51 00 51 00 00 00 00 00 00 51 00 51 51 51 51 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 16 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 16 00 00 00 00 00
*/
