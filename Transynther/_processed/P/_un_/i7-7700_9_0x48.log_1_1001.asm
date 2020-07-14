.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x36d8, %r12
nop
nop
nop
nop
nop
xor %r9, %r9
movb (%r12), %r11b
nop
nop
nop
cmp $5255, %rax
lea addresses_WT_ht+0x1bcbc, %rax
nop
nop
sub %r10, %r10
movb (%rax), %r12b
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x1b758, %rsi
lea addresses_WC_ht+0xdad8, %rdi
clflush (%rsi)
cmp %r12, %r12
mov $84, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x8358, %rdi
nop
nop
nop
nop
sub %r11, %r11
movb $0x61, (%rdi)
sub %r12, %r12
lea addresses_UC_ht+0xb990, %rcx
add $23945, %r10
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
xor $28386, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rdx

// Faulty Load
mov $0x6d8, %r15
nop
nop
nop
nop
add %rbp, %rbp
movb (%r15), %r12b
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'fe': 1}
fe
*/
