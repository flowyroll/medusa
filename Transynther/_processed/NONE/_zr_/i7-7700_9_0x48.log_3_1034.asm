.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x10dff, %rsi
lea addresses_normal_ht+0x12197, %rdi
nop
nop
nop
and %r15, %r15
mov $34, %rcx
rep movsw
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0xeb15, %r12
nop
nop
nop
nop
nop
sub $7311, %r10
mov (%r12), %r8w
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x8547, %rsi
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%rsi)
nop
nop
cmp $43964, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x6857d70000000c77, %rdi
nop
sub $32139, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rdi)
dec %rbp

// Faulty Load
lea addresses_UC+0x18e07, %r14
nop
nop
nop
dec %r10
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'00': 3}
00 00 00
*/
