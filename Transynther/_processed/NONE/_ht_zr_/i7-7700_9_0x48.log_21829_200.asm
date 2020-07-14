.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1ba7d, %rsi
lea addresses_UC_ht+0x17cbf, %rdi
clflush (%rdi)
nop
nop
nop
and $39001, %r8
mov $18, %rcx
rep movsb
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0xd07d, %rcx
nop
sub %rdx, %rdx
movb $0x61, (%rcx)
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1517d, %rbx
clflush (%rbx)
cmp %r9, %r9
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1417d, %r8
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x89bd, %rsi
lea addresses_WC_ht+0x8921, %rdi
nop
xor $56662, %r12
mov $44, %rcx
rep movsq
nop
xor %r8, %r8
lea addresses_D_ht+0x10ebd, %rsi
lea addresses_WT_ht+0xdb15, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $6521, %r9
mov $81, %rcx
rep movsl
nop
nop
nop
nop
add $20359, %rdx
lea addresses_WT_ht+0xe21d, %rdi
nop
nop
nop
sub $55112, %rcx
mov (%rdi), %rbx
nop
nop
nop
nop
nop
add $30090, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rdx

// Faulty Load
lea addresses_A+0xfc7d, %r8
nop
nop
nop
nop
nop
and $43619, %rax
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'48': 3525, '46': 11385, '00': 6919}
46 00 46 46 00 46 46 00 00 46 46 48 46 00 46 48 00 46 46 48 46 48 00 46 00 00 46 46 00 00 46 46 00 46 46 00 46 48 00 00 48 00 46 46 00 46 46 00 46 00 46 46 46 00 00 46 48 48 48 00 46 48 00 48 46 46 46 00 46 00 00 00 46 46 46 46 46 48 00 46 46 48 00 46 00 46 46 00 00 46 48 00 46 46 46 46 48 46 46 00 00 46 48 46 00 00 46 46 00 46 46 00 46 46 00 46 46 00 46 00 00 46 48 46 48 00 46 48 00 00 46 46 00 48 46 46 00 00 46 48 00 46 46 00 00 46 00 46 46 48 00 46 46 46 46 48 46 46 48 00 46 48 00 46 46 00 46 46 46 48 46 48 00 46 00 46 46 00 00 46 46 00 46 46 00 46 48 00 46 46 00 46 46 46 46 48 46 48 00 46 46 46 46 46 00 46 48 46 46 48 00 46 00 00 00 46 48 00 46 46 48 00 48 48 00 48 00 46 46 48 46 46 48 00 46 48 46 46 00 00 46 00 48 00 46 46 48 00 46 00 00 46 48 00 46 48 00 46 46 00 46 46 48 48 46 46 00 00 46 48 00 46 00 46 46 48 46 00 00 46 46 00 00 46 46 00 46 46 46 00 00 46 48 46 46 48 46 48 00 46 00 46 46 46 00 46 48 46 48 46 46 48 46 46 00 46 00 46 46 48 00 48 46 00 48 46 46 00 48 46 48 00 46 00 00 46 46 00 46 48 00 46 48 00 46 48 00 46 46 48 00 46 48 00 46 46 00 48 46 00 46 46 00 00 46 46 46 48 46 48 00 46 46 46 46 46 00 46 48 00 46 00 46 00 46 46 00 46 00 46 46 48 00 46 46 48 00 48 48 00 46 48 48 46 46 46 46 00 46 46 46 48 46 00 46 48 46 46 46 46 48 00 46 00 46 00 46 46 00 46 00 46 48 00 46 46 00 46 00 46 00 46 46 48 46 48 00 46 46 46 46 48 00 46 48 00 46 46 48 46 46 46 46 46 00 46 46 00 46 48 46 46 00 00 46 46 00 46 00 46 46 48 00 46 46 00 48 46 00 46 48 46 00 00 46 00 48 46 00 46 46 00 46 46 48 46 00 46 00 46 46 46 46 46 00 46 00 46 46 48 00 48 48 00 46 46 46 46 00 00 46 46 48 46 46 48 00 46 46 46 46 46 48 46 48 00 46 46 00 46 00 46 00 46 46 48 46 48 00 46 46 00 46 00 46 48 46 46 00 48 46 00 46 48 00 46 00 00 46 46 00 46 46 00 46 46 46 46 48 48 46 46 00 00 46 00 46 00 46 48 48 00 46 46 00 46 48 00 46 48 46 00 00 46 46 46 46 46 48 46 46 48 46 46 48 46 00 00 46 46 48 00 46 46 00 46 46 48 00 46 46 00 46 00 46 00 46 46 00 46 00 46 00 48 48 00 46 46 46 46 46 46 00 46 00 48 00 46 00 48 00 46 46 00 46 46 46 00 46 48 46 48 00 46 46 00 46 46 00 46 46 48 00 46 46 00 46 48 00 46 00 46 46 48 46 46 46 48 00 46 46 46 48 00 46 48 00 46 46 48 48 46 00 46 46 48 46 46 48 00 46 48 00 46 00 46 46 48 46 00 00 48 46 00 46 46 00 46 48 46 46 00 00 46 46 00 46 48 00 46 00 46 00 46 46 00 46 46 46 00 46 00 46 46 48 48 46 00 46 00 46 48 46 46 00 46 46 48 46 00 46 00 46 46 00 46 46 48 46 46 48 46 48 00 46 48 46 46 00 46 48 46 00 46 46 00 00 46 46 48 46 46 00 46 46 00 00 46 46 00 46 46 00 46 46 48 00 00 46 00 00 46 00 46 46 46 00 46 46 00 00 46 46 48 00 46 48 00 46 00 46 46 00 46 48 00 46 48 00 46 00 46 48 00 46 46 48 00 46 46 00 46 00 46 00 46 46 00 46 46 00 46 00 46 46 46 48 00 46 48 00 46 46 00 46 46 00 48 46 48 46 00 00 46 48 00 46 46 00 46 46 46 48 00 46 48 00 46 46 00 46 00 46 00 00 46 46 00 48 48 00 46 46 46 46 46 48 46 48 00 46 46 48 46 46 46 48 00 46 46 00 46 46 00 00 46 46 48 46 48 00 46 46 00 00 46 46 00 46 00 46 46 00 46 00 46 46 46 48 46 00 00 46 00 46 46 48 00 46 48
*/
