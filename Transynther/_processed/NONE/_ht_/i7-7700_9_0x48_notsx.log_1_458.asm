.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xe31d, %r12
nop
nop
nop
cmp $9778, %rax
movb $0x61, (%r12)
nop
and %r10, %r10
lea addresses_UC_ht+0xb725, %rsi
lea addresses_WT_ht+0x7a25, %rdi
clflush (%rsi)
add $20323, %r12
mov $41, %rcx
rep movsq
and $37430, %rdi
lea addresses_A_ht+0xfd25, %rcx
nop
nop
nop
add $63228, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x10d63, %r10
nop
nop
nop
nop
dec %rdx
movb $0x61, (%r10)
sub $30165, %rsi
lea addresses_A_ht+0x6b7d, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
inc %r12
lea addresses_A_ht+0x198a5, %rsi
lea addresses_normal_ht+0x10925, %rdi
nop
nop
and %r12, %r12
mov $46, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x1c405, %rsi
lea addresses_normal_ht+0x2795, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $26755, %r12
mov $114, %rcx
rep movsb
xor $134, %r12
lea addresses_D_ht+0xd4a5, %rcx
nop
and $6894, %r10
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_D+0x1f541, %rcx
add $36514, %rax
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
xor $49193, %rax

// Store
lea addresses_RW+0x14a25, %rsi
clflush (%rsi)
nop
nop
nop
add $28746, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movaps %xmm6, (%rsi)
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x7cd910000000abd, %rdx
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdx)
nop
nop
and %r13, %r13

// Store
lea addresses_A+0xfd5, %rcx
nop
nop
nop
nop
add %r12, %r12
movl $0x51525354, (%rcx)
sub %rcx, %rcx

// Load
lea addresses_normal+0xcf45, %r13
sub %rax, %rax
mov (%r13), %edx
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_UC+0x525, %r10
nop
nop
xor $36792, %rdx
mov (%r10), %si
nop
nop
nop
dec %rax

// Load
lea addresses_PSE+0x11585, %rax
nop
nop
dec %rcx
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_UC+0x525, %r12
clflush (%r12)
nop
nop
inc %r13
movw $0x5152, (%r12)

// Exception!!!
nop
nop
mov (0), %r12
nop
xor $55240, %rdx

// Store
lea addresses_US+0x7125, %rax
nop
and $16309, %rdx
movw $0x5152, (%rax)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x1a8e5, %r13
and $22916, %rdx
movl $0x51525354, (%r13)
nop
sub $35180, %r13

// Store
lea addresses_normal+0x18be1, %rdx
lfence
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rdx)

// Exception!!!
nop
mov (0), %rcx
nop
nop
nop
nop
nop
cmp $5639, %rsi

// Faulty Load
lea addresses_UC+0x525, %rsi
xor $17300, %r13
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 3}}
{'dst': {'same': True, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_US', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 2}}
{'44': 1}
44
*/
