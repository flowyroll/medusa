.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf629, %r12
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r12)
nop
nop
add $37248, %rdx
lea addresses_WT_ht+0x1485d, %rsi
lea addresses_WC_ht+0x1bdb5, %rdi
sub $56206, %r15
mov $34, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x17809, %r12
nop
nop
nop
nop
nop
cmp $40483, %r15
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
and $30617, %rdx
lea addresses_WT_ht+0xc53d, %r13
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x15455, %rsi
lea addresses_A_ht+0x1a075, %rdi
nop
xor $49682, %r13
mov $45, %rcx
rep movsw
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_D+0x1fdb5, %r11
nop
nop
nop
cmp %r13, %r13
movntdqa (%r11), %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'00': 5779, '48': 1295, '49': 166}
00 48 00 00 00 48 00 48 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 49 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 48 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 48 48 48 00 00 48 48 48 00 48 00 48 48 48 48 00 48 48 48 00 00 00 00 00 00 00 00 49 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 48 00 48 48 48 00 48 48 00 48 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 49 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 48 48 49 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 48 49 00 49 00 48 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 49 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 48 00 49 48 00 00 00 00 00 48 48 00 00 49 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 48 48 48 48 48 48 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 48 48 48 48 48 00 48 00 00 48 00 00 48 00 48 00 49 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 49 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 49 00 00 00 00 00 00 00 00 48 48 48 00 00 48 00 00 00 48 00 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00
*/
