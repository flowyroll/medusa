.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xae3d, %rsi
lea addresses_D_ht+0x11bdd, %rdi
nop
nop
nop
and %r14, %r14
mov $94, %rcx
rep movsb
and %r13, %r13
lea addresses_A_ht+0x136c9, %r9
nop
sub %rbx, %rbx
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
xor $6356, %rcx
lea addresses_D_ht+0x7f7d, %rdi
nop
nop
dec %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %rdi
movaps %xmm4, (%rdi)
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xcd8d, %rcx
nop
cmp $62401, %rdi
movb (%rcx), %r13b
nop
nop
add $29447, %r14
lea addresses_normal_ht+0xce9d, %rdi
nop
nop
dec %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x3c5d, %rcx
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
inc %rcx
lea addresses_WT_ht+0x34d9, %rsi
lea addresses_A_ht+0x1633d, %rdi
clflush (%rsi)
xor %r8, %r8
mov $13, %rcx
rep movsw
nop
nop
nop
nop
sub $12355, %rbx
lea addresses_UC_ht+0x1723d, %rcx
and $2473, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
cmp $44367, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x7fdd, %r12
nop
sub %rdi, %rdi
movl $0x51525354, (%r12)
nop
nop
nop
nop
cmp $39500, %rbx

// Store
lea addresses_WT+0x293d, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
inc %r12

// Store
mov $0x3720170000000e3d, %rbx
nop
inc %r13
movw $0x5152, (%rbx)
nop
and $57693, %rcx

// Store
lea addresses_normal+0x15f7d, %r8
nop
nop
nop
nop
nop
sub $14253, %rsi
movl $0x51525354, (%r8)
nop
nop
cmp $64636, %rdi

// Faulty Load
lea addresses_PSE+0xe33d, %rcx
nop
nop
xor $55245, %r13
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'33': 10}
33 33 33 33 33 33 33 33 33 33
*/
