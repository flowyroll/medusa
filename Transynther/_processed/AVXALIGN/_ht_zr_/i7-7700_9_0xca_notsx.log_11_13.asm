.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x120c2, %rdi
nop
and $1372, %r14
movb $0x61, (%rdi)
nop
and $16855, %r15
lea addresses_A_ht+0x141aa, %rbp
nop
nop
xor $29663, %r11
mov (%rbp), %r10w
dec %r10
lea addresses_D_ht+0x1bbfa, %r15
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r15)
nop
inc %rdi
lea addresses_D_ht+0xdb2a, %rsi
lea addresses_normal_ht+0xe4aa, %rdi
clflush (%rsi)
inc %r14
mov $75, %rcx
rep movsb
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0xefaa, %rcx
clflush (%rcx)
nop
xor %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
and %rdi, %rdi
lea addresses_UC_ht+0x194aa, %r10
clflush (%r10)
nop
and $15475, %rdi
mov (%r10), %r14
nop
nop
nop
nop
cmp $1789, %rdi
lea addresses_UC_ht+0xe62a, %rdi
nop
nop
nop
dec %rcx
movb $0x61, (%rdi)
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x67aa, %r14
nop
nop
nop
nop
xor $20125, %r15
movw $0x6162, (%r14)
nop
add $42635, %rdi
lea addresses_D_ht+0xe5aa, %r11
add %rdi, %rdi
mov (%r11), %r10
xor $57749, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rsi

// Store
mov $0x3aa, %r9
dec %r15
movb $0x51, (%r9)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_A+0xbfaa, %r9
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
add %r9, %r9

// Faulty Load
mov $0x48e05a0000000baa, %r9
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movaps (%r9), %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 2, '46': 9}
46 46 46 00 46 46 46 00 46 46 46
*/
