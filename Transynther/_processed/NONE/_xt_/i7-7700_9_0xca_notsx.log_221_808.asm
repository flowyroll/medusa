.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12df6, %rdi
nop
nop
nop
nop
xor $3875, %r13
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x10e38, %rsi
lea addresses_D_ht+0x898, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $75, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $25604, %r13
lea addresses_WT_ht+0x14218, %rdi
nop
nop
nop
nop
nop
and $23223, %r8
mov (%rdi), %r15
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1bf08, %r13
cmp %r15, %r15
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
cmp $10448, %rcx
lea addresses_normal_ht+0x11218, %rsi
lea addresses_UC_ht+0xcba6, %rdi
cmp %r10, %r10
mov $127, %rcx
rep movsb
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x1d918, %rsi
lea addresses_D_ht+0x16818, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $83, %rcx
rep movsq
nop
nop
nop
sub $14274, %r8
lea addresses_normal_ht+0x1d8b8, %rcx
cmp $31036, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rax
push %rdi

// Store
mov $0x4174490000000418, %r14
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
nop
nop
cmp $10378, %r9

// Store
lea addresses_A+0x15b18, %r14
nop
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%r14)

// Exception!!!
nop
nop
nop
nop
mov (0), %r14
cmp $61432, %r9

// Faulty Load
lea addresses_PSE+0xd018, %r9
nop
nop
and %rdi, %rdi
mov (%r9), %r14d
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'33': 221}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
