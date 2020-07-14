.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x76e4, %rdi
nop
nop
nop
xor $17934, %r14
mov (%rdi), %r10d
nop
nop
nop
nop
nop
xor $12765, %rcx
lea addresses_normal_ht+0xf784, %rbp
clflush (%rbp)
nop
and $48565, %rbx
movl $0x61626364, (%rbp)
nop
nop
nop
add $27625, %rdi
lea addresses_normal_ht+0x78e4, %r10
dec %rdx
movl $0x61626364, (%r10)
nop
nop
nop
xor $25902, %rdi
lea addresses_WT_ht+0x931c, %rdi
nop
nop
nop
xor $15719, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x18404, %rbp
nop
sub $50164, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x4e4, %rdi
nop
nop
and $17090, %r14
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0xbde4, %rsi
lea addresses_WT_ht+0x24e4, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $34001, %r10
mov $7, %rcx
rep movsl
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WC+0xb8e4, %rbx
nop
nop
nop
nop
nop
sub $42301, %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
inc %rcx

// Store
mov $0x1aa0f500000008e4, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_normal+0x1e8e4, %r10
xor %r12, %r12
movl $0x51525354, (%r10)
nop
nop
and $37031, %r10

// Load
lea addresses_D+0x1b7e4, %rdi
nop
and $22627, %r8
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %rax
cmp %rdi, %rdi

// Store
lea addresses_PSE+0x59e4, %r8
nop
nop
nop
nop
nop
add $2996, %r12
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_WT+0xa0e4, %r8
nop
and $60641, %rdi
movb (%r8), %r10b
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 7}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'39': 5}
39 39 39 39 39
*/
