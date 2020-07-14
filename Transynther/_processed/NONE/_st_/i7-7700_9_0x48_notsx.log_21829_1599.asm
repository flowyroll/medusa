.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16498, %rsi
lea addresses_UC_ht+0x15fd8, %rdi
nop
nop
cmp %rbx, %rbx
mov $39, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_UC_ht+0x14af8, %rsi
lea addresses_WT_ht+0xc4a4, %rdi
nop
cmp %r9, %r9
mov $39, %rcx
rep movsb
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0xdfd8, %rsi
lea addresses_WT_ht+0x163d8, %rdi
nop
nop
nop
nop
sub $36031, %r14
mov $113, %rcx
rep movsl
nop
add $5354, %r14
lea addresses_A_ht+0x4b61, %r9
nop
nop
nop
nop
and $49930, %r10
mov (%r9), %r14
nop
nop
nop
cmp $60744, %r14
lea addresses_WT_ht+0x93d8, %rcx
nop
nop
nop
nop
xor $5825, %r14
mov (%rcx), %r10
nop
nop
nop
nop
xor $29233, %r9
lea addresses_WC_ht+0x1ebd8, %rsi
lea addresses_A_ht+0x1d598, %rdi
nop
nop
cmp $48074, %r14
mov $14, %rcx
rep movsw
nop
and %rcx, %rcx
lea addresses_WT_ht+0x8558, %r14
nop
nop
add $48061, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
inc %r9
lea addresses_UC_ht+0xfa0, %rsi
lea addresses_A_ht+0x1ac90, %rdi
nop
sub %r13, %r13
mov $80, %rcx
rep movsb
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x1cad8, %rcx
nop
nop
nop
nop
dec %r13
mov (%rcx), %r14
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x15cf8, %rbx
nop
nop
nop
nop
nop
xor $164, %rsi
movw $0x6162, (%rbx)
sub %rbx, %rbx
lea addresses_WT_ht+0x17d30, %rsi
lea addresses_D_ht+0x14bd8, %rdi
nop
nop
dec %r14
mov $57, %rcx
rep movsw
xor $16817, %r14
lea addresses_WC_ht+0xcbd8, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r10), %r13w
dec %r10
lea addresses_WC_ht+0x17492, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rcx), %r13b
and %r9, %r9
lea addresses_WC_ht+0x9a58, %rcx
nop
nop
nop
nop
and $63635, %rsi
mov (%rcx), %r9d
nop
nop
inc %rbx
lea addresses_WT_ht+0x15608, %rsi
lea addresses_A_ht+0x1f68, %rdi
nop
nop
nop
nop
nop
add $12405, %r9
mov $96, %rcx
rep movsq
nop
nop
and $31380, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x9010, %rcx
dec %r13
movb $0x51, (%rcx)
nop
nop
and $23340, %r15

// Store
lea addresses_UC+0x17bd8, %r10
nop
nop
nop
nop
xor $15197, %rbx
movl $0x51525354, (%r10)
cmp $54562, %rbx

// Load
lea addresses_A+0x1de78, %r14
nop
nop
inc %r10
mov (%r14), %cx
nop
nop
nop
nop
nop
lfence

// Store
lea addresses_WT+0xdbd8, %r13
nop
xor %r14, %r14
movb $0x51, (%r13)
cmp %rbx, %rbx

// Store
lea addresses_WT+0xdbd8, %r14
nop
nop
nop
nop
nop
add $21848, %rbx
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and $63096, %rcx

// REPMOV
lea addresses_A+0xc6d8, %rsi
lea addresses_WT+0x1e5f8, %rdi
dec %rbx
mov $118, %rcx
rep movsw
nop
nop
cmp $29957, %rdi

// Store
lea addresses_WT+0xdbd8, %r15
nop
nop
xor %r14, %r14
movl $0x51525354, (%r15)
nop
nop
add %r13, %r13

// Load
lea addresses_WT+0xd2f8, %r10
nop
nop
nop
xor $11753, %rbx
mov (%r10), %r15d
nop
nop
nop
nop
inc %r13

// REPMOV
lea addresses_normal+0xdfd8, %rsi
lea addresses_WT+0xdbd8, %rdi
add %r8, %r8
mov $9, %rcx
rep movsw
add $39685, %r14

// Faulty Load
lea addresses_WT+0xdbd8, %r13
nop
nop
cmp %rsi, %rsi
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A', 'congruent': 5}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WT', 'congruent': 5}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
