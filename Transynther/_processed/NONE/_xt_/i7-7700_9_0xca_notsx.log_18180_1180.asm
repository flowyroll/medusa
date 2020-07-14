.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xe86f, %rsi
lea addresses_A_ht+0x1006f, %rdi
nop
nop
sub $63668, %rdx
mov $54, %rcx
rep movsb
nop
nop
nop
cmp $9352, %r15
lea addresses_WT_ht+0x1a71d, %rsi
lea addresses_UC_ht+0x1b55b, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r8, %r8
mov $44, %rcx
rep movsb
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1770f, %rsi
lea addresses_A_ht+0x4247, %rdi
nop
and $37971, %rbp
mov $38, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1206f, %rsi
lea addresses_WT_ht+0xf4ef, %rdi
nop
nop
nop
nop
inc %r9
mov $48, %rcx
rep movsw
nop
nop
nop
nop
sub $40795, %rcx
lea addresses_UC_ht+0xb56f, %r9
sub %rcx, %rcx
mov (%r9), %rsi
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xe8f7, %rdx
nop
nop
nop
xor %rcx, %rcx
mov (%rdx), %rdi
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1a50f, %rsi
lea addresses_D_ht+0x624f, %rdi
nop
xor $39663, %r15
mov $83, %rcx
rep movsw
nop
nop
xor $18669, %rcx
lea addresses_D_ht+0x1106f, %r15
nop
nop
nop
nop
dec %r8
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x9713, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rsi)
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x546f, %rsi
lea addresses_UC_ht+0x1946f, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $106, %rcx
rep movsq
nop
dec %r8
lea addresses_WT_ht+0x1eb93, %rsi
lea addresses_A_ht+0x1dc7, %rdi
nop
nop
nop
add %r8, %r8
mov $90, %rcx
rep movsq
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1d10f, %r8
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r8), %di
add $56222, %rcx
lea addresses_WT_ht+0x1646f, %rbp
dec %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rbp)
inc %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_RW+0x1fa9f, %rax
nop
nop
nop
nop
nop
xor $44723, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
nop
xor $27287, %r8

// Store
lea addresses_A+0xc747, %r10
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r10)
nop
nop
nop
nop
add $56769, %rbx

// Load
lea addresses_A+0x9b6f, %rdx
nop
nop
xor %r12, %r12
movb (%rdx), %bl
nop
nop
nop
nop
xor $8035, %r8

// Load
lea addresses_D+0xf790, %r8
nop
cmp $26038, %rbx
movb (%r8), %al
nop
sub %rdx, %rdx

// Load
lea addresses_RW+0x6c6f, %r12
nop
add $39828, %rbp
mov (%r12), %r10
nop
nop
nop
nop
xor $52426, %r8

// Store
lea addresses_WC+0xa46f, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
add %rbx, %rbx

// Store
mov $0xef533000000076f, %rbx
sub $27695, %rbp
movw $0x5152, (%rbx)
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_RW+0x6c6f, %rbx
nop
inc %r10
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'32': 18180}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
