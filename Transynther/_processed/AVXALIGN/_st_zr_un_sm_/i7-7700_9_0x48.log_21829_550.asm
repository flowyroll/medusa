.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18097, %rsi
lea addresses_WC_ht+0x11097, %rdi
nop
nop
nop
nop
nop
and $57963, %r15
mov $94, %rcx
rep movsl
nop
nop
nop
nop
cmp $62126, %r13
lea addresses_D_ht+0x3217, %r10
nop
nop
nop
add $9795, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r10)
sub %r10, %r10
lea addresses_WC_ht+0x15097, %rcx
nop
nop
nop
nop
nop
cmp $37677, %rsi
movb $0x61, (%rcx)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x54d7, %rsi
lea addresses_UC_ht+0x12c4a, %rdi
sub $55400, %r15
mov $72, %rcx
rep movsq
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0xb897, %rcx
add %rsi, %rsi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
and %rdi, %rdi
lea addresses_UC_ht+0xedb7, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor $12494, %r10
mov (%rdx), %rcx
nop
nop
xor $18057, %rcx
lea addresses_UC_ht+0x118f7, %rsi
lea addresses_WT_ht+0x885c, %rdi
nop
nop
xor %rax, %rax
mov $26, %rcx
rep movsq
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rsi

// Store
mov $0x897, %r9
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
mov $0x897, %rsi
nop
nop
nop
cmp %r10, %r10
movaps (%rsi), %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'58': 7524, '00': 244, '20': 14061}
58 20 58 58 20 20 20 00 20 20 58 20 20 20 20 20 20 20 20 20 20 20 58 20 58 20 20 20 58 20 20 20 58 20 20 20 20 20 58 58 20 20 20 20 58 58 20 20 20 58 20 58 20 20 20 58 58 58 58 20 20 20 20 58 58 20 20 58 20 20 20 20 20 58 58 20 20 20 58 20 20 58 20 20 20 20 58 20 20 20 58 58 20 20 20 20 58 20 58 20 20 58 58 20 20 58 20 20 20 58 20 20 20 20 58 58 20 58 20 20 20 20 20 20 20 58 58 20 58 20 20 58 58 58 20 20 20 20 20 20 20 20 20 58 20 20 58 20 20 58 00 20 58 20 20 20 20 20 58 58 20 20 20 58 20 20 58 58 20 20 20 20 20 20 20 20 20 20 20 58 58 20 20 20 58 20 20 58 20 20 58 20 20 20 20 58 20 20 20 20 58 20 20 20 20 58 20 20 20 58 20 20 20 20 20 58 20 20 58 58 20 20 20 58 58 20 20 58 58 20 20 58 20 20 20 20 58 20 20 58 20 20 20 20 20 20 58 20 58 20 58 20 58 58 20 58 58 20 20 58 58 58 58 00 58 58 20 58 20 20 20 20 58 58 20 20 20 58 20 58 58 20 20 20 58 20 58 58 20 20 58 58 58 20 20 20 58 20 20 58 20 20 20 20 20 58 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 00 20 20 20 20 58 58 20 58 20 20 58 20 20 20 58 20 20 20 20 20 58 58 20 20 20 20 20 20 58 20 58 58 20 20 20 20 20 58 58 58 20 20 20 58 20 58 20 20 20 58 58 58 20 20 20 58 20 20 58 58 20 20 20 20 20 20 58 20 20 58 58 20 20 20 20 20 20 58 58 58 20 58 20 58 20 20 20 58 20 20 20 20 20 20 20 20 20 20 58 58 20 58 20 58 20 58 58 58 20 20 20 58 20 20 58 58 20 20 58 20 20 20 58 58 58 20 20 20 20 20 58 58 58 20 20 20 58 58 20 20 58 20 20 20 20 20 58 58 20 20 20 20 20 20 20 58 58 58 58 58 58 20 20 20 20 58 20 20 58 20 58 20 20 20 20 20 20 20 58 58 20 20 58 58 58 20 20 58 58 58 20 58 20 20 20 20 58 20 20 20 20 20 20 20 20 20 20 20 20 20 58 58 20 20 58 20 20 20 20 20 00 20 20 20 58 58 58 58 58 58 20 20 58 58 58 20 58 58 58 20 20 58 20 20 20 20 20 20 20 20 20 20 20 20 58 20 20 20 20 20 58 20 20 58 58 58 20 20 58 58 20 20 58 58 20 20 58 20 20 20 58 20 20 20 20 20 58 20 20 20 58 58 58 20 20 20 20 58 58 58 20 58 20 20 20 58 20 20 20 20 20 58 58 20 20 58 20 20 20 20 20 20 58 20 20 58 20 20 58 20 20 20 58 20 20 20 20 58 20 20 58 58 58 20 20 58 58 20 20 58 20 58 20 20 58 20 20 20 58 58 20 20 20 58 58 20 20 58 20 20 20 58 58 20 58 58 58 58 20 20 58 20 58 20 58 20 20 20 20 20 00 20 58 20 20 20 20 20 58 20 20 20 20 58 58 58 58 58 20 20 20 20 58 20 20 20 20 58 58 20 20 58 20 20 58 58 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 58 20 20 20 20 20 58 20 20 20 20 20 58 58 20 58 20 20 20 20 58 00 20 20 20 58 58 58 20 20 20 58 58 20 20 20 20 20 20 58 58 58 20 20 20 58 20 20 58 58 20 20 58 20 58 20 58 58 20 58 20 20 20 20 58 20 58 20 20 20 58 58 20 20 58 20 20 20 20 20 20 58 20 20 20 20 20 58 20 20 20 20 20 20 20 58 20 20 58 58 20 20 20 58 20 20 20 20 20 20 20 20 58 20 20 20 20 20 20 20 20 58 20 20 58 20 20 20 58 20 20 20 20 20 20 58 58 20 20 58 58 20 20 20 20 20 20 20 58 58 58 20 00 58 58 20 20 58 00 20 58 20 20 20 58 20 20 58 58 20 20 20 58 58 58 20 20 20 00 58 58 20 20 20 58 58 20 58 20 20 00 58 20 20 58 20 20 58 58 20 58 58 58 58 58 20 58 20 20 20 20 20 58 58 20 20 58 58 20 58 20 20 20 20 58 20 58 58 20 20 58 58 20 58 58
*/
