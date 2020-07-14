.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3b7c, %rcx
nop
nop
nop
nop
nop
add $28714, %r10
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
inc %rbp
lea addresses_WC_ht+0x2156, %rbx
nop
nop
cmp $43255, %r8
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
sub $17136, %rbx
lea addresses_normal_ht+0xe062, %r8
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
nop
and $36619, %rbp
lea addresses_WT_ht+0x9162, %rbp
xor %r13, %r13
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rax
and $30156, %rax
lea addresses_UC_ht+0x1ed62, %rbp
cmp $49687, %rax
mov (%rbp), %r13d
nop
nop
nop
nop
cmp $43765, %r13
lea addresses_WT_ht+0x17562, %rsi
lea addresses_UC_ht+0x7528, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $127, %rcx
rep movsl
nop
nop
sub $1839, %r10
lea addresses_WT_ht+0x4f42, %rbx
nop
nop
nop
nop
mfence
mov (%rbx), %esi
nop
nop
nop
nop
sub $48114, %r13
lea addresses_WC_ht+0x1ec22, %rsi
lea addresses_D_ht+0x3a62, %rdi
nop
nop
nop
cmp $55070, %rbx
mov $82, %rcx
rep movsb
nop
and %r8, %r8
lea addresses_D_ht+0x7362, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%r8), %al
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1d68a, %rsi
lea addresses_A_ht+0x127a2, %rdi
nop
xor $1744, %r13
mov $46, %rcx
rep movsl
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x12c62, %rax
nop
and $61025, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x19cea, %r8
add $16287, %rbp
mov $0x6162636465666768, %r10
movq %r10, (%r8)
xor $18182, %rbp
lea addresses_WT_ht+0x4d62, %rsi
nop
and $23636, %rcx
movb (%rsi), %al
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
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

// Store
lea addresses_D+0x19d62, %rdi
add $15554, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rdi)
nop
nop
cmp $22194, %rbp

// Store
mov $0x5303be0000000362, %r9
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r9)
sub %rbx, %rbx

// Store
lea addresses_WT+0xd862, %r14
nop
and %rcx, %rcx
movl $0x51525354, (%r14)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_UC+0x11c76, %rbp
nop
nop
nop
nop
nop
cmp $32295, %rcx
movl $0x51525354, (%rbp)
nop
nop
add $22038, %r9

// Store
lea addresses_A+0xe062, %rbx
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rbx)
xor %r13, %r13

// Store
mov $0x562, %rbp
nop
nop
inc %r9
movw $0x5152, (%rbp)
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x1e562, %rdi
xor %r14, %r14
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
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
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'52': 3}
52 52 52
*/
