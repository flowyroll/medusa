.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xffa6, %rsi
lea addresses_D_ht+0x13b8a, %rdi
nop
and %r8, %r8
mov $11, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $26046, %rcx
lea addresses_WT_ht+0x1fa6, %r8
nop
nop
nop
cmp %rbp, %rbp
mov (%r8), %r14
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x35a6, %rsi
nop
nop
nop
nop
nop
sub $53521, %rbp
mov (%rsi), %rcx
nop
nop
nop
sub $43599, %r8
lea addresses_normal_ht+0x4126, %r14
nop
nop
xor $26065, %rcx
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
sub $10014, %rcx
lea addresses_WT_ht+0x18b0e, %rsi
lea addresses_UC_ht+0xcc66, %rdi
xor %r12, %r12
mov $94, %rcx
rep movsq
and %rbp, %rbp
lea addresses_D_ht+0xa506, %rsi
lea addresses_WT_ht+0x1c5fa, %rdi
clflush (%rsi)
and $11885, %r10
mov $13, %rcx
rep movsq
nop
nop
add $41611, %r14
lea addresses_D_ht+0x11c06, %rsi
lea addresses_WT_ht+0x15ca6, %rdi
clflush (%rdi)
cmp $58046, %r8
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
add $19693, %rsi
lea addresses_WT_ht+0xd1a6, %rsi
lea addresses_D_ht+0x690e, %rdi
nop
nop
nop
and $53104, %r14
mov $82, %rcx
rep movsl
nop
add $16061, %rbp
lea addresses_D_ht+0x18dd9, %rsi
lea addresses_normal_ht+0xf8f6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $38464, %r10
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x1e81a, %rsi
nop
nop
nop
nop
inc %rcx
mov (%rsi), %r12w
cmp $62289, %r14
lea addresses_WT_ht+0x14c26, %rsi
nop
xor %rcx, %rcx
movw $0x6162, (%rsi)
nop
add $28166, %rdi
lea addresses_WT_ht+0xd2e6, %r14
nop
nop
nop
nop
cmp %r12, %r12
mov (%r14), %rdi
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x16fe, %rsi
nop
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x191a6, %rdi
nop
nop
nop
cmp $12629, %r8
movl $0x61626364, (%rdi)
sub $21265, %rbp
lea addresses_normal_ht+0x186a6, %rcx
nop
nop
and %r8, %r8
movb $0x61, (%rcx)
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Load
lea addresses_WT+0x1c31c, %rdx
nop
nop
nop
nop
xor %r12, %r12
mov (%rdx), %r8
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_normal+0x9da6, %r13
nop
sub $7532, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r13)
sub %r8, %r8

// Store
mov $0x6c9d810000000ab9, %rdx
nop
nop
dec %r8
movb $0x51, (%rdx)
nop
nop
sub $6256, %rdx

// Faulty Load
lea addresses_RW+0x1a1a6, %r13
clflush (%r13)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r13), %ax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'32': 15700}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
