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
lea addresses_UC_ht+0x143f8, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add $38820, %r13
mov (%rsi), %ebp
xor $3864, %r8
lea addresses_WC_ht+0xdc56, %rsi
lea addresses_normal_ht+0x790e, %rdi
nop
nop
nop
dec %r15
mov $127, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x7656, %rsi
and $7881, %r13
movw $0x6162, (%rsi)
nop
xor $47464, %rdi
lea addresses_WT_ht+0x192d6, %rsi
lea addresses_D_ht+0x50d6, %rdi
xor %r13, %r13
mov $36, %rcx
rep movsl
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x1c636, %r15
nop
nop
cmp %rbp, %rbp
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
and %r13, %r13
lea addresses_D_ht+0xf646, %rcx
nop
xor $36611, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
cmp $51159, %r13
lea addresses_D_ht+0x1c456, %rsi
lea addresses_normal_ht+0x190d6, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $70, %rcx
rep movsw
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1dcd6, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp $21559, %rsi
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x16ad6, %rsi
lea addresses_WT_ht+0x124d6, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
cmp $9948, %r15
mov $124, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x116d6, %rsi
lea addresses_A_ht+0x1ca56, %rdi
nop
nop
nop
nop
inc %rbp
mov $86, %rcx
rep movsq
nop
xor $42921, %rbp
lea addresses_UC_ht+0x1956, %rcx
nop
nop
nop
nop
nop
xor $17336, %r10
mov (%rcx), %r13w
nop
nop
nop
nop
xor %rbp, %rbp
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
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rdx

// Load
mov $0xb36, %r11
nop
nop
nop
nop
nop
dec %rdx
mov (%r11), %r12d
nop
nop
nop
nop
xor $43264, %r9

// Load
lea addresses_WC+0x82e6, %rbx
nop
nop
add $23936, %rdx
mov (%rbx), %r11w
add $15821, %r9

// Store
lea addresses_normal+0x72d6, %r11
clflush (%r11)
nop
nop
dec %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_RW+0x5ab6, %rbp
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rbp)
nop
inc %rbx

// Store
lea addresses_PSE+0xbdd6, %rbp
nop
nop
and $16093, %r9
movl $0x51525354, (%rbp)
cmp %r12, %r12

// Faulty Load
mov $0x1157d900000002d6, %r9
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 21807, '47': 1, '44': 20, '46': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
