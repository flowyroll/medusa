.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16776, %rcx
add %rax, %rax
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm6
vpextrq $0, %xmm6, %r10
sub %rbx, %rbx
lea addresses_A_ht+0x1f76, %r15
sub %r13, %r13
movb (%r15), %al
nop
nop
nop
nop
nop
add $30786, %rax
lea addresses_UC_ht+0x5776, %rbx
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x6976, %rsi
lea addresses_WT_ht+0x18d76, %rdi
nop
nop
nop
nop
sub $5620, %rax
mov $126, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0xbbf6, %rdi
nop
nop
nop
cmp $16282, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x88f6, %r15
nop
nop
add $57673, %r10
movb (%r15), %bl
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x173f2, %r13
nop
nop
nop
nop
and %rdi, %rdi
movb (%r13), %bl
inc %r13
lea addresses_D_ht+0x183ea, %rsi
lea addresses_A_ht+0x10f76, %rdi
nop
nop
nop
nop
xor $33704, %r13
mov $103, %rcx
rep movsq
nop
nop
sub $23314, %rbx
lea addresses_WT_ht+0x16d76, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rdi)
and $7118, %r13
lea addresses_WT_ht+0x5776, %rsi
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rsi)
cmp $37742, %r10
lea addresses_normal_ht+0x15176, %r15
sub $9300, %r13
movb $0x61, (%r15)
nop
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rdx
push %rsi

// Load
lea addresses_UC+0x2f76, %r12
clflush (%r12)
sub $59356, %rdx
movaps (%r12), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
dec %rsi

// Load
lea addresses_US+0xacce, %rbp
nop
nop
nop
cmp $61418, %rax
mov (%rbp), %rdx
nop
dec %r8

// Store
lea addresses_RW+0x15196, %rbp
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r8
movq %r8, (%rbp)
nop
and $4270, %rdx

// Faulty Load
lea addresses_PSE+0xf76, %r15
cmp $16852, %rdx
mov (%r15), %eax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'33': 309}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
