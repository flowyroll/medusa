.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17494, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $63541, %r13
movb $0x61, (%r15)
nop
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x4704, %rsi
lea addresses_WC_ht+0x8b4, %rdi
nop
cmp $17570, %r13
mov $106, %rcx
rep movsw
nop
nop
add $23376, %r15
lea addresses_normal_ht+0xa3b4, %rsi
lea addresses_WT_ht+0x9bb4, %rdi
nop
lfence
mov $121, %rcx
rep movsq
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x11bb4, %rsi
lea addresses_D_ht+0xf49a, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $50, %rcx
rep movsq
inc %rcx
lea addresses_WT_ht+0x3352, %r15
nop
nop
cmp %rdi, %rdi
movb (%r15), %cl
nop
add $40446, %r13
lea addresses_WC_ht+0xb35d, %r13
nop
nop
nop
sub $65509, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x4604, %rax
nop
nop
nop
nop
cmp $46078, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x23b4, %r14
xor $29459, %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0xc1d4, %r9
clflush (%r9)
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
xor $822, %r13

// Store
lea addresses_WC+0xb3b4, %r14
cmp $43118, %r9
movw $0x5152, (%r14)
cmp %r13, %r13

// REPMOV
lea addresses_PSE+0xf0fe, %rsi
mov $0xb4, %rdi
nop
nop
nop
add %r13, %r13
mov $27, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi

// Load
lea addresses_WC+0xbf68, %r13
clflush (%r13)
nop
nop
nop
nop
cmp %rsi, %rsi
vmovaps (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
nop
sub $47974, %rcx

// Store
mov $0x7f4a40000000fb4, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rsi)
xor %r13, %r13

// Load
lea addresses_PSE+0x1c368, %rsi
nop
xor $36018, %rdi
mov (%rsi), %r13w
nop
nop
inc %r9

// Store
lea addresses_WT+0x14034, %r9
nop
nop
nop
sub $38866, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
cmp %rsi, %rsi

// Faulty Load
lea addresses_WC+0x10bb4, %r9
and $9900, %rbp
vmovaps (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 954, '44': 15522, '46': 5353}
44 46 44 44 44 00 44 44 44 46 44 44 46 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 46 46 44 46 44 44 44 44 46 46 46 46 44 44 44 44 44 44 44 44 44 00 44 46 44 44 44 44 44 46 44 00 44 46 44 46 46 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 44 46 46 44 44 46 44 44 44 44 46 46 44 46 44 44 46 00 44 44 00 00 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 46 44 46 46 46 44 46 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 44 44 44 46 46 44 46 00 46 44 46 44 46 46 44 46 44 46 44 00 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 00 00 44 44 00 44 46 44 44 00 00 44 44 44 46 46 46 44 44 44 44 46 44 44 44 46 00 44 46 44 44 44 44 44 46 46 46 00 44 44 46 44 44 44 44 44 44 44 00 00 44 44 44 44 46 44 44 44 46 44 44 46 44 44 44 44 44 46 44 46 44 46 44 44 46 46 46 46 44 44 44 44 44 44 44 46 44 46 44 44 00 44 46 46 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 46 44 46 44 44 46 44 44 44 44 44 46 44 44 44 44 44 46 44 46 00 44 46 44 44 44 44 46 46 44 46 44 44 46 44 44 44 44 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 46 44 46 44 44 44 44 44 44 46 46 44 44 44 44 00 46 46 44 44 44 46 46 44 44 44 46 44 46 46 44 44 44 44 44 44 44 44 46 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 46 44 44 44 44 44 46 44 46 44 46 46 44 44 46 46 44 44 46 46 44 46 46 46 46 44 44 44 44 44 46 44 44 44 00 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 46 44 44 46 44 44 44 46 44 44 46 44 44 44 46 44 46 46 44 44 44 46 44 44 44 44 44 44 46 44 44 46 44 44 00 44 44 44 44 44 44 46 44 46 44 46 46 46 44 46 44 44 44 44 44 00 44 46 44 44 44 44 46 44 46 46 44 46 44 44 00 00 44 44 44 46 44 46 46 44 44 46 44 46 46 44 46 44 46 46 44 44 44 44 44 44 46 44 44 46 46 46 44 46 46 44 46 44 46 44 44 44 46 44 44 44 46 44 44 46 46 46 44 44 46 44 44 44 44 46 44 00 44 44 46 44 44 46 44 46 46 44 44 46 44 00 46 46 44 44 44 46 44 46 44 46 44 46 44 44 44 46 46 44 44 44 44 44 44 44 46 44 00 44 44 44 46 44 44 44 44 46 46 46 44 44 46 44 44 46 46 46 44 44 44 44 46 46 44 44 00 46 44 46 44 44 44 46 46 46 44 44 44 44 44 00 44 00 46 46 44 44 44 46 44 44 46 44 44 44 46 44 46 44 44 44 44 46 44 46 46 46 44 44 00 44 46 44 44 46 46 44 46 46 44 44 44 44 44 44 46 46 44 46 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 00 44 46 44 46 46 44 00 44 44 44 44 44 46 46 44 44 44 44 44 44 44 46 46 44 44 46 44 44 44 44 44 44 00 00 44 44 44 44 46 44 44 46 46 44 44 44 00 44 44 46 46 44 46 46 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 46 46 44 44 44 44 44 44 46 46 44 44 46 44 46 44 44 44 44 46 44 44 44 46 46 44 44 46 44 44 44 44 00 00 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 46 44 44 46 46 44 00 46 44 44 46 44 44 44 44 44 44 46 44 44 44 44 46 46 44 46 44 46 44 44 44 44 44 46 44 46 44 44 44 44 44 46 46 44
*/
